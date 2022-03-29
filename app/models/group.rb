class Group < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_and_belongs_to_many :log_records

  validates :name, presence: true
  validates :image, presence: true
end
