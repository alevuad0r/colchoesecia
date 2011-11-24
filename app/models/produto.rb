class Produto < ActiveRecord::Base
  
  has_and_belongs_to_many :vendas
  has_and_belongs_to_many :orcamentos

  def to_s
    nome
  end
  
end
