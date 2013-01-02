class Project < ActiveRecord::Base
  attr_accessible :title, :language, :client, :link, :description, :developed_at
  has_many :uploads, :as => :uploadable

  def developed_date
    developed_at.strftime('%B %e, %Y')
  end
end
