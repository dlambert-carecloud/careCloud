class RenameTableChaptersToChapters < ActiveRecord::Migration[5.1]
  def change
    rename_table(:table_chapters, :chapters)
  end
end
