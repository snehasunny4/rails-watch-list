# == Schema Information
#
# Table name: movies
#
#  id         :bigint           not null, primary key
#  overview   :string
#  poster_url :string
#  rating     :decimal(, )
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Movie < ApplicationRecord
  validates :title, :overview, presence: true, uniqueness: true
  has_many :bookmarks
end
