class Application
 
  def call(env)
    resp = Rack::Response.new
    
    t = Time.now
    t = t.strftime("%k")
 

    
 
    if t.to_i < 12
      resp.write "Good Morning!"
    elsif t.to_i > 12
      resp.write "Good Afternoon!"
    end

    resp.finish
  end
end