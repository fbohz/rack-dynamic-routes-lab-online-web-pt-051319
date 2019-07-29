class Application 
  def call(env)
    resp = Rack::Response.new 
    req = Rack::Request.new(env)
    
    @@items = 
    
    if req.path.match(/items/)
      
      
    end 
  end 
  
end 