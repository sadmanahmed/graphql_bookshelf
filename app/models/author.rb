# == Schema Information
#
# Table name: authors
#
#  id         :integer          not null, primary key
#  first_name :string           default(""), not null
#  last_name  :string           default(""), not null
#  yob        :integer          not null
#  is_alive   :boolean          default(TRUE), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Author < ApplicationRecord
  validates :first_name, presence: true, length: { in: 1..20 }
  validates :last_name, presence: true, length: { in: 1..20 }
  validates :yob, presence: true, numericality: true

  def full_name
    "#{first_name} #{last_name}"
  end

  def coordinates
    [rand(90), rand(90)]
  end

  def publications_years
    (1..rand(10)).to_a.map{ 1900 - rand(100)}
  end
end
