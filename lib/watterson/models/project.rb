require 'mongoid'

module Watterson
  module Models
    class Project
      include ::Mongoid::Document

      field :name, type: String
      field :repo_uri, type: String
    end
  end
end
