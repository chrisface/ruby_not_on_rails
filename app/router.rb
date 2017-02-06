require "roda"
require_relative "hello_world/router"
require_relative "health_check/router"

module App
  class Router < Roda
    route do |r|
      r.root do
        r.redirect App::HelloWorld::Router.namespace
      end

      r.on App::HelloWorld::Router.namespace do
        r.run App::HelloWorld::Router
      end

      r.on App::HealthCheck::Router.namespace do
        r.run App::HealthCheck::Router
      end
    end
  end
end
