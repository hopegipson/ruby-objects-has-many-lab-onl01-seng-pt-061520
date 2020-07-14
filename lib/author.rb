class Author
  
  @@postcount = 0
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def posts
    Post.all.select do |post1| 
      post1.author == self
    end
  end
  
  def add_post(post1)
    post1.author = self
    @@postcount += 1
  end
  
  def add_post_by_title(title)
    post1 = Post.new(title)
    add_post(post1)
    @@counter += 1
  end
  
end