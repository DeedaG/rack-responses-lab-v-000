class Application

  def call(env)
    resp = Rack::Response.new


    num_1 = Time.new(1..12)
    num_2 = Time.new(12..24)
    num_3 = Time.new(1..24)
 
    if num_1==num_2 && num_2==num_3
      resp.write  "Good Morning!"
    else
      resp.write  "Good Afternoon!"
    end
     resp.finish
  end

end
