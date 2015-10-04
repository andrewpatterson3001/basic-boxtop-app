class CreateHomerooms < ActiveRecord::Migration
  def change
    create_table :homerooms do |t|

      t.timestamps null: false
    end
  end
end
