class Application
  def call(env)
    return [ 200, {'Content-Type' => 'text/html'}, greeting ]
  end

  def greeting
    (Time.now.hour.to_i < 12) ? ["<p>Good Morning!</p>"] : ["<p>Good Afternoon!</p>"]
  end
end
