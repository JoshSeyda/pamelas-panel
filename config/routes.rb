Rails.application.routes.draw do

  root 'analytics#show'
  
  resources :admins
  resources :teachers
  resources :students
  resources :courses
  resources :cohorts
  resources :messages
  resources :calendar
  resources :notes
  resources :analytics
  resources :members
  get '/cohorts/addstudent/:id', to: 'members#new'
  get '/cohorts/new/:id', to: 'cohorts#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
