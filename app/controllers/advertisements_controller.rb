class AdvertisementsController < ApplicationController

  def index
  	@advertisements = Advertisement.page(params[:page]).per(5)
  end

  def new
  	@advertisement = Advertisement.new title: params[:title], content: params[:content], price: params[:price], user_id: params[:user_id], state: params[:state]
  	@advertisement.save
  end

  def create
  	@advertisement = Advertisement.create title: params[:title], content: params[:content], price: params[:price], user_id: params[:user_id], state: params[:state]
  	flash[:info] = "L'anonce à été soumise avec succès et est en attente de validation par un administrateur"
  	redirect_to "/advertisements"
  end

  def show
  	@advertisement = Advertisement.find(params[:id])
  	@comments = Advertisement.find(params[:id]).comments
  	@user = @current_user
  end

  def update
  	Advertisement.find(params[:id]).update state: params[:state]
  	flash[:info] = "L'anonce a bien été publié et est maintenant visible par les utilisateurs"
  	redirect_to "/advertisements"
  end

  def destroy
  	Advertisement.find(params[:id]).destroy
  	flash[:info] = "L'anonce a bien été supprimé"
  	redirect_to "/advertisements"
  end

end