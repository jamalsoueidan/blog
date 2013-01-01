class Upload < ActiveRecord::Base
  belongs_to :uploadable, :polymorphic => true
  attr_accessible :avatar, :uploadable_id, :uploadable_type
  has_attached_file :avatar,
                    :storage => :s3,
                    :styles => { :large => "600x600>", :medium => "300x300>", :small => "150x150>" },
                    :s3_credentials => "#{Rails.root}/config/s3.yml",
                    :path => ":attachment/:id/:style.:extension",
                    :s3_permissions => :public_read,
                    :s3_protocol => 'https',
                    :s3_host_name => 's3-eu-west-1.amazonaws.com'
end
