User.destroy_all
Movie.destroy_all
Watchlist.destroy_all

princeton = User.create(name: "Princeton")

abdul = User.create(name: "Abdul")

superman = Movie.create(title: "Superman", release_date: "1955", plot: "i can fly", rating: 3.5, runtime: "120 minutes" )

spiderman = Movie.create(title: "spiderman", release_date: "2016", plot: "i am spider", rating: 4.0, runtime: "20 minutes" )
