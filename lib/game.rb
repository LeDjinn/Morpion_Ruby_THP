require 'pry'

class Game
	attr_accessor :current_player, :status, :Board, :array_player
	  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.

  def initialize(player = Player.new, board = Board.new)
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
    system "clear"
		puts"                         -------------------------------------------------- "
		puts"                         |    Saluuuut , bienvenue au jeu du Morpion      | "
		puts"                         |                                                | "
		puts"                         -------------------------------------------------- \n"

    @player = player
    @board = board

    current_player = Player
    @status = "on going"
    
    puts " Joueur 1, Quel est ton prénom ?"
		first_name1 = gets.chomp

		player1 = Player.new(first_name1, "X")

		puts " Joueur 2, Quel est ton prénom ?"
		first_name = gets.chomp

		player2 = Player.new(first_name2, "O")
		@array_player = [player1, player2]
		
		Board.board
  end

  def turn
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
    
    puts display_board
    while @Board.victory? == nil
    		player1.play_turn
        if victory? == true 
            break
        else 
            player2.play_turn 
        end
      end
  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
    @array_player
    Board.board

  end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
   Board.victory?
  	end  

end
