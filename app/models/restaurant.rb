class Restaurant < ActiveRecord::Base
  has_many :reviews

  validates_presence_of :name, :address
  validates :stars, inclusion: { in: [1,2,3] }
  validates :name, uniqueness: true
end
