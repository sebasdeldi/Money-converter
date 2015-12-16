require 'money'
require 'money/bank/google_currency'

Money.default_bank = Money::Bank::GoogleCurrency.new
Money.use_i18n = false

puts "INGRESA EL VALOR Y LA MONEDA QUE DESEAS CONVERTIR SEPARADO POR UN ESPACIO:"
initial = gets.chomp
puts
puts "INGRESA LA MONEDA A LA QUE DESEAS CONVERTIR"
conver = gets.chomp
conver = conver.upcase
puts




arr_initial = initial.gsub(/\s+/m, ' ').gsub(/^\s+|\s+$/m, '').split(" ")

arr_initial[0] = arr_initial[0].to_f
arr_initial[1] = arr_initial[1].upcase

puts arr_initial
puts conver


money = Money.new(100, arr_initial[1].to_sym) 
money = money.exchange_to(conver.to_sym)
puts
puts "EL RESULTADO DE LA CONVERCIÓN ES"
puts
money = money * arr_initial[0]
puts money


