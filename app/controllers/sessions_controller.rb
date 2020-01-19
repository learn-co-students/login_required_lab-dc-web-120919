class SessionsController < ApplicationController

    # before_action :user_login, only: [:create]
    # note: this doesn't work because the form has params[:name] and it hasn't been set to
    #session[:name] yet 

    def new 

    end 

    def create 
        if !params[:name] || params[:name].empty?
            return redirect_to controller:'sessions', action:'new'
        end 
        session[:name] = params[:name]
        redirect_to controller: 'application', action: 'welcome'
    end 

    def destroy 
        session.delete :name 
        redirect_to controller: 'application', action: 'welcome'
    end 


    private 


end