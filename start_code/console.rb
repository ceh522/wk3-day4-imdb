require_relative( 'models/casting' )
require_relative( 'models/star' )
require_relative( 'models/movie' )

require('pry')

Casting.delete_all
Movie.delete_all
Star.delete_all

movie1 = Movie.new({
  'title' => 'Toy Story',
  'genre' => 'animation'
  })

  movie1.save


  star1 = Star.new({
    'first_name' => 'Tom',
    'last_name' => 'Hanks'
    })

    star1.save

    casting1 = Casting.new({
      'movie_id' => movie1.id,
      'star_id' => star1.id,
      'fee' => 200000
      })

      casting1.save

      binding.pry
      nil
