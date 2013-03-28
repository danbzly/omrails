class User < ActiveRecord::Base

 
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :Biz_name

                    validates :name, presence: true
                    validates :Biz_name, presence: true, 
                                         uniqueness: true
                                         
                                      




  # attr_accessible :title, :body
  



  has_many :pins, dependent: :destroy
  has_many :statuses, dependent: :destroy
  has_many :user_friendships
  has_many :friends, through: :user_friendships,
                     conditions: {user_friendships: {state: 'accepted'}} 

  has_many :pending_user_friendships, class_name: 'UserFriendship',
                                      foreign_key: :user_id, 
                                      conditions: {state: 'pending'} 

  has_many :pendingfriends, through: :pending_user_friendships, source: :friend                                                     





  def gravatar_url
  stripped_email = email.strip
  downcased_email = stripped_email.downcase
  hash = Digest::MD5.hexdigest(downcased_email)

  "http://gravatar.com/avatar/#{hash}"
end
 end
