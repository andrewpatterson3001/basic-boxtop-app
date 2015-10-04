class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_initial
      t.string :type
      t.string :password_digest
      t.integer :num_boxtops
      t.float :amt_donated
      t.references :homeroom, index: true
      t.timestamps null: false
    end
  end
end
