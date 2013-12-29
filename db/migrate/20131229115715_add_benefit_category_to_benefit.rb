class AddBenefitCategoryToBenefit < ActiveRecord::Migration
  def change
    add_column :benefits, :benefit_category_id, :integer
    add_index :benefits, :benefit_category_id
  end
end
