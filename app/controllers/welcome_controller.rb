class WelcomeController < ApplicationController

  def index
    
  end

  def history
    respond_to do |format|
      format.turbo_stream do
        # render 'welcome/test_stream'
        render turbo_stream: turbo_stream.replace('inner-area', partial: 'history_inner_primary')
      end
      format.html do
        # response.content_type = 'text/vnd.turbo-stream.html'
        # render turbo_stream: turbo_stream.replace('inner-area', partial: 'inner_push')
        # render turbo_stream: turbo_stream.replace('inner-area', partial: 'history_inner_primary')
        render partial: 'inner_push'
        response.content_type = 'text/vnd.turbo-stream.html'
      end
    end
  end


end
