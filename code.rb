def minimum_coins(number)
  if number > 250
    puts 'nope'
  else

    coin_values = [100, 50, 25, 10, 5, 1]
    coin_total = ''

    coin_values.each do |coin|
      coin_total << "#{coin} " * (number/coin)
      number = number % coin
    end
    coin_total = coin_total.split

    if coin_total.size == 2
      puts "Minimum coins would be 2: " + "#{coin_total.join(' and ')}."
    else
      puts "Minimum coins would be " + "#{coin_total.size}: " + "#{coin_total.join(', ')}."
    end
  end
end

minimum_coins(35)
minimum_coins(37)
minimum_coins(101)
minimum_coins(250)
minimum_coins(255)
