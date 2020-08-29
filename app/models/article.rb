class Article < ApplicationRecord
  validates :title, presence: true, length: {minimum: 6, maximum: 100}
  validates :descripton, presence: true, length: {minimum: 10, maximum: 300}

end
