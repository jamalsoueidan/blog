class Post < ActiveRecord::Base
  attr_accessible :title, :body, :category_id, :allow_comments

  def to_param
    "#{id}-#{title.parameterize}"
  end
end
