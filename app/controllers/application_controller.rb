class ApplicationController < ActionController::Base
    layout :resolve_layout
    
    
    
    
    def resolve_layout
        case controller_name
        when 'home'
            'home_page'
        else 
            'application'
        end
    end
end
