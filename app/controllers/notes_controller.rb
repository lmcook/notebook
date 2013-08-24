class NotesController < ApplicationController

	def index
		@notes = Note.order('created_at desc')
	end
	
	def new
		@note = Note.new
	end

	def show
	end

	def create
		@note = current_user.notes.new permitted_attributes
		if @note.save
			redirect_to notes_path(@notes), :notice => "Note successfully created"
		else
			render 'new'
		end
	end

	protected

	def permitted_attributes
		(params.require(:note).permit(:title, :image, :note))
		
	end
end