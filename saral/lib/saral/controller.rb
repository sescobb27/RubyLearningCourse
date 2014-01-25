module Saral
  class Controller
    attr_reader :env
    def initialize(env)
      @env = env
    end

    def method_missing(name, *args, &bloc)
      "<h1>Error 404: action not found #{name}</h1>"
    end
  end
end
