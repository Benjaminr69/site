class CommentsController < ApplicationController

	def create
	Comment.create content: params[:content], advertisement_id: params[:advertisement_id], user_id: params[:user_id]
	redirect_to "/advertisements/#{params[:id]}"
	flash[:info] = "Commentaire posté avec succès"
	@user = @current_user
	end
end