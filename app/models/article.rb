class Article < ApplicationRecord
  belongs_to :user
  has_one_attached :image


  def self.search(search)
    if search != ""
      Article.where('text LIKE(?)', "%#{search}%")
    else
      Article.all
    end
  end
end
