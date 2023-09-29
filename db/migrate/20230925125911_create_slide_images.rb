class CreateSlideImages < ActiveRecord::Migration[7.0]
  def change
    create_table :slide_images do |t|
      t.string :url

      t.timestamps
    end
  end
end
