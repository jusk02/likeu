class CreateClicks < ActiveRecord::Migration
  def change
    create_table :clicks do |t|
      t.string :ip_address

      t.timestamps null: false
    end
  end
end
