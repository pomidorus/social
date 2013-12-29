class CreateBenefitRights < ActiveRecord::Migration
  def change
    create_table :benefit_rights do |t|
      t.integer :benefit_id
      t.integer :profile_id

      t.timestamps
    end

    add_index :benefit_rights, :benefit_id
    add_index :benefit_rights, :profile_id
  end
end
