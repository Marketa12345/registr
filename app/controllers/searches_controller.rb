class SearchesController < ApplicationController

	def new 

		@search = Search.new
	end


	def create

		@search = Search.create!(params[:search])
		redirect_to @search
	end

	def show

		@search = Search.find(params[:id])
	end

	def index
		@search = Subject.ransack(params[:q])
		@subjects = @search.result
	end
end
