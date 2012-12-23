class Project < ActiveRecord::Base
  attr_accessible :title, :language, :client, :link, :description
  has_many :uploads, :as => :uploadable
end
