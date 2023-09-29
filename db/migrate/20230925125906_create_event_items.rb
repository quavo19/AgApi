class CreateEventItems < ActiveRecord::Migration[7.0]
  def change
    create_table :event_items do |t|
      t.string :date
      t.string :time
      t.string :title
      t.string :link

      t.timestamps
    end
  end
end
