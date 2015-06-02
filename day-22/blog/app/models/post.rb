class Post < ActiveRecord::Base

  scope :published, -> { where("published_on <= ?", Time.now) }

end
