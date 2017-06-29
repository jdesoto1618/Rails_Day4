class Car
  def initialize(make, model_year, color)
    @make = make
    @model_year = model_year
    @color = color
    @speed = 0
    @lights = false
    @parking_brake = true
  end

  def new_car
    "You made a #{@model_year} #{@color} #{@make}. Its speed is #{@speed}."
  end

  def accelerate
    if @parking_brake
      "Acceleration disabled!"
      @speed += 0
    else
      "Go for it"
      @speed += 10
    end
  end

  def brake
    if (@speed >= 5)
    @speed -= 5
    end
  end

  def lights
    @lights = !@lights #switch the boolean of whatever lights starts at
  end

  def new_lights
    if @lights
      "The lights of the car are on"
    else
      "The lights of the car are off"
    end
  end

  def set_park_brake
    if @speed == 0
      @parking_brake = !@parking_brake
    end
  end

  def new_brake
    if @parking_brake
      "Parking brake is ON!"
    else
      "Parking brake is OFF!"
    end
  end

  def no_accel
    if @parking_brake
      "Acceleration disabled"
    else
      "Acceleration enabled"
    end
  end

  def color #gets color specified by user
    @color
  end
end #ends Car class

#This is the model
