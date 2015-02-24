class AddAttachmentResourceToGuides < ActiveRecord::Migration
  def self.up
    change_table :guides do |t|
      t.attachment :resource
    end
  end

  def self.down
    remove_attachment :guides, :resource
  end
end
