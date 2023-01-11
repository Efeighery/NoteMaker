class CreateArchives < ActiveRecord::Migration[7.0]
  def change
    create_table :archives do |t|
      t.references :note, null: false, foreign_key: true
      t.string :title
      t.string :author
      t.text :content

      t.timestamps
    end
  end
end
