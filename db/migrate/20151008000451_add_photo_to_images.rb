class AddPhotoToImages < ActiveRecord::Migration
  def change
    add_column :images, :photo_id, :string
  end
end
