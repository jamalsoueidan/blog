class Project < ActiveRecord::Base
  attr_accessible :title, :language, :client, :link, :description, :created_at
  has_many :uploads, :as => :uploadable
end
