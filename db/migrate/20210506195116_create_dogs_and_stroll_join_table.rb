class CreateDogsAndStrollJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :dogs, :strolls, column_options: { null: false, foreign_key: true } do |t|
      t.index [:dog_id, :stroll_id]
      t.index [:stroll_id, :dog_id]
    end
  end
end