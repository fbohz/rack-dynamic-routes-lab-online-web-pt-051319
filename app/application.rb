require 'pry'

class Application 
  def call(env)
    resp = Rack::Response.new 
    req = Rack::Request.new(env)
    
    @@items = [Item.new("Mango", 2), Item.new("Pear", 3)]
    
    if req.path.include?("items/")
      binding.pry
      item_name = req.path.split("/items/").last
      item_match = @@items.detect{|s| s.name == item_name}
      
      resp.write item_check(item_match)
    else 
      resp.write "Route not found"
      resp.status = 404
    end 
  end 
  
  def item_check(item_match)
    if item_match
      return item_match.price
    else
      
  
end 