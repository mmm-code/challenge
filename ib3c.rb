class Image
	attr_accessor :image

	def initialize(array)
		@image = array
	end

	def output_image
		@image.each do |row|
			row.each do |column|
			print column, ' '
		end
			puts "\n"
		end
	end

	def blur(distance)
    #3.times do
		distance.times do
			num = get_num
			@image.each_with_index do |row, i|
				row.each_with_index do |cell, j|
					if num.include?([i, j])
						@image[i-1][j] = 1 unless i == 0
						@image[i+1][j] = 1 unless i == (@image.length - 1)
						@image[i][j-1] = 1 unless j == 0
						@image[i][j+1] = 1 unless j == (row.length - 1)
					end
				end
			end
		end
	end

	def get_num
    #[[4,3], [#,#], [#,#], [#,#], [#,#], [4,3], [#,#], [#,#], [#,#], [#,#]]
		num = []
		@image.each_with_index do |row, i|
			row.each_with_index do |cell, j|
				if cell == 1
					num << [i, j]				
				end
			end
		end
		num
	end

end

image = Image.new([
	[0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 1, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 1],
])

image.output_image
puts "---"

image.blur(3)

image.output_image
puts "---"
