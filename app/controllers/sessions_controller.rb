class SessionsController < ApplicationController

  def new

  end

  def create
    if params[:name].present?
    session[:name] = params[:name]
    render :new
    else
    redirect_to '/new'
    end
  end

  def destroy
    session.delete :name
  end

end
