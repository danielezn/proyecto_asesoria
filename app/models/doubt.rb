class Doubt
  include Mongoid::Document
  include Mongoid::Slug

  field :title, type: String
  field :body, type: String
  field :created_at, type: Date
  slug :title

  #Dependencias
  has_many :offers, :dependent => :destroy
  belongs_to :user
  
end
