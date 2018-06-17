Rails.application.routes.draw do
  
    devise_for :admins, controllers: {
        registrations: 'admins/registrations',
        sessions: 'admins/sessions'
      }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   
    root to: "home#index" 
    get '/dashboard', to: 'dashboard#index'
    
    resources :instructors
    resources :students
    resources :students_cohorts
    resources :instructors_cohorts
    
    resources :courses do 
        resources :cohorts, only: [:index, :new, :create]   
    end
   
    resources :cohorts, only: [:index] do
        member do 
            get '/enrolled', to: 'cohorts#enrolled'
        end
    end
    
end
