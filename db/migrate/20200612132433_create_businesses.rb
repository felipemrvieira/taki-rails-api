class CreateBusinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :businesses do |t|
      t.string :name
      t.text :address
      t.string :city
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
