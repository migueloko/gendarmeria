class FichaCarcelarium < ActiveRecord::Base
  belongs_to :reo
  belongs_to :ficha_ingreso_
end
