class Note < ApplicationRecord
    validates_presence_of :title
    has_rich_text :content
    has_many :archives
end
