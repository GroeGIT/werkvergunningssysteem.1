class CreateEnquirymeasures < ActiveRecord::Migration
  def change
    create_table :enquirymeasures do |t|
      t.references :enquiry, index: true
      t.boolean :done
      t.boolean :needed
      t.string :responsible

      t.timestamps
    end
  end
end
