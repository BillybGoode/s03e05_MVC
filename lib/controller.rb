require 'gossip'
require 'view'
require 'pry' 

class Controller
  def initialize
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip
    gossip = Gossip.new(params['author'], params['content'])
    gossip.save
  end

  def index_gossips
    @view.index_gossips
  end

  def destroy_gossip(index)
    table = CSV.read('./db/gossip.csv')
    table.delete_at(index.to_i)
    binding.pry
    CSV.open('./db/gossip.csv', 'w') do |csv|
      table.each {|row| csv << row}
    end
    binding.pry
  end
end