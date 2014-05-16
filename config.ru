require 'rack'

run lambda { |env| 
  puts env["REQUEST_METHOD"]  
  [200, {"Content-Type" => "text/plain"}, ["Hello. The time is #{Time.now}"]]
}

