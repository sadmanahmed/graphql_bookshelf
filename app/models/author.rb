class Author < ApplicationRecord
  validates :first_name, presence: true, length: { in: 6..20 }
  validates :last_name, presence: true, length: { in: 6..20 }
  validates :yob, presence: true, numericality: true
  validates :is_alive, presence: true
end
