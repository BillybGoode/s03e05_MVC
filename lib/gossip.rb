require 'csv'
require 'pry'
class Gossip
  attr_reader :author, :content

  def initialize(author, content)
    @content = content
    @author = author
  end
  
  # écrire dans un fichier CSV notre instance de Gossip
  def save
    # File.write('./db/gossip.csv', [@author, @content])
    CSV.open('./db/gossip.csv', 'a+') do |csv|
      csv << [@author, @content]
    end
  end
end