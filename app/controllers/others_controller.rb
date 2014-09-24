class OthersController < ApplicationController

  def index
  end

  def env
#render(:text => ENV['SECRET_KEY_BASE'])
    render(:text => Rails.env)
  end

end
