class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :matches
  has_many :projects
  acts_as_taggable_on :tags

  validates :username, presence: true, uniqueness: true
end
