# imageblur1.rb

#image = [[0,0,0,0], [0,1,0,0], [0,0,0,1], [0,0,0,0]]

class Image
  def initialize(pixels)
    @blur = pixels
  end
  
  def output_image
    @blur.each do |s|
      puts s.join
    end
  end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

image.output_image

#image.each do |s|
  #puts s.inspect
#end