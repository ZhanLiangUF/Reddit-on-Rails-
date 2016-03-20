class LinksController < ApplicationController
  def show
    @link = Link.find(params[:id])
    @comment = Comment.new
  end

  def new
  	@link = Link.new
  end

  def create
  	@link = Link.new(link_params)
  	if @link.save
  		#render "new"
  		redirect_to "/"
  	else
  		#this line overrides rendering behavior
  		render "new"
  end
end
private

def link_params
	params.require(:link).permit(:title,:url)
end
end
