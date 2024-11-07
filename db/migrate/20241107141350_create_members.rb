class CreateMembers < ActiveRecord::Migration[7.2]
  def change
    create_table :members do |t|
      t.string :email, null: false
      t.string :password, null: false
      t.string :name, null: false
      t.string :phone_number
      t.string :status
      t.string :role, default: "member"

      t.timestamps
    end
  end
end