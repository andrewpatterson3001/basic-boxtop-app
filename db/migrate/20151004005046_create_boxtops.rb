class CreateBoxtops < ActiveRecord::Migration
  def change
    create_table :boxtops do |t|
      t.string :hidden_code
      t.references :student, index:true
      t.timestamps null: false
    end
  end
end
