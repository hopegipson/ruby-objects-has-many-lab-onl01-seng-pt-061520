class Author
  
  postcount = 0
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def posts
    Post.all.select do |posts| 
      posts.name == self
    end
  end
  
  def add_post(post)
    post.author = self
    @@postcount
  end
  
end