class Listing < ApplicationRecord
    belongs_to :user
    has_one_attached :photo
    has_rich_text :description
    validates :description, presence: true
    validates :price, presence: true, numericality: { greater_than: 0, less_than: 1000000 }
end
