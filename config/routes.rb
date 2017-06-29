Rails.application.routes.draw do
  root 'user#user_name'   # add this line
  get 'info/status' #Third page
  get 'car/create' #Second page
  get 'user/user_name' #First page after clicking submit button
  get 'info/accelerate'
  get 'info/brake'
  get 'info/lights'
  get 'info/new_brake'
  get 'info/park_brake'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
