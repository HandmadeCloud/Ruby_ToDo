# db/migrate/20231105123456_change_status_to_integer_in_members.rb
class ChangeStatusToIntegerInMembers < ActiveRecord::Migration[6.0]
  def up
    # 기존 string 타입을 integer 타입으로 변경
    change_column :members, :status, :integer, using: 'status::integer', default: 0
  end

  def down
    # 되돌릴 때는 다시 string 타입으로 변경
    change_column :members, :status, :string
  end
end