class Beneficio < ActiveRecord::Base
  belongs_to :reo
  validates :codigo, presence: true
end
