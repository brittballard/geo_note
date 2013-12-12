class CreateNote < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.timestamps
      t.datetime :start
      t.datetime :end
      t.string :message, null: false
      t.point :lonlat, geographic: true, null: false
    end
  end
end
