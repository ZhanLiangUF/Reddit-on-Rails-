class PagesController < ApplicationController
	def index
		@links = Link.all
		@links = Link.paginate(:page => params[:page], :per_page => 5)
		Vote.find_each {|vote| vote.destroy unless vote.valid? }
	end
end
