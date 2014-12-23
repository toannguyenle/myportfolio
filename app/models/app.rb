class App
  include Mongoid::Document

  field :name, type: String
  field :built_with, type: String
  field :snippet, type: String
  field :description, type: String
  field :app_url, type: String
  field :source_url, type: String
  field :thumbnail_url1, type: String
  field :thumbnail_url2, type: String
  field :thumbnail_url3, type: String

end
