require 'pry'

class Application 
  def call(env)
    resp = Rack::Response.new 
    req = Rack::Request.new(env)
    
    @@items = [Item.new("Mango", 2), Item.new("Pear", 3)]
    
    if req.path.match(/items/)
      item_name = req.path.split("/items/").last
      #item_match = @@items.detect{|i| i.name == item_name}
       if item_match = @@items.detect{|i| i.name == item_name}
        resp.write item_match.price
       else
        resp.status = 400
        resp.write "Item not found"
       end 
      
    else 
      resp.status = 404
      resp.write "Route not found"
    end 
    resp.finish
  end 
  

 
end 