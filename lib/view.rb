class View
    #attr_accessor 

    def initialize
    end

    def create_gossip
        puts "Saisie le contenu: \n".colorize(:blue)
        print "> ".colorize(:blue)
        input_content = gets.chomp.to_s
        puts "Saisie l'auteur :\n".colorize(:blue)
        print "> ".colorize(:blue)
        input_author = gets.chomp.to_s
        return params = { content: input_content, author: input_author }
    end

    def index_gossips(gossips)
        puts gossips
    end

    def delete_gossip
        puts "Saisie un contenu ou auteur à supprimer : \n".colorize(:blue)
        print "> ".colorize(:blue)
        return input = gets.chomp.to_s
    end
end