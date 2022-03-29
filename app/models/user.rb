class User < ApplicationRecord
  has_many :log_records, foreign_key: 'author_id', dependent: :destroy
  has_many :groups, foreign_key: 'author_id', dependent: :destroy
  validates :name, presence: true
end
