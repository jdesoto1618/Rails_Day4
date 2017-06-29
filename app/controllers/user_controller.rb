class UserController < ApplicationController
  def user_name
    cookies[:name] = params[:name]
    @name = cookies[:name]
    if params.has_key?(:name) && !params[:name].strip.empty?
      redirect_to "/car/create"
    else
      flash[:error] = "Please enter a name to continue!"
    end
  end
end


#First Page controller
