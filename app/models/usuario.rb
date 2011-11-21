class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :nome, :telefone, :login, :email, :password, :password_confirmation, :remember_me
  
  validates_presence_of :nome, :message=> "deve ser preenchido."
  validates_presence_of :login, :message=> "deve ser preenchido."
  validates_presence_of :senha, :message=> "deve ser preenchido."
  
  validates_uniqueness_of :login, :message=> "ja existe."
  
  has_many :vendas
  has_many :orcamentos

end
