class AddLongDescriptionToGuides < ActiveRecord::Migration
  def change
    add_column :guides, :longdescription, :text
  end
end
