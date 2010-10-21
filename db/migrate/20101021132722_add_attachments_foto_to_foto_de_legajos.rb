class AddAttachmentsFotoToFotoDeLegajos < ActiveRecord::Migration
  def self.up

    add_column :foto_de_legajos, :foto_file_name, :string
    add_column :foto_de_legajos, :foto_content_type, :string
    add_column :foto_de_legajos, :foto_file_size, :integer
    add_column :foto_de_legajos, :foto_updated_at, :datetime

  end

  def self.down

    remove_column :foto_de_legajos, :foto_file_name
    remove_column :foto_de_legajos, :foto_content_type
    remove_column :foto_de_legajos, :foto_file_size
    remove_column :foto_de_legajos, :foto_updated_at

  end
end
