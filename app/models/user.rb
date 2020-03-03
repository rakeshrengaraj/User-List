class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :country, presence: true


  def country_name
    selected_country = self.country
    country = ISO3166::Country[selected_country]
    country_name = country.name
  end


  def is_female
    user_gender = (self.gender === false) ? "Female" : "Male"
  end

  def full_name
    full_name = self.first_name + " " + self.last_name
  end  
end
