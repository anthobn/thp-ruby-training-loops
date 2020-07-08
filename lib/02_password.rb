def signup
  puts "Bonjour, veuillez définir un mot de passe svp"
  print '> '
  return gets.chomp
end

def login(password)
  puts "Veuillez insérer votre mot de passe"
  print '> '
  input = gets.chomp

  while input != password
    puts "Désolé, ce mot de passe n'est pas correct ! Veuillez réessayer"
    print '> '
    input = gets.chomp
  end
end

def welcome_screen
  puts "Bienvenue sur votre interface secrète !!"
end

def perform
  password = signup
  login(password)
  welcome_screen
end

#perform