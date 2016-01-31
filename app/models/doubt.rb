class Doubt
  include Mongoid::Document
  include Mongoid::Slug

  field :title, type: String
  field :body, type: String
  field :created_at, type: Date
  slug :title
  field :offer_id, type: Integer
  field :resolved, type: Boolean, :default => false
  field :privacy, type: Boolean, :default => false

  #Dependencias
  has_many :offers, :dependent => :destroy
  has_many :comments, :as => :commentable
  belongs_to :user
  belongs_to :offer
  
end
