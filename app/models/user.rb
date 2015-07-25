class User < ActiveRecord::Base
  # Jooyong: validates inputs. presence: prevent empty input, length: constaints numbers of letters
  # format: constarint on input to be email format, Uniqueness: prevent duplications
  before_save { self.email = email.downcase} #JY: take email inputs as lowercase only.
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i #Jooyong: valid email form in FULL REGEX expression
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
 		    uniqueness: { case_sensitive: false }	
  has_secure_password #JY: function that handle password attributes and also encrpytion of password
  validates :password, presence: true, length: { minimum: 6 } 
      
end
