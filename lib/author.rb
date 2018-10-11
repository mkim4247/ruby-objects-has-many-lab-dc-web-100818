class Author 
  attr_accessor :name, :posts
  
  @@all_posts = []
  
  def initialize(name)
    @name = name
    @posts = []
  end 
  
  def add_post(title)
    title.author = self 
    @posts << title 
    @@all_posts << title 
  end 
  
  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self 
    @posts << new_post
    @@all_posts << title
  end 
  
  def self.post_count
    @@all_posts.count
  end 
  
end 