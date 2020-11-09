class HandsController < ApplicationController
    def index
        hands = Hand.all
        render json: hands
    end
    
    def show
        hand = Hand.find(params[:id])
        render json: hand
    end
end
