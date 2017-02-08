require "roda"

module App
  module HelloWorld
    class Router < Roda
      def self.namespace
        "hello"
      end

      route do |router|
        router.get do
          "Hello!"
        end
      end
    end
  end
end
