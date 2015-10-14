class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Omniath.
  devise :omniauthable, :omniauth_providers => [:facebook]

  # Items
  has_many :items

  #
  # Create or get a user from Facebook's auth response.
  #
  def self.from_omniauth(auth)
    where(uid: auth[:uid], email: auth[:email]).first_or_create do |user|
      user.email = auth[:email]
      user.password = Devise.friendly_token[0,20]
      user.first_name = auth[:first_name]
      user.last_name = auth[:last_name]
      user.save!
    end
  end

  #
  # String representation.
  #
  def to_s
    self.full_name
  end

  #
  # Full user name
  #
  def full_name
    "#{self.first_name} #{self.last_name}"
  end


end
