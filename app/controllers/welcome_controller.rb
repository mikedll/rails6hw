class WelcomeController < ApplicationController

  def index
    
  end

  def history
    respond_to do |format|
      format.html do
        render partial: 'inner_push', content_type: 'text/vnd.turbo-stream.html'
      end
    end
  end


end
