class Article < ApplicationRecord
  belongs_to :user
  # has_many :comments, dependent: :destroy
  validates :project, presence: true,
                    length: { minimum: 5 }
  has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end	