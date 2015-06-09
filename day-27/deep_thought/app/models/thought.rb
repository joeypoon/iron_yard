class Thought < ActiveRecord::Base

  validates :content, presence: true,
                      length: { maximum: 142 }

end
