# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
# Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

#   Rails.application.config.assets.compile = true                                    #for Production
Rails.application. config.assets.precompile = ['*.js', '*.css', '*.css.erb'] # for Production
Rails.application.config.assets.precompile += %w[*.png *.jpg *.jpeg *.gif] # for Production
Rails.application.config.assets.precompile += %w(script.js)
Rails.application.config.assets.precompile += %w(script.responsive.js)
Rails.application.config.assets.precompile += %w(style.css)
Rails.application.config.assets.precompile += %w(style.responsive.css)
Rails.application.config.assets.precompile += %w(style.ie7.css)

# Rails.application.config.assets.precompile += %w(ckeditor/*)
# Rails.application.config.assets.precompile += %w(jquery.are-you-sure.js)
