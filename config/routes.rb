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

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
