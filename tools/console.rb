require_relative '../config/environment.rb'






                    #name, years_experience
artist1 = Artist.new("Lauren", 10)
artist2 = Artist.new("Jane", 4)
artist3 = Artist.new("Peter", 1)

                      #name, city
gallery1 = Gallery.new("Gallery 1", "New York")
gallery2 = Gallery.new("Gallery 2", "Jersey City")
gallery3 = Gallery.new("Gallery 3", "Chicago")


                        #title, price, artist, gallery
painting1 = Painting.new("title 1", 100, artist1, gallery1)
painting2 = Painting.new("title 2", 200, artist1, gallery2)
painting3 = Painting.new("title 3", 300, artist3, gallery2)


binding.pry
puts "Bob Ross rules."
