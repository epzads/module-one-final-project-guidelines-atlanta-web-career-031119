
require 'pry'

require 'json'


def createuser(name)

 user = User.new(name: name)
 user.save
 puts user.name
end


def checkuser(name)

 User.all.each do |username|

   if username.name.downcase == name.downcase

     puts "user already exists "

   else

     createuser(name)
end
end
end
def addmovie(name)

  x = name


  url = "http://www.omdbapi.com/?t=#{x}&apikey=8699c2be"

  x = RestClient.get(url)
  response = JSON.parse(x)
  #puts response["Runtime"]
  #puts response["Ratings"].first["Value"]


   title = response["Title"]
   release_date = response["Released"]
   plot = response["Plot"]
   ratings = response["Ratings"].first["Value"]
   username = "prince"
   runtime = response["Runtime"]
   superman = Movie.new(title: title, release_date: release_date, plot: plot, rating: ratings, runtime: runtime)
   superman.save
    array = [title,release_date,plot,ratings,runtime]

   end

   def CreateWatchlist(username)
   movieid = Movie.last.id
   x = User.find_by(name: username)
    userid = x.id
    watch = WatchList.new(user_id: userid, movie_id: movieid, rating: 0.0, review: "", watched: true  )

   end

  def showmovies(userid)
    Watchlist.all.each do |id|
      if id.movie_id == movieid

       puts id.user.name
    end
    end
  end

  def showusers()
  User.alL.each do |name|

    puts name.name
  end 
  end


#
#
# #puts "Please Enter the name of movie"
#
#
# x = "Superman"
#
#
# url = "http://www.omdbapi.com/?t=#{x}&apikey=8699c2be"
#
# x = RestClient.get(url)
# response = JSON.parse(x)
# #puts response["Runtime"]
# #puts response["Ratings"].first["Value"]
#
#
#  title = response["Title"]
#  release_date = response["Released"]
#  plot = response["Plot"]
#  ratings = response["Ratings"].first["Value"]
#  username = "prince"
#  runtime = response["Runtime"]
#  #binding.pry
#  superman = Movie.new
#
#  #create a new movie object and
#
# #user =User.new("prince")
# #user.savei
