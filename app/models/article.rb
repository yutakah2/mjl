class Article < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :title
    validates :text
    validates :image
  end

  def self.search(search)
    if search != ""
      Article.where('text LIKE(?)', "%#{search}%")
    else
      Article.all
    end
  end
end
