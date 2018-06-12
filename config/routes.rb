Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   
    
    resources :instructors
    resources :students
    resources :students_cohorts
    
    resources :courses do 
        resources :cohorts, only: [:index, :new, :create]   
    end
   
    resources :cohorts, only: [:index] do
        member do 
            get '/enrolled', to: 'cohorts#enrolled'
        end
    end
    
end
