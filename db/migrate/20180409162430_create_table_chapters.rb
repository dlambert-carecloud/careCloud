class CreateTableChapters < ActiveRecord::Migration[5.1]
  def change
    create_table :table_chapters do |t|
      t.string :chapter_number
      t.string :description
    end
  end
end
