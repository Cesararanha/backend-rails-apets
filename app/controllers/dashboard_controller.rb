class DashboardController < ApplicationController
    before_action :require_login
    
    def index
        @user = current_user
        @animals = Animal.all
    end

    private  
    def require_login
        unless logged_in?
            flash[:alert] = "Por favor, faça login para acessar o dashboard"
            redirect_to root_path
        end
    end
end