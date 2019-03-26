

class User < ActiveRecord::Base





 has_many :watchlist
 has_many :movie, through: :watchlist






end
