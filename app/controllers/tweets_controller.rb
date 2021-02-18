class TweetsController < ApplicationController

  def index
    @tweet = Tweet.new
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def edit
    @tweet = Tweet.find params[:id]
  end

  def show
    @tweet = Tweet.find params[:id]
  end

  def update
    @tweet = Tweet.find params[:id]
    respond_to do |format|
      if @tweet.update(params.require(:tweet).permit(:body))
        format.html { redirect_to tweets_path, notice: "Updated tweet successfully." }
      else
        format.html { render :edit }
      end
    end
  end


  def create
    @tweet = Tweet.new(params.require(:tweet).permit(:body))

    respond_to do |format|
      if @tweet.save
        format.html { redirect_to tweets_path, notice: "Tweet was successfully created." }
      else
        format.turbo_stream { render turbo_stream: turbo_stream.replace(@tweet, partial: 'tweets/form', locals: { tweet: @tweet } ) }
        format.html { render :new }
      end
    end
  end
end
