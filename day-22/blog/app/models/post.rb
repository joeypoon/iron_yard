class Post < ActiveRecord::Base

  validates :title, :presence => true
  validates :body, :presence => true

  scope :published, -> { where("published_on <= ?", Time.now) }

end
