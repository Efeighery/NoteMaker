class CreateAttachments < ActiveRecord::Migration[7.0]
  def change
    create_table :attachments do |t|
      t.string :attach_title
      t.string :attach_content

      t.timestamps
    end
  end
end
