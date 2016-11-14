Rails.application.routes.draw do
  get 'welcome', controller: 'welcome', action: :index
  get 'welcome/:name', controller: 'welcome', action: :special_message
  get 'welcome/lorem/:lorium_type', controller: 'welcome', action: :lorium

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
