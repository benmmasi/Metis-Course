require "rack"

class HelloWorld
  def call(env)
    sleep 3
    [200, {"Content-Type" => "text/plain"}, [env.inspect] ]
  end
end


class Logger
  def initialize(app)
    @app = app
  end

  def call(env)
    ts1 = Time.now
    status, headers, body = @app.call(env)
    ts2 = Time.now
    result = ts2 - ts1
    body << "Hello World took"  " #{result} " "to complete"
    [status, headers, body]
  end
end

Rack::Handler::WEBrick.run Logger.new(HelloWorld.new)
