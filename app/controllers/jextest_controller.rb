class JextestController < ApplicationController

  def index
    render :text => params[:id]
  end

end
