class CreateSubsusers < ActiveRecord::Migration[5.1]
  def change
    create_table :subsusers do |t|
      t.integer :userid
      t.integer :subsid
      t.string :type

      t.timestamps
    end
  end
end
