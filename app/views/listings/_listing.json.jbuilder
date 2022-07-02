json.extract! listing, :id, :name, :price, :photo, :description, :address, :latitude, :longitude, :created_at, :updated_at
json.url listing_url(listing, format: :json)
