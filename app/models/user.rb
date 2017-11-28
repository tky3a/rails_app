class User < ApplicationRecord
  #nameが入力されていないと許可しない設定。長さ制限５０文字
  #↓はvalidates(:name, presence: true)と同じ意味
  validates :name, presence: true, length: {maximum: 50 }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
