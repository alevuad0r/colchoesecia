class Usuario < ActiveRecord::Base
  
  has_many :vendas
  has_many :orcamentos
  
end
