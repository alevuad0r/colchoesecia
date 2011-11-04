class Orcamento < ActiveRecord::Base

   has_and_belongs_to_many :produtos
   belongs_to :usuario
   
end
