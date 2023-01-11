class AttachmentDecorator < Draper::Decorator
    delegate_all
  
    def archive_entry
      object.attach_title +' '+ object.attach_content
    end
  
  end