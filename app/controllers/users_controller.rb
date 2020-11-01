class UsersController < ApplicationController

    def index
        @users=User.all
        render json: @users
    end


    def show
        @user=User.find(params[:id])
        render json: @user
    end

    def create
        @user=User.create!(user_params)
        if @user.valid?
            session[:user_id]=@user.id
            render json: @user
        else
            render json: {error: "USERNAME IS TAKEN! TRY AGAIN"}, status: 422
    end
 end

    def login
      
      @user=User.find_by(email: params[:email], password: params[:password])
        if @user
            render json: @user
        else
            render json: {error: "INCORRECT USERNAME OR PASSWORD"},status: 422
        end
    
    end

private

    def user_params
        params.permit(:name, :email, :password, :age, :contact)
    end


end
