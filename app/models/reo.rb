class Reo < ActiveRecord::Base
  belongs_to :recinto
  has_many :ficha_recinto
  has_many :ficha_ingreso, :through => :ficha_recinto
  validates :rut, presence: true

end
