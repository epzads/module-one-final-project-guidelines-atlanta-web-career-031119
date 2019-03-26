class Movie < ActiveRecord::Base


has_many :watchlist

has_many :user, through: :watchlist


end
