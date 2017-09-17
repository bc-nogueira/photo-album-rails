class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :title
      t.date :date
      t.string :photo
      t.string :location

      t.timestamps
    end
  end
end
