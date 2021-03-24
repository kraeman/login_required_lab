class SecretsController < ApplicationController
    before_action :require_login
    skip_before_action :require_login, only: [:index]

    def show
    
      
    end

    def home
    end
  
    def index
    end
  
    def create
      @secret = Secret.create(author_id: user_id)
    end
  
    private
  
    def require_login
        
      redirect_to '/session/new' unless session.include? :name
    end
end
