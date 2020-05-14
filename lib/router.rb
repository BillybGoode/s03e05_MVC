require 'controller'

class Router
  def initialize
    @controller = Controller.new
  end

  def perform
    puts "BIENVENUE DANS THE GOSSIP PROJECT"

    while true
      puts "Que me veux-tu Humain ? "
      puts " 1 = créer un gossip "
      puts " 2 = quitter l'app ? "
      print " >> "
      case gets.chomp
      when "1"
        puts "Ok on va créer un gossip"
        @controller.create_gossip
      when "2"
        puts "Ok salut à la prochaine ! "
        break
      else
        puts "Choix incorrect, try again !"
      end
    end
  end
end