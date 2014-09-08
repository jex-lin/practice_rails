class OthersController < ActionController::Base
  layout 'layouts/application'

  def index

  end

  def i18n
    I18n.locale = 'zh-TW'
    @name = 'Jex'
  end
end
