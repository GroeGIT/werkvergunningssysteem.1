class CreateMeasures < ActiveRecord::Migration
  def change
    create_table :measures do |t|
      t.string :measurement
      t.string :type
      t.references :enquirymeasure, index: true

      t.timestamps
    end
  end
end
