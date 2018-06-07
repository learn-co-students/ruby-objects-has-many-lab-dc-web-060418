class Post
    attr_accessor :title, :author
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def all
        @@all
    end

    def author_name
        return @author.name if @author
        nil
    end
end