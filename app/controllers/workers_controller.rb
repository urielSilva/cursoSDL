class WorkersController < ApplicationController

	def index
		@workers = Worker.includes(:tasks).all
	end

	def show
		@worker = Worker.includes(:tasks).find(params[:id])	
	end
end
