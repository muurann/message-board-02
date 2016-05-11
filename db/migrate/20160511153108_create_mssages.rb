class CreateMssages < ActiveRecord::Migration
  def change
    create_table :mssages do |t|
      t.string :name
      t.string :body
      t.integer :age

      t.timestamps null: false
    end
  end
end
