class Post < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 5 }
  attr_accessible :text, :title

  has_many :comments, dependent: :destroy
end
