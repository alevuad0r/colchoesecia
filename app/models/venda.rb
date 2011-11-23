class Venda < ActiveRecord::Base
  
  belongs_to :cliente
  belongs_to :usuario
  has_and_belongs_to_many :produtos

end
