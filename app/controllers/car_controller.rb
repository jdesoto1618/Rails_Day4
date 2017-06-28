class CarController < ApplicationController
  def create

    if ((!params.has_key?(:make) || params[:make].strip.empty?) || (!params.has_key?(:model_year) || params[:model_year].strip.empty?)) #We switched this to OR statements because if even just one of the fields isnt filled out correctly, we want this code block to run.
      flash[:error] = "You must type a make and model year to continue!"
      render "/car/create"
    else
      car = Car.new(params[:make], params[:model_year])
      session[:car] = car.to_yaml #This is similar to saving it in a cookie, but this saves it as an object instead
      redirect_to "/car_info/status"
    end #ends if
  end #ends create

  # @make + " " + @model_year
  # def display
  # end #ends display

end #ends class
#TODO make the init redirect back to this page if one or both fields are empty, Also want to flash error if this happens.
#Second controller
