module NotesHelper

	def image_for(note)
		if note.image.exists?
			image_tag(note.image.url)
		else
			image_tag('placeholder.png')
		end
	end

end