class FichaIngreso < ActiveRecord::Base
  has_many :ficha_recintos
  has_many :reo , :through => :ficha_recintos
  validates :codigo_ficha, presence: true
end
