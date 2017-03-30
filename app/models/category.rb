class Category < ActiveRecord::Base
  has_many :projects

  validates :language, :presence => true
  has_attached_file :image, styles: { large: "600x600", medium: "180x180", thumb: "150x150#"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/


end
