class View
  def initialize
  end
  
  def create_gossip
    params = {}
    puts "Bon alors tu t'appelles comment ?"
    print " >> "
    name = gets.chomp
    print ""
    puts "Ok #{name}, alors c'est quoi ta gossip ?"
    print " >> "
    gossip = gets.chomp
    return params = {"content"=>gossip, "author"=>name}
    print "\n\n"
  end
end
