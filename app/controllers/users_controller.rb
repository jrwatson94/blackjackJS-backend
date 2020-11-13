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

    def edit
        @user = User.find(params[:id])
        render json: @user
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        render json: @user
    end

    def destroy_user_hands
        @user = User.find(params[:id])
        @user_hands = @user.hands
        @user_hands.destroy_all
        render json: @user_hands

    end

   

    private

    def user_params
        params.require(:user).permit(:money,:name,:wins,:losses)
    end

end
