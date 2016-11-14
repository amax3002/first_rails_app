Rails.application.routes.draw do
  get '/', controller: 'welcome', action: :index
  get '/:name', controller: 'welcome', action: :special_message
  get '/lorium/:lorium_type', controller: 'welcome', action: :lorium

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
