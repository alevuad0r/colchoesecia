class Cliente < ActiveRecord::Base
   validates_presence_of :nome, :message=>"deve ser preenchido."
   validates_presence_of :cpf, :message=>"deve ser preenchido."
   validates_presence_of :telefone, :message=>"deve ser preenchido."
   
   validates_uniqueness_of :nome , :message=>"ja existe."
end
