class Book < ApplicationRecord
  belongs_to :user

	#バリデーションは該当するモデルに設定する。エラーにする条件を設定できる。 20210219
	#presence trueは空欄の場合を意味する。
	validates :title, presence: true
	validates :body, presence: true, length: {maximum: 200}
end
