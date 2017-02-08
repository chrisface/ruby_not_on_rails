require "roda"
require_relative "hello_world/router"
require_relative "health_check/router"

module App
  class Router < Roda
    route do |router|
      router.root do
        router.redirect App::HelloWorld::Router.namespace
      end

      router.on App::HelloWorld::Router.namespace do
        router.run App::HelloWorld::Router
      end

      router.on App::HealthCheck::Router.namespace do
        router.run App::HealthCheck::Router
      end
    end
  end
end
