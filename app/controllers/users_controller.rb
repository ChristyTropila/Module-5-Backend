class UsersController < ApplicationController
 before_action :authorized, only: [:keep_logged_in]

    def index
        @users=User.all
        render json: @users
    end


    def show
        @user=User.find(params[:id])
        wristband= encode_token(user_id: @user.id)
        render json: {user: UserSerializer.new(@user), token: wristband}
    end

    def create
        @user=User.create!(user_params)
        if @user.valid?
        #   session[:user_id]=@user.id
            wristband= encode_token(user_id: @user.id)
            render json: {user: UserSerializer.new(@user), token: wristband}
        else
            render json: {error: "USERNAME IS TAKEN! TRY AGAIN"}, status: :not_acceptable
    end
 end

    def login
      @user=User.find_by(email: params[:email])
        if @user && @user.authenticate(params[:password])
             wristband= encode_token(user_id: @user.id)
            render json: {user: UserSerializer.new(@user), token: wristband}
        else
            render json: {error: "INCORRECT USERNAME OR PASSWORD"},status: 422
        end
    
    end

    def keep_logged_in
        byebug
        @token=encode_token({user_id: @user.id})
        render json:{
            user: UserSerializer.new(@user),
            token: @token
        }
    end

private

    def user_params
        params.permit(:name, :email, :password, :age, :contact)
    end


end
