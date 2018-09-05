class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :likes
  has_many :liked_posts, through: :likes, class_name: 'Post', source: :post


  def likes?(post)
    liked_posts.include?(post)
  end

end
