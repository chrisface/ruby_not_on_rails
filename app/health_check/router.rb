require "roda"

module App
  module HealthCheck
    class Router < Roda
      def self.namespace
        "health_check"
      end

      route do |r|
        r.get do
          "Application is healthy and running"
        end
      end
    end
  end
end
