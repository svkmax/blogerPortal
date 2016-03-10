class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.string :preview_image_link
      t.string :preview_image_file_name
      t.string :author_name
      t.string :description

      t.timestamps null: false
    end
  end
end
