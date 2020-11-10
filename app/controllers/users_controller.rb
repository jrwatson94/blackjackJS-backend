class UsersController < ApplicationController
    
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
    end

    private

    def user_params
        params.require(:user).permit(:name, :money, :wins, :losses)
    end

end
