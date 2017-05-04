class SecretsController < ApplicationController

  def show
    if session[:name].present?
    else
      redirect_to '/new'
    end
  end

end
