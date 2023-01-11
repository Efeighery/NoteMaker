class ArchivesController < ApplicationController
    before_action :set_note

    def create
        @note.archives.create! params.required(:archive).permit(:content)
        redirect_to @note
    end

    private
        def set_note
            @note = Note.find(params[:note_id])
        end
end
