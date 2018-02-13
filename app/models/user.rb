class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

has_many :gossips 
validates :email, presence: true, length: { maximum: 140 }
validates :username, presence: true, length: { maximum: 20 } 

 
devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
