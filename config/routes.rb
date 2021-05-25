Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/ask", to: 'questions#ask'
  # ask after get is what you put on your url path
  # ask after questions is the action you create on the questions_controller
  get "/answer", to: 'questions#answer'
end
