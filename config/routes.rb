Rails.application.routes.draw do
  get 'car_info/status' #Third page
  get 'car/create' #Second page
  get 'user/user_name' #First page
  get 'car_info/accelerate'
  get 'car_info/brake'
  get 'car_info/lights'
  get 'car_info/new_brake'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
