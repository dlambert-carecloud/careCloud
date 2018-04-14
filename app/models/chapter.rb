class Chapter < ApplicationRecord
  has_many :codes, foreign_key: "chapter_number"
end
