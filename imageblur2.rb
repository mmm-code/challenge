# imageblur2.rb

class Image
  def initialize(pixels)
    @pixels = pixels
  end
  
  def output_image
    @pixels.each do |s|
      puts s.join
    end
  end
  
  def get_ones
    ones = []
    @pixels.each_with_index do |row, row_number|
      row.each_with_index do |item, col_number|
        # if the item equals '1', stick the row number and column number into the ones array
      end
    end
    
    puts ones
  end
end
  
image = Image.new([
  [0,0,0,0],
  [0,1,0,0],
  [0,0,1,0],
  [0,0,0,1],
  [1,0,0,0],
  [0,1,0,0]
])

# [1,1]
# [2,2]
# [3,3]
# [4,0]
# [5,1]

image.get_ones
  
  