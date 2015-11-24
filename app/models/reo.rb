class Reo < ActiveRecord::Base
  belongs_to :recinto
  has_many :ficha_recintos
  has_many :ficha_recintos, :through => :ficha_recintos

end
