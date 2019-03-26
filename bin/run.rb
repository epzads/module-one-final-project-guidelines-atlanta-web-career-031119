require_relative '../config/environment'
#
#
#
#
# def createuser(name)
#
#  user = User.new(name: name)
#  user.save
#  puts user.name
# end
#
# def addmovie(name)
#
#   x = name
#
#
#   url = "http://www.omdbapi.com/?t=#{x}&apikey=8699c2be"
#
#   x = RestClient.get(url)
#   response = JSON.parse(x)
#   #puts response["Runtime"]
#   #puts response["Ratings"].first["Value"]
#
#
#    title = response["Title"]
#    release_date = response["Released"]
#    plot = response["Plot"]
#    ratings = response["Ratings"].first["Value"]
#    username = "prince"
#    runtime = response["Runtime"]
#    superman = Movie.new(title: title, release_date: release_date, plot: plot, rating: ratings, runtime: runtime)
#    superman.save
#     array = [title,release_date,plot,ratings,runtime]
#
#    end
#
#    # t.integer :user_id
#    # t.integer :movie_id
#    # t.float :rating
#    # t.text    :review
#    # t.boolean :watched
#
#
#
#
#
#  def CreateWatchlist(username)
#  movieid = Movie.last.id
#  x = User.find_by(name: username)
#   userid = x.id
#   watch = WatchList.new(user_id: userid, movie_id: movieid, rating: 0.0, review: "", watched: true  )
#
#  end
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
#  superman = Movie.new(title: title, release_date: release_date, plot: plot, rating: ratings, runtime: runtime)
#
#  #binding.pry
#   array = [title,release_date,plot,ratings,runtime]
#  #puts array
#
#  #puts hash[:title]
#  print "WELCOME TO MOVIES POINT"
#
#  print "--------------------------------------"
#
#  puts "Enter Your User Name "
#
#   #addmovie("iron")
#   #addmovie("copper")
#    #name = gets.chomp
#    #name = "champs"
#    #createuser(name)
#    #test = "champion"
#    #createuser(test)
#    #binding.pry
#    #Movie.destroy_all
#    #User.destroy_all
#    #puts User.first.name
#    #puts Movie.last.id
#    #puts Movie.first.id
#    #puts User.last.id
#
#   # userid = User.last.id
#    #puts userid
#   #  movieid = Movie.last.id
#    #puts movieid
#
#    #watch = Watchlist.new(user_id: userid, movie_id: movieid, rating: 0.0, review: "", watched: true)
#
#    #puts watch.user_id
#    #puts watch.movie_id
#    #puts watch.rating
#    #puts watch.review
#
#
#    #x = User.find_by(name: "champion")
#    #y = x.id
#   #userid =  User.last.id  ### 31
#   #movieid =   Movie.last.id ## 10
#   #watch = Watchlist.new(user_id: 3, movie_id: movieid, rating: 0.0, review: "", watched: true)
#   #watch.save
#   #puts movieid
#    #puts watch.movie_id
#
#   #watch.where("user_id == userid")
#   #if watch.user_id == userid
#   #  puts watch.movie.title
#   #end
#
#   #  puts Watchlist.last.user_id
#
#   ##search movie and search user
#      # Watchlist.all.each do |id|
#      #   if id.movie_id == movieid
#      #
#      #    puts id.user.name
#      # end
#      # end
#

def movieslist(name)

  Watchlist.all.each do |id|
    if id.user.name == name

     puts id.movies.title

  end

  end

  end






def createuser(name)

 user = User.new(name: name)
 user.save
 puts "Your USERNAME IS  #{User.last.name}"
 moviesmenu(name)
end


def checkuser(name)

 User.all.each do |username|

   if username.name.downcase == name.downcase

      puts "user already exists "

      mainmenu()
  end
end
     createuser(name)


end



def newuser()

puts "PLEASE ENTER YOUR USER NAME"

   username = gets.chomp

   checkuser(username)


 end


 def moviesmenu(name)

  puts " MOVIES MENU :---"

  puts " 1> SELECT MOVIES "
  puts " 2> VIEW MY MOVIES LIST"
  puts " 3> GO TO MAIN MENU"
  action = gets.chomp

   if action != "1" && action != "2" && action != "3"

     moviesmenu()


   else if action == "1"

      puts "SELECT MOVIES"

   else if action == "2"

     puts "MOVIES LIST"

   else if action == "3"

      mainmenu()
  end
  end
  end
  end
 end


  def moviesselect()
  puts "PlEASE ENTER THE MOVIE FROM BELOW LIST OR ENTER ANY MOVIES NAME AT PROMPT"

 puts "
1>  Jurassic World                            26> The Good Dinosaur
2>	Star Wars: The Force Awakens              27> Creed
3>	Avengers: Age of Ultron                   28> Get Hard
4>	Inside Out                                29> Terminator: Genisys
5>  Furious 7                                 30> Taken 3
6>	Minions                                   31> Maze Runner: The Scorch Trials
7>	The Hunger Games: Mockingjay              32> Ted 2
8>	The Martian                               33> Pixels
9>  Cinderella (2015)                         34> Goosebumps
10>	Spectre                                   35> Paddington
11>	Mission: Impossible - Rogue Nation        36> The Intern
12>	Pitch Perfect 2                           37> Paul Blart: Mall Cop 2
13>	Ant-Man                                   38> Bridge of Spies
14>	Home (2015)                               39> War Room
15>	Hotel Transylvania 2                      40> The Visit
16>	Fifty Shades of Grey                      41> The Wedding Ringer
17>	The SpongeBob Movie: Sponge Out of Water  42> Black Mass
18>	Straight Outta Compton                    43> Fantastic Four
19>	San Andreas                               44> Vacation
20>	Mad Max: Fury Road                        45> Unfriended
21>	The Divergent Series: Insurgent           46> The Lazarus Effect
22>	Kingsman: The Secret Service              47> The Night Before
23>	The Peanuts Movie                         48> Ricki and the Flash
24>	Spy                                       49> American Sniper
25>	Trainwreck                                50> Still Alice  "


  puts "PLEASE ENTER THE MOVIE NAME FOR MORE INFORMATION :- "

   name = gets.chomp

    x = name


    url = "http://www.omdbapi.com/?t=#{x}&apikey=8699c2be"

    x = RestClient.get(url)
    response = JSON.parse(x)
    #puts response["Runtime"]
    #puts response["Ratings"].first["Value"]


     puts "THE TITLE => #{response["Title"]}"
    puts "THE RELEASE DATE =>#{response["Released"]}"
     puts "THE PLOT => #{response["Plot"]}"
     puts "ITS RATING => #{response["Ratings"].first["Value"]}"

     puts response["Runtime"]

   puts "do you want to select it (1 for yes , 2 for no)"

    action = gets.chomp
   if action != "1" && action != "2"

     puts "please press 1 or 2 key "

       moviesselect()
   else if action == "1"

       puts "Movie added to your watchlist"

   else if action == "2"

     moviesselect()

  end
end
end
  end


   def mainmenu
   puts "WELCOME TO MOVIE POINT"

    puts " 1 . New User"
    puts " 2 . Existing User"
    puts " 3 . QUIT "

    action = gets.chomp

     if action != "1" && action != "2" && action != "3"

       mainmenu()


     else if action == "1"

        newuser()

     else if action == "2"

       puts "existing user"

     else if action == "3"

       puts "have a good day "
end
end
end
end
end



 #mainmenu()
 moviesselect()
