# imdb_sqlite3_python3
simple set of executables in python3 integrated with sqlite3 DB, working on an IMDb like database. (searching, ordering, grouping...)

./acting "actor's name"  
  
  <i>This will give you the list of all the movies the actor has worked in.</i>

./title "sub-string of a title"  
  
  This will list all the movies which have the sub-string in the title

./toprank "genre1&genre2..&genreN" k startYear endYear  
./toprank k startYear endYear  
  
  This query will list the first k top-ranked movies (by IMDb rating and number of votes) belonging to the given set of genres.
  If the genre field is left blank then it finds the k top-ranked movies across all genres.
