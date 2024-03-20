card_number = "5541808923795240"
# card_number = "4024007136512380"
# card_number = "6011797668867828"
# card_number = "5541801923795240" 
# card_number = "4024007106512380" 
# card_number = "6011797668868728"

# Your Luhn Algorithm Here
def luhn_algo?(card_number)
    number = card_number.to_i
    sum = 0
    alternate = false
  
    while number > 0
      digit = number % 10
      number /= 10
  
      if alternate
        digit *= 2
        digit -= 9 if digit > 9
      end
  
      sum += digit
      alternate = !alternate
    end
  
    if sum % 10 == 0
      puts "The credit card number [#{card_number}] is valid!"
    else
      puts "The credit card number [#{card_number}] is invalid!"
    end
  end
  
puts card_number
puts luhn_algo?(card_number)

# Output
# If it is valid, print ""The number [card number] is valid!"
# If it is invalid, print ""The number [card number] is invalid!"
