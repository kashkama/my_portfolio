class Project < ActiveRecord::Base
  belongs_to :category

  validates :description, :presence => true
end
