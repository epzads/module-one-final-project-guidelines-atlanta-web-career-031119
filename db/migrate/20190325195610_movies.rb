class Movies < ActiveRecord::Migration[5.0]
  def change

  create_table :movies do |t|
   t.string :title
   t.string :release_date
   t.text   :plot
   t.float :rating
   t.string :runtime


  end


  end
end
