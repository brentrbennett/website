# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.precompile += %w( styles.css )
Rails.application.config.assets.precompile += %w( dashboard-content.css )
Rails.application.config.assets.precompile += %w( lightpick.css )
Rails.application.config.assets.precompile += %w( login.css )
Rails.application.config.assets.precompile += %w( login.js )
Rails.application.config.assets.precompile += %w( lightpick.js )
Rails.application.config.assets.precompile += %w( calendar-picker.js )
Rails.application.config.assets.precompile += %w( Charts.js )
Rails.application.config.assets.precompile += %w( scripts.js )


# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )