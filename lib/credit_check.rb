
class CreditCheck 
  attr_reader :card_number, :check_limit 

  def initialize (card_number, limit)
    # Your Luhn Algorithm Here
    def is_valid?(card_number)
      @card_number = card_number.to_i
      @sum = 0
      @alternate = false
  
        while @card_number > 0
          digit = @card_number % 10
          @card_number /= 10
  
          if alternate
            digit *= 2
            digit -= 9 if digit > 9
          end
  
          sum += digit
          alternate = !alternate
        end
  
        if sum % 10 == 0
          puts "The credit card number [#{@card_number}] is valid!"
        else
          puts "The credit card number [#{@card_number}] is invalid!"
        end
    
  
      puts @card_number
      puts is_valid?(@card_number)
    end 
    
    def card_number 
    
    end

    def limit

    end

    def last_four
      return last_four = @card_number[-4..-1]
    end
  end

end

card_number = "5541808923795240"
# card_number = "4024007136512380"
# card_number = "6011797668867828"
# card_number = "5541801923795240" 
# card_number = "4024007106512380" 
# card_number = "6011797668868728"

limit = true

credit_check = CreditCheck.new(card_number, limit)

credit_check.last_four

# Output
# If it is valid, print ""The number [card number] is valid!"
# If it is invalid, print ""The number [card number] is invalid!"