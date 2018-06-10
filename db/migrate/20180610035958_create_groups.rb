class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :avatar
      t.string :status

      t.timestamps
    end
  end
end
