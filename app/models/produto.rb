class Produto < ActiveRecord::Base
  
  validates_presence_of :nome
  validates_presence_of :preco
  validates_presence_of :dono
  validates_presence_of :email
  
end
