Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :achievements, only: [:index]
  get '/health', to: 'health#health'
  match 'signin', to: 'signin#signin', via: [:post]

  resources :roles, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:create]


  # achievement 
  # level
  # concept
  # project
  # task
  # check
  # user
  # user_achievement
  # user_project
  # task_assignment
  # check_task_assignment

end
