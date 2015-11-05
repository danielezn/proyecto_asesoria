class Doubt
  include Mongoid::Document
  field :title, type: String
  field :body, type: String
  belongs_to :user
  #luego debemos ver como usamos scopes
end
