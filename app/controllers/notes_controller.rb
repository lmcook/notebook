class NotesController < ApplicationController

	def index
		@notes = Note.all
	end
	
	def new
		@note = Note.new
	end

	def show
	end

	def create
		@note = Note.new permitted_attributes
		if @note.save
			redirect_to notes_path
		else
			render 'new'
		end
	end

	protected

	def permitted_attributes
		(params.require(:note).permit(:title, :image, :image_caption, :note))
		
	end
end