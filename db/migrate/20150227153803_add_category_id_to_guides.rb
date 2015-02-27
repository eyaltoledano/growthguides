class AddCategoryIdToGuides < ActiveRecord::Migration
  def change
    add_column :guides, :category_id, :integer
    add_index :guides, :category_id
  end
end
