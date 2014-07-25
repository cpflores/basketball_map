class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
 			t.references :user
      t.string :address
      t.string :description
      t.timestamps
    end
  end
end
