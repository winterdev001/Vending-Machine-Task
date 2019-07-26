class VendingMachine

  def receive_payment
    puts "The amount below is in mililiters"
    puts " "
    puts "Enter the amount of milk you want either 250(ml) or 500(ml) or 1000(ml) as shown below"
    puts " "
    puts "1. 250(ml) = 200rwf" ,"2. 500(ml) = 300rwf", "3. 1000(ml) = 500rwf"
    puts "----------------------------------"
    @quantity = gets.chomp
    while @quantity.to_i >1000000 || @quantity.to_i < 250 || @quantity.gsub!(/\D/, "") || @quantity.to_i == "" do
      puts "Please enter only amount as shown on screen above"
      @quantity = gets.chomp   
    end
    
    puts "Enter the Amount of money"
    @milk_amount = gets.chomp
    puts "----------------------------------"

    while @milk_amount.to_i < 200 || @milk_amount.gsub!(/\D/, "") || @milk_amount.to_i == "" do
      puts "Enter the right amount of money"
      @milk_amount = gets.chomp
      puts "----------------------------------"
    end   
  end

  def calculate_change
    milk_amount = @milk_amount.to_i 
    quantity = @quantity.to_i  
    
    if milk_amount == 200 && quantity == 250
      puts " Transaction Done , your milk will be dispensing in 5 second"
    elsif milk_amount > 200 && quantity == 250
      puts " Transaction Done , your milk will be dispensing in 5 second"
      puts ""
      change = milk_amount - 200
      puts " Your change is #{change}"
    elsif milk_amount == 300 && quantity == 500
      puts " Transaction Done , your milk will be dispensing in 5 second"
    elsif milk_amount > 300 && quantity == 500
      puts " Transaction Done , your milk will be dispensing in 5 second"
      puts ""
      change = milk_amount - 300
      puts " Your change is #{change}"
    elsif milk_amount == 500 && quantity == 1000
      puts " Transaction Done , your milk will be dispensing in 5 second"
    elsif milk_amount >500 && quantity == 1000
      puts " Transaction Done , your milk will be dispensing in 5 second"
      puts ""
      change = milk_amount - 1000
      puts " Your change is #{change}"
    else
      puts "Enter the right Amount of milk and money collectly next-time"
      output = VendingMachine.new
      output.receive_payment
      output.calculate_change
    end
  end
end
output = VendingMachine.new

output.receive_payment
output.calculate_change

