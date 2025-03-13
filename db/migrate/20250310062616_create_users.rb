class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.date :create_date

      t.timestamps
    end
  end
end
