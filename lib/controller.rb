require 'gossip' #Model
require 'view'

class Controller
    #attr_accessor 
    #binding.pry

    def initialize
        @view = View.new
        Gossip.create_file()
    end

    def create_gossip
        params = @view.create_gossip()
        my_gossip = Gossip.new(params[:content], params[:author])
        my_gossip.save()
    end

    def index_gossips
        @view.index_gossips(Gossip.all)
    end

    def delete_gossip
        params = @view.delete_gossip()
        Gossip.delete(params)
    end
    #binding.pry
end