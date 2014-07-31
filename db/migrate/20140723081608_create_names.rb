class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
