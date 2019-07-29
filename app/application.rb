class Application 
  def call(env)
    resp = Rack::Response.new 
    req = Rack::Request.new(env)
    
    @@items = [Item.new("Mango", 2), Item.new("Pear", 3)]
    
    if req.path == "items"
      binding.pry
      
    else 
      resp.write "Route not found"
      resp.status = 404
      
    end 
  end 
  
end 