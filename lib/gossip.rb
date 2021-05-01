class Gossip
    attr_reader :author, :content

    def initialize(content, author)
        @content = content
        @author = author
    end

    def self.create_file
        unless File.exist?("db/gossip.csv")
            column_header = ["content", "author"]
            File.new("db/gossip.csv","w")
            CSV.open("db/gossip.csv", 'a+', :write_headers=> true, :headers => column_header) do |csv|
                csv << column_header if csv.tell() == 0
            end
        end
    end

    def save
        CSV.open("db/gossip.csv", 'a+') do |csv|
            csv << [@content, @author]
            puts "Contenu et auteur sauvegardé !".colorize(:green)
        end
    end

    #Récupérer toutes les instances en base => plutôt une méthode de classe
    def self.all
        all_gossips = ["-".colorize(:green)*30]
        file = CSV.read("db/gossip.csv", converters: :all)
        file.each do |row|
            all_gossips << "Contenu : '#{row[0]}'
            , Auteur : '#{row[1]}'".colorize(:green)
        end
        return all_gossips
    end

    def self.delete(params)
        row_to_delete = nil
        content = CSV.read("db/gossip.csv").each.with_index { |row,i| row_to_delete = i.to_i if row.to_s.include?(params) }
        if row_to_delete
            content.delete_at(row_to_delete)
            file = File.open("db/gossip.csv","w")
            content.each { |row| file.puts("#{row[0]},#{row[1]}") }
            file.close
            puts "Enregistrement supprimé !".colorize(:green)
            return row_to_delete
        end
    end
end