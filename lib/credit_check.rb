class CreditCardCheck

  attr_reader :card_number

  def initialize(card_number)
   @card_number = card_number
 end

  def credit_card_input(card_number)
    card_number.to_i.digits
  end

  def doubles_number(doubles)
    count = 0
    credit_card_input(doubles).map do |num|
      count += 1
      if count.even?
        num *=2
      else
        num
      end
    end
  end

  def more_than_10(tenandabove)
    doubles_number(tenandabove).map do |num|
      if num >= 10
        num = 1 + (num - 10)
      else
        num
      end
    end
  end

  def validity_check(validity)
    sum = 0
    more_than_10(validity).map do |num|
      sum += num
    end
    sum
  end

  def result_validity
      if validity_check(@card_number) % 10 == 0
        puts "The credit card number, #{@card_number}, is valid! "
      else
        puts "The credit card number, #{@card_number}, is Invalid!"
      end
  end
end

# Sample data follows:

CreditCardCheck.new("342801633855673").result_validity # Invalid
CreditCardCheck.new("5541808923795240").result_validity #Valid
CreditCardCheck.new("4024007136512380").result_validity #Valid
CreditCardCheck.new("6011797668867828").result_validity #Valid
CreditCardCheck.new("5541801923795240").result_validity # Invalid
CreditCardCheck.new("4024007106512380").result_validity # Invalid
CreditCardCheck.new("6011797668868728").result_validity # Invalid
CreditCardCheck.new("342804633855673").result_validity # Amex Valid
CreditCardCheck.new("342801633855673").result_validity # Amex Invalid
