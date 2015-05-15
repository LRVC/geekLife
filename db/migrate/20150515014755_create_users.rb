class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :token
      t.string :star_stuff
      t.string :lens_str
      t.string :years_braces
      t.string :comics
      t.string :string
      t.string :age
      t.string :integer
      t.string :sex
      t.string :string
      t.string :fav_lang
      t.string :pi_pie
      t.string :fav_planet
    end
  end
end
