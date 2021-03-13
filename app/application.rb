class Application

  def call(env)
    resp = Rack::Response.new
    time = Time.now.to_s.split[1].split':'[0]
    
    if time[0].to_i > 12
      resp.write "Afternoon"
    else
      resp.write "Morning"
    end 
    
    resp.finish
  end
end