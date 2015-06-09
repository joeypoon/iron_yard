class Thought < ActiveRecord::Base

  validates :content, length: { maximum: 142 }

end
