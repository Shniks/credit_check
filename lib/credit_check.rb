def credit_card_input(card)
  card.to_i.digits
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

def result_validity(number)
    if validity_check(number) % 10 == 0
      puts "The credit card number, #{number}, is valid! "
    else
      puts "The credit card number, #{number}, is Invalid !"
    end
end


# Sample data follows:

result_validity("342801633855673") # Invalid
result_validity("5541808923795240") #Valid
result_validity("4024007136512380") #Valid
result_validity("6011797668867828") #Valid
result_validity("5541801923795240") # Invalid
result_validity("4024007106512380") # Invalid
result_validity("6011797668868728") # Invalid
result_validity("342804633855673") # Amex Valid
result_validity("342801633855673") # Amex Invalid
