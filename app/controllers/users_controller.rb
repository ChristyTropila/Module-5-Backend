class UsersController < ApplicationController

    def index
        @users=User.all
        render json: @users
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

private

def user_params
    params.permit(:name, :email, :password, :age, :contact)
end


end
