class CreateTableChapters < ActiveRecord::Migration[5.1]
  def change
    create_table :table_chapters, id: false do |t|
      t.primary_key :chapter_number
      t.string :description
    end
  end
end
