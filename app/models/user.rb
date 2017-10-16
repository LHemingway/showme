class User < ApplicationRecord
  has_many :users_projects
	has_many :projects, through: :users_projects, :dependent => :destroy
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	
  # This means that they have to be present i.e. not null!
  validates :first_names, :surname, :start_date, :course_path,  presence: true

  validates_format_of :email, with: /\@spartaglobal\.com/, message: 'You should have an email from spartaglobal.com'
end
