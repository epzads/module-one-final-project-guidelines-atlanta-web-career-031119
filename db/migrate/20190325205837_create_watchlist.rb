class CreateWatchlist < ActiveRecord::Migration[5.0]
  def change
   create_table :watchlists do |t|

   t.integer :user_id
   t.integer :movie_id
   t.float :rating
   t.text    :review
   t.boolean :watched
   end

  end
end
