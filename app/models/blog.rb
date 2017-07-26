class Blog < ActiveRecord::Base
  belongs_to :user
  mount_uploader :image, ImageUploader
  has_many :comments, dependent: :destroy
  validates :title, presence: true
  validates :content, presence: true
end
