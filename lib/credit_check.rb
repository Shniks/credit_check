def credit_card
  card_number = "342801633855673"
  card_reverse = card_number.to_i.digits
  sum = 0
  count = 0

  card_reverse.each do |num|
    num *= 2 if count.odd? #Double every other digit. I tried to use Index(num) instead of count, but it didn't work
    num = 1 + (num - 10) if num >= 10 #Add the digits if they are over 10
    sum += num
    count = count + 1
  end

  if sum % 10 == 0
    puts "The credit card number, #{card_number}, is valid! "
  else
    puts "The credit card number, #{card_number}, is Invalid !"
  end

end

credit_card