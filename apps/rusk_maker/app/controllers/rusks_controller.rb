class RusksController < ApplicationController
def index
		@rusks = Rusk.all
	end

	def show
		@rusk = Rusk.find params[:id]
	end

	def new
		@rusk = Rusk.new
	end

	def edit
		@rusk = Rusk.find params[:id]
	end
	
	def create
		@rusk = Rusk.new(rusk_params)

		if @rusk.save
			redirect_to @rusk
		else
			render 'new'
		end
	end

	def update
		rusk = Rusk.find params[:id]

		if rusk.update(rusk_params)
			redirect_to rusk
		else
			render 'edit'
		end
	end

	def destroy
		@rusk = Rusk.find params[:id]
		@rusk.destroy

		redirect_to rusk_path
	end

	private

	def rusk_params
		params.require(:rusk).permit(:name, :base, :extras, :dippable, :crunch_factor)
	end

end