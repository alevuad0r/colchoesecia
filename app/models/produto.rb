class Produto < ActiveRecord::Base
  
  validates_presence_of :cod_produto, :message=> "deve ser preenchido."
  validates_presence_of :nome, :message=> "deve ser preenchido."
  validates_presence_of :preco, :message=> "deve ser preenchido."
  
  validates_uniqueness_of :cod_produto, :message=> "ja existe."
  
  has_and_belongs_to_many :vendas
  has_and_belongs_to_many :orcamentos
  
end
