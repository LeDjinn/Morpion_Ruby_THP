require 'bundler'
Bundler.require


$:.unshift File.expand_path("./../lib", __FILE__)
require 'game' 
require 'player'
require 'board'
require 'boardcase'
require 'application'
require 'show'


puts " Joueur 1, Quel est ton prénom ?"
print "> "
first_name1 = gets.chomp

player1 = Player.new(first_name1, "X")

puts " Joueur 2, Quel est ton prénom ?"
print "> "
first_name2 = gets.chomp

player2 = Player.new(first_name2, "O")
test = Board.new
puts "#{player1.name}, c'est à ton tour de jouer !"




    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
     round = 0 
     
     	while round <= 9
        	test.play_turn
        	if test.victory? 
        		break 
        	else test.play_turn
        	round = round +1	
        	end	
      end

      # def current_player(board)     
      # 	turn_count(board) % 2 == 0 ? "X" : "O"  
      # end





# A CHAQUE TOUR AFFICHER LE PLATEAU DE JEU
#puts "#{playeur}, c'est à ton tour de jouer !"

# LES JOUEURS JOUENT A TOUR DE ROLE JUSQU'A CE QUE L'UN DES JOUEURS NE GAGNE OU QUE LE PLATEAU SOIT REMPLI
# Faire une boucle et verifier s'il y a un gagnant ou que le plateau est rempli

#S'IL Y A UN GAGNANT puts " Youpiii #{playeur}, tu as gagné !" SI MATCH NUL  puts " GAME OVER ! Match nul !! "
# fin de la boucle
# puts "Voulez-vous lancer une nouvelle partie ? oui ou non "
# print ">"
# response = gets.chomp
# if response == "oui" ... elsif response == "non"


#Application.new.perform


