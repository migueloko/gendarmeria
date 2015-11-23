class FichaRecinto < ActiveRecord::Base
  belongs_to :ficha_ingreso
  belongs_to :reo
end
