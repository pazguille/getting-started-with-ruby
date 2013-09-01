require 'popup'

# Defines a basic class to represent blog entries
class BlogEntry

  attr_accessor :title, :body
  attr_reader :author, :time

  def initialize(title, body, author)
    @time = Time.now
    @title, @body, @author = title, body, author
  end
end


post1 = BlogEntry.new("Foo", "Foobar is foo plus bar.", "Guille Paz")
post2 = BlogEntry.new("Bar", "Foobar is foo plus bar.", "Guille Paz")

# Create a collection of posts
blog = [post1, post2]

# Sort the collection
blog.sort_by { |entry| entry.time }.reverse

# Add new post to the collection
post3 = BlogEntry.new("Foobar", "Foobar is foo plus bar.", "Guille Paz")
blog << post3