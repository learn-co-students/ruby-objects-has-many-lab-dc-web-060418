require "pry"
class Author
    attr_accessor :name, :posts
    @@total_posts =0
    def initialize (name)
        @name = name 
        @posts = []
    end 
    def add_post(post)
        self.posts << post
        self.class.total_posts= self.class.total_posts + 1
        post.author = self
    end
    def add_post_by_title (title)
        post = Post.new(title)
        post.author = self
        self.class.total_posts= self.class.total_posts + 1
        self.posts << post

    end 

    def self.total_posts 
        @@total_posts
    end

    def self.total_posts= (total_posts) 
        @@total_posts = total_posts
    end

    def self.post_count
        self.total_posts
    end 
end 