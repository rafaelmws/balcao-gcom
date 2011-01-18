class Produto < ActiveRecord::Base
  
  validates_presence_of :nome
  validates_presence_of :preco
  validates_presence_of :dono
  validates_presence_of :email
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  
  def to_param
    "#{id}-#{nome}"
  end
end



