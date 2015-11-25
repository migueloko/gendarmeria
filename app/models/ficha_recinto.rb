class FichaRecinto < ActiveRecord::Base
  belongs_to :ficha_ingreso
  belongs_to :reo
  validates :reo, presence: true
end
