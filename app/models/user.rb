class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  validates :role, presence: true

def is_landlord?
	role == "landlord"
end

def is_tenant?
	role == "tenant"
end


end


