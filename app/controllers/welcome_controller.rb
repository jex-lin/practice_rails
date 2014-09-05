class WelcomeController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  layout 'layouts/application'
  def index
    @name = 'Jex'
  end
end
