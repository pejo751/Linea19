class RemoveAttachmentsFotoByLegajos < ActiveRecord::Migration
  def self.up
    remove_column :legajos, :foto_file_name
    remove_column :legajos, :foto_content_type
    remove_column :legajos, :foto_file_size
    remove_column :legajos, :foto_updated_at
  end

  def self.down
    add_column :legajos, :foto_file_name, :string
    add_column :legajos, :foto_content_type, :string
    add_column :legajos, :foto_file_size, :integer
    add_column :legajos, :foto_updated_at, :datetime
  end
end
