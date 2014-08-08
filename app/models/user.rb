class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts
  has_many :user_friends

  def my_friends
  	self.user_friends.collect(&:friend_id)
  end

  def friends
  	UserFriend.where(friend_id: self.id).collect(&:user_id)
  end

  def all_friends
  	friends + my_friends
  end
end
