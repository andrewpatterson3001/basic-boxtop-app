class CreateHomerooms < ActiveRecord::Migration
  def change
    create_table :homerooms do |t|
      t.references :school, index: true
      t.references :teacher, index: true
      t.integer :gradelevel
      t.timestamps null: false
    end
  end
end
