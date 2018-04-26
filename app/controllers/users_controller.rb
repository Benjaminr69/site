class UsersController < ApplicationController
  def home
  end

  def login
  	if @current_user
  		redirect_to "/advertisements"
  	end
  end

  def logout
    session[:user_id] = nil
    flash[:info] = "Vous êtes maintenant déconnecté."
    redirect_to "/users/home"
  end

  def check
  	@current_user = User.where(name: params[:name], password: params[:password]).first
    if @current_user
    	session[:user_id] = @current_user.id
      flash[:info] = "Vous êtes connecté."
      redirect_to "/advertisements"
    else
    	session[:user_id] = nil
      flash[:info] = "Échec de la connexion"
      redirect_to "/users/login"
    end
  end
end
