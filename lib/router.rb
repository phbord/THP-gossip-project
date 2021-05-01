require 'controller'

class Router
    #attr_accessor 

    def initialize
        @controller = Controller.new
    end

    def perform
        while true
            puts "Veux-tu voir la liste, créer ou supprimer un 'gossip' ?".colorize(:blue)
            puts "Choix de saisies possibles : \"v\" (voir), \"c\" (créer) ou \"s\" (supprimer)\n".colorize(:blue)
            print "> ".colorize(:blue)
            content = gets.chomp[0].to_s.downcase
            case content
            when "v"
                @controller.index_gossips
                break
            when "c"
                @controller.create_gossip
                break
            when "s"
                @controller.delete_gossip
                break
            else
                puts "Mauvaise saisie, GROSSE BUSE ! Essaie à nouveau...".colorize(:red)
            end
        end
    end

    def new_perform
        perform()
    end
end