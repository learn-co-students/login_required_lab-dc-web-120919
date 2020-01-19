class SecretsController < ApplicationController

    before_action :user_login 

    def show 

    end 

    private 
    #no need to check here, application controller is inherited so already included
end
