class WelcomeController < ApplicationController
  def index
    session[:test] = "a test"
  end

end
