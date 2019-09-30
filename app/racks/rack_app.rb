class RackApp
  def self.call(env)
    new.call(env)
  end

  def call(env)
    [200, {"Hi" => "World"}, ["RackApp called\n"]]
  end
end

if __FILE__ == $0
  require "rack"
  Rack::Server.start(app: RackApp)
end
