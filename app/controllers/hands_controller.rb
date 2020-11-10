class HandsController < ApplicationController
    def index
        hands = Hand.all
        render json: hands
    end
    
    def show
        hand = Hand.find(params[:id])
        render json: hand
    end

    def new
        @hand = Hand.new
        render json: @hand
    end
    def create
        @hand = Hand.create(hand_params)
        render json: @hand
    end

    private

    def hand_params
        params.require(:hand).permit(:user_id, :user_score, :dealer_score, :user_won)
    end
end
