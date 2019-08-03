class Ball
  attr_reader :ball_type
  def initialize(ball_type="regular")
    @ball_type = ball_type
  end
end

ball1 = Ball.new
ball2 = Ball.new "super"
p ball1.ball_type
puts
p ball2.ball_type
puts