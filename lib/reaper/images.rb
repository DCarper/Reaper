module Reaper
	class Images
			def self.reap!

				images = Dir.glob("**/*.jpg")+Dir.glob("**/*.png")+Dir.glob("**/*.gif")
				data = Dir.glob("**/*.htm*")+Dir.glob("**/*.css")+Dir.glob("**/*.js") + Dir.glob("**/*.haml*") + Dir.glob("**/*.rb")

				puts images.length.to_s + " images found & " + data.length.to_s + " files found to search against"

				#
				# concatenate all content into one big string
				#
				content=""
				data.each do |f|
					content+=File.open(f, 'r').read   
				end


				total = images.inject(0) do |total_removed, image|
					#if not content=~ Regexp.new("\\b"+File.basename(m)+"\\b", true)
					unless content.match( /\b#{File.basename(image)}\b/i )
						FileUtils.mkdir_p "./unused/" + File.dirname(image)
						FileUtils.mv image, "./unused/" + image
						puts "Image " + image + " moved to ./unused/" + File.dirname(image) + " folder"
						total_removed += 1
					end
				end

				"There were #{total || 0} images removed in all"

			end
		end
end
