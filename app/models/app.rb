class App
  include Mongoid::Document

  field :name, type: String
  field :built_with, type: String
  field :snipper, type: String
  field :description, type: String
  field :app_url, type: String
  field :source_url, type: String
  field :thumbnail_url, type: String

end
