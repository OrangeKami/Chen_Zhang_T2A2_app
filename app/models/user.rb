class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  
  has_many :listings
         
  has_one_attached :avatar


    ## Validations
  validates :avatar, file_size: { less_than_or_equal_to: 5.megabytes },
              file_content_type: { allow: ['image/jpeg', 'image/png', 'image/gif'] }
  # validates :postcode, format: { with: /(0[289][0-9]{2})|(0[89][0-9]{2})|([1-2]{1}[0-9]{1}[0-9]{2})|(2[9][0-1]{1}[1-4]{1})|([3-7]{1}[0-5]{1}[0-9]{2})|([7-9]{1}[8-9]{1}[0-9]{2})/ }
  validates :email, uniqueness: true
  validates :username, uniqueness: { case_sensitive: false }

end
