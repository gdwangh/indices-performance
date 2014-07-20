1. add index on Reviews.movie_Id, moviegoer_id
   a) create migration file:
      rails generate migration AddIndiceToReviews movie_id:index moviegoer_id:index

   b) update the migration file, delete "add columns" lines
   
   or:
   a)  rails generate migration AddIndiceToReviews
   b) add the lines for index:
	add_index :reviews, :movie_id
    	add_index :reviews, :moviegoer_id

2.rake db:migrate

3. user explain plan to check the result
	cd db
	sqlite3 development.sqlite3
	explain query plan SELECT "reviews".* FROM "reviews" WHERE "reviews"."movie_id" = 1;

	see: SCAN TABLE reviews (~# rows)

4.or use the benchmark action to see if you are getting better results:
	

  
