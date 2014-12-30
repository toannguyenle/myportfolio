class App
  include Mongoid::Document

  field :name, type: String
  field :built_with, type: String
  field :snippet, type: String
  field :description, type: String
  field :app_url, type: String
  field :source_url, type: String
  field :thumbnail_url, type: Array
  field :like, type: Integer
  field :twitter, type: String
  field :hashtag, type: String

end
