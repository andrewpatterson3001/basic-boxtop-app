class CreateBoxtops < ActiveRecord::Migration
  def change
    create_table :boxtops do |t|

      t.timestamps null: false
    end
  end
end
