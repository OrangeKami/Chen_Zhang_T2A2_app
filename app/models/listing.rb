class Listing < ApplicationRecord
    belongs_to :user
    has_one_attached :photo
    
    has_rich_text :description

    def self.search(search)
        if search
            plant = Listing.find_by(name: search)
            if plant
                self.where(name: plant)
            else
               @listing = Listing.all
            end
        else
           @listing = Listing.all
        end
    end




     validates :name, :description, :price, presence: true
    validates :price, presence: true, numericality: { greater_than: 0, less_than: 1000000 }
    validates :photo, file_size: { less_than_or_equal_to: 5.megabytes },
              file_content_type: { allow: ['image/jpeg', 'image/png', 'image/gif'] }
    validates :price, :numericality => {:greater_than => 0}, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }, length: {maximum: 6}
    validates :description, length: { maximum: 1000, too_long: "Description must be less than %{count} characters."}
    validates :name, length: {maximum: 200, too_long: "Title must be less than %{count} characters." }
end
