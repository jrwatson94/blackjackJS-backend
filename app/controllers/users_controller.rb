class UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users
    end

    def user_hands
        @user = User.find(params[:id])
        @user_hands = @user.hands
        render json: @user_hands
    end

    def show 
        @user = User.find(params[:id])
        render json: @user
        
    end
    def new
        @user = User.new
        render json: @user
    end
    def create
        @user = User.create(user_params)
        render json: @user
    end

    private

    def user_params
        params.require(:user).permit(:name, :money, :wins, :losses)
    end

end
