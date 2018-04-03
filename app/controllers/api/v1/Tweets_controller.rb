module Api::V1
  class TweetsController < ApplicationController

def create
  @tweet = Tweet.create(tweet_params)
  render json: @tweet
end

def update
  @tweet = Tweet.find(params[:id])
  @tweet.update_attributes(tweet_params)
  render json: @tweet
end

private

  def tweet_params
    params.require(:tweet).permit(:body, :user)
  end



    def index
      @tweets = Tweet.all
      render json: @tweets
    end
  end
end