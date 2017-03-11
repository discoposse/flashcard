class CreateFlashvendors < ActiveRecord::Migration[5.0]
  def change
    create_table :flashvendors do |t|
      t.string :vendor_name
      t.text :vendor_description
      t.string :vendor_url

      t.timestamps
    end
  end
end
