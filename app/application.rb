class Application

  def call(env)
    resp = Rack::Response.new 

    time = Time.now.hour

   if  time < 12
      greeting = "Good Morning!"
 else 
        
        greeting = "Good Afternoon!" 
        
        end

    resp.write greeting


    resp.finish

  end

end 