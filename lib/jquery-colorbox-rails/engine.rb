module JqueryColorboxRails
	class Engine < ::Rails::Engine
			config.assets.precompile += %w(
				colorbox/*.png
				colorbox/*.gif
			)
	end
end