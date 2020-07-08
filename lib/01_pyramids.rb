def half_pyramid
  while true
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print "> "
    input = gets.chomp
  
    count = Integer(input) rescue false #Convert value to interger
    if not count
      #Condition : erreur, la valeur rentrée n'est pas un interger
      puts "Vous devez rentrer un nombre ! (ex : 18)"
    else
      break
    end
  end
  
  puts "Voici la pyramide :"
  
  i = 1
  
  while i <= count
  
    pyramide = ""
    spaces = (count - i)
    y = 0
    z = 0
  
    while y < spaces
      pyramide += " "
      y += 1
    end
  
    while (z + spaces != count)
      pyramide += "#"
      z += 1
    end
  
    puts pyramide
    i += 1
  end
end

def full_pyramid
  puts "Wesh, combien d'étages veux-tu dans ta pyramide ?"
  print '> '
  input = Integer(gets.chomp) rescue false
    
  #Test if interger
  while !input
    puts "Bah non, il faut mettre un nombre entier enfait, recommences abrutis !!"
    print '> '
    input = Integer(gets.chomp) rescue false
  end

  output = "#"
  input.times do
    puts output.center(input * 2)
    output += "##"
  end
  return input, output
end

def wtf_pyramid
  input, output = full_pyramid
  
  input.times do
    output = output[0...-2]
    puts output.center(input * 2)
  end
end

#wtf_pyramid