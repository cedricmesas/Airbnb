class CreateDogsitters < ActiveRecord::Migration[6.1]
  def change
    create_table :dogsitters do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end

