require "saral/version"
require "saral/routing"
require "saral/controller"
module Saral
  # Your code goes here...
  class Application
    def call(env)
      begin
        _class, action = get_controller_action(env['PATH_INFO'])
        obj = _class.new(env)
        response = obj.send(action)
        [200, {'Content-Type'=>'text/html'},[response]]
      rescue
        [404, {'Content-Type'=>'text/html'},["<h1>Page not found</h1>"]]
      end
    end
  end
end
