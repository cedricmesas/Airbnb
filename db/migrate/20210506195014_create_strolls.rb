class CreateStrolls < ActiveRecord::Migration[6.1]
  def change
    create_table :strolls do |t|
      t.datetime :date
      t.references :dogsitter, foreign_key: true
      t.references :city, foreign_key: true
      
      t.timestamps
    end
  end
end
