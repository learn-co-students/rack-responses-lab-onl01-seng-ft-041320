require 'rack'

class Application

    def call(env)
        return [ 200, {'Content-type' => 'text/html'}, app ]
    end

    def app
        
        current_time = Time.now
            (current_time.hour >= 0) && (current_time.hour < 12) ? ["<em>Good Morning!</em>"] : ["<em>Good Afternoon!</em>"]
            
    end

end