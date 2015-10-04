class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :state
      t.string :district
      t.boolean :title9_status
      t.timestamps null: false
    end
  end
end
