class WelcomeController < ApplicationController

  def index
    
  end

  def history
    respond_to do |format|
      format.turbo_stream do
        render 'welcome/test_stream', content_type: 'text/html; turbo-stream'
        # render turbo_stream: turbo_stream.replace('primary', partial: 'history_inner_primary'), content_type: 'text/html; turbo-stream'
      end
      format.html do
        # render turbo_stream: turbo_stream.replace('primary', partial: 'history_inner_primary'), content_type: 'text/html; turbo-stream'
      end
    end
  end


end
