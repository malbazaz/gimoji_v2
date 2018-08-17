class UsersController < ApplicationController
before_action :authenticate_user!

    def index
        @users = User.all
       # render "users/index"
    end 


    def show 
        if !!session[:user_id]
             @user = User.find_by_id(params[:id])
        else 
            redirect_to '/users/sign_in'
        end
       # render "users/show"
    end 

end

