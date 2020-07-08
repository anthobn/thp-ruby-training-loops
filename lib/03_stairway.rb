def random_number
  return rand(7)
end

def average_finish_time
  nb_tours_per_game = []
  nb_games = 100.to_i
  tot_tours = 0

  nb_games.times do
    tours = game
    nb_tours_per_game << tours
  end

  nb_tours_per_game.each do |value|
    tot_tours += value
  end

  average = (tot_tours / nb_games)
  puts "Il faut en moyenne #{average} coups pour arriver à gagner dans le jeu"

end

def game
  position = 0
  tours = 0
  while position != 10
    random = random_number
    tours += 1
    puts "Vous êtes au tour #{tours}"
    case random
    when (5 or 6)
      position += 1
      puts "Vous avez tiré #{random}, Vous venez d'avancer d'une marche !! Marche : #{position}"
    when (1)
      if (position > 0)
        position -= 1
        puts "Vous avez tiré #{random}, Vous venez de descendre d'une marche ! Marche : #{position}"
      else
        puts "Vous avez tiré #{random}, On va devoir refaire un tour, je ne peux pas vous descendre plus bas que ce que vous n'êtes déjà ! Marche : #{position}"
      end
    else
      puts "Vous avez tiré #{random}, rien ne se passe, vous restez Marche : #{position}"
    end
  end
  return tours
end

def perform
  average_finish_time
end

perform