class FotoDeLegajo < ActiveRecord::Base
  belongs_to :legajo

  validates_presence_of :tipo, :message => "no puede estar vacio."

  # :storage => :s3, 
  # :s3_credentials => ":rails_root/config/s3.yml",
  #  :url => "/images/legajos/:id/:basename.:extension",
  #  :path => ":rails_root/public/images/legajos/:id/:basename.:extension"
  #  :styles => {:small => '150x150>'},

  has_attached_file :foto,
    :default_url => "/images/legajo.gif",
    :storage => :s3,
    :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
    :path => "/linea19/fotos_de_legajos/:id/:basename.:extension"

  # validates_attachment_presence :foto
  #validates_attachment_size :foto, :less_than => 5.megabytes
  #validates_attachment_content_type :foto, :content_type => ['image/jpeg', 'image/png']

end
