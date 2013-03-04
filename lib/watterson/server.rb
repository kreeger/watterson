require 'sinatra/base'
require 'mongoid'
require 'slim'
require 'watterson/models'

config = File.join(File.dirname(__FILE__), '../..', 'config', 'mongoid.yml')
Mongoid.load!(config, :development)

Tilt.register :slim, Tilt[:slim]

module Watterson
  class Server < Sinatra::Base

    get('/') do
      @projects = Models::Project.all
      slim :index
    end

  end
end
