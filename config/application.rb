require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ChenZhangT2a2App
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
  
    config.active_storage.variant_processor = :vips
    config.require_master_key = true

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
   
    
  end
end
