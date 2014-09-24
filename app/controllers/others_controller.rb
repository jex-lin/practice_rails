class OthersController < ApplicationController

  def index
  end

  def show_env
#render(:text => ENV['SECRET_KEY_BASE'])
    render(:text => Rails.env)
  end

  def log
    logger.info '=====Log testing====='
    logger.debug 'debug log, production will ignore dubug message.'
    logger.info 'info log'
    logger.warn 'warn log'
    logger.error 'error log'
    logger.fatal 'fatal log, serious mistake, crash level'
    logger.info '=====Log testing====='
    render(:text => 'log')
  end

end
