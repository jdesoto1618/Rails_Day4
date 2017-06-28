class CarInfoController < ApplicationController
  def status
    @car = YAML.load(session[:car])
  end

  def accelerate
    @car = YAML.load(session[:car]) #this has to be here to load the object
    @car.accelerate #this method points back to the method accelerate in the model
    session[:car] = @car.to_yaml #the accelerate needs to be saved in a session in order for it to be incremented by what ever value you want it to increment it by
    render "status.html.erb" #want to render the results of our function on this page.
  end

  def brake
    @car = YAML.load(session[:car])
    @car.brake
    session[:car] = @car.to_yaml
    render "status.html.erb"
  end

  def lights
    @car = YAML.load(session[:car])
    @car.lights
    session[:car] = @car.to_yaml
    render "status.html.erb"
  end

  def park_brake
    @car = YAML.load(session[:car])
    @car.park_brake
    session[:car] = @car.to_yaml
    render "status.html.erb"
  end










end #ends class

#Third page controller
