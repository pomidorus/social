class CreateBenefitCategories < ActiveRecord::Migration
  def change
    create_table :benefit_categories do |t|
      t.string :title

      t.timestamps
    end
  end
end
