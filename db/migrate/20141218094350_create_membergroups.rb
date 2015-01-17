class CreateMembergroups < ActiveRecord::Migration
  def change
    create_table :membergroups do |t|
      t.integer :member_id, :null => false
      t.integer :group_id, :null => false
      t.integer :groupyear

      t.timestamps null: false
    end
  end
end
