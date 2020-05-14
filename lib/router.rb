require 'controller'

class Router
  def initialize
    @controller = Controller.new
  end

  def perform
    puts "BIENVENUE DANS THE GOSSIP PROJECT"

    while true
      puts ""
      puts "Que me veux-tu Humain ?"
      puts " 1 = créer un gossip"
      puts " 2 = visualiser tous les potins sauvegardés"
      puts " 3 = supprimer un gossip"
      puts " 5 = quitter l'app"
      print " >> "
      case gets.chomp
      when "1"
        puts "Ok on va créer un gossip"
        @controller.create_gossip
      when "2"
        puts "Ok tiens toi bien, voici la liste des potins:"
        @controller.index_gossips
      when "3"
        puts "Ok quel gossip tu veux supprimer ?"
        @controller.destroy_gossip(gets.chomp)
      when "5"
        puts "Ok salut à la prochaine ! "
        break
      else
        puts "Choix incorrect, try again !"
      end
    end
  end
end