class Car
  def initialize(make, model_year)
    @make = make
    @model_year = model_year
    @speed = 0
    @lights = false
    @parking_brake = true
  end

  def new_car
    "You made a #{@model_year} #{@make}. It's speed is #{@speed}."
  end


  def accelerate
    @speed += 10
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

  def park_brake
    @parking_brake = !@parking_brake
  end

  def new_brake
    if @parking_brake
      "Parking brake is ON!"
    else
      "Parking brake is OFF!"
    end
  end
end

#This is the model
