# i = 0
# lista = []
# while i < 3
#  lenguaje = gets.chomp # lo recibe
#  framework = "manejo el lenguaje #{lenguaje}"
#  lista.push(framework)
#  i += 1
# end
# puts '---------------'

# lista.each do |list|
#  puts list
# end
#-----------------------
# Se pide crear el programa juego.rb, donde el usuario pasará como argumento piedra, papel
# o tijera, y el programa escogerá una opción al azar.
# (Crear el diagrama de flujo antes del programa)
# Para que el computador pueda jugar escoger un número al azar entre 0 y 2, si es 0
# entonces es piedra, si es 1 entonces papel y 2 tijera.
# Para esto investigue en la documentación el método rand de la clase Random.

puts 'Escoge una opción 0(piedra) - 1(papel) - 2(tijeta)'
response = gets.chomp.to_i
randomNumber = rand(3)
if [0, 1, 2].include?(response)
  if response == randomNumber
    puts 'empataste'
  elsif response == 0 && randomNumber == 1
    puts 'perdiste'
  elsif response == 0 && randomNumber == 2
    puts 'ganaste'

  elsif response == 1 && randomNumber == 0
    puts 'ganaste'

  elsif response == 1 && randomNumber == 2
    puts 'perdiste'

  elsif response == 2 && randomNumber == 0
    puts 'perdiste'

  elsif response == 2 && randomNumber == 1
    puts 'ganaste'
  end

  puts "número elegido: #{response}"
  puts "número random : #{randomNumber}"
else
  puts 'número incorrecto'
end
