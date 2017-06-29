class CarController < ApplicationController
  def create
    if ((!params.has_key?(:make) || params[:make].strip.empty?) || (!params.has_key?(:model_year) || params[:model_year].strip.empty?) || (!params.has_key?(:color) || params[:color].strip.empty?))  #We switched this to OR statements because if even just one of the fields isnt filled out correctly, we want this code block to run.
      flash[:error] = "You must type a make, model year, and color to continue!"
      render "/car/create"
    else

      car = Car.new(params[:make], params[:model_year], params[:color])
      session[:car] = car.to_yaml #This is similar to saving it in a cookie, but this saves it as an object instead
      redirect_to "/info/status"
    end #ends if
  end #ends create

end #ends class
#Second controller
