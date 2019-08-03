class Image
	attr_accessor :image

	def initialize(array)
		@image = array
	end

	def output_image
		@image.each do |row|
			row.each do |col|
			print col, ' '
		end
			puts "\n"
		end
	end


	
	def man_distance(a1, b1, c2, d2)
		(a1 - c2).abs + (b1 - d2).abs
	end

	def blur(distance)
		
		num = get_num
		@image.each_with_index do |row, c2|
			row.each_with_index do |cell, d2|
				num.each do |a1, b1|
					my_distance = man_distance(a1, b1, c2, d2)
					if my_distance <= distance
						@image[c2][d2] = 1
					end
				end
			end
		end
	end

	def get_num
		num = []
		@image.each_with_index do |row, p|
			row.each_with_index do |cell, q|
				if cell == 1
					num << [p, q]				
				end
			end
		end
		num
	end

end

image = Image.new([
	[0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 1, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 1, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0]
])

image.output_image
puts "---"

image.blur(2)

image.output_image
puts

