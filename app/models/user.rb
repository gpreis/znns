class User < ApplicationRecord
  ISO_5218 = { not_know: 0, male: 1, female: 2, not_applicable: 9 }.freeze

  validates :name, presence: true
  validates :username, uniqueness: true, presence: true
  validates :birthday, presence: true
  validates :sex, presence: true, inclusion: { in: ISO_5218 } 

  enum sex: ISO_5218
end
