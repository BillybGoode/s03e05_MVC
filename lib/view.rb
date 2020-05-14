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

  def index_gossips
    Gossip.all.each.with_index do |gossip, index|
      puts "gossip n° #{index} par #{gossip.author} dit '#{gossip.content}'"
    end
  end
end
