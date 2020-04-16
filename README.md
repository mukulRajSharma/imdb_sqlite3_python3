# imdb_sqlite3_python3
simple set of executables in python3 integrated with sqlite3 DB, working on an IMDb like database. (searching, ordering, grouping...)

<b>./acting "actor's name"</b>  

  This will give you the list of all the movies the actor has worked in.

<b>./title "sub-string of a title"</b>  
  
  This will list all the movies which have the sub-string in the title

<b>./toprank "genre1&genre2..&genreN" k startYear endYear</b>  
<b>./toprank k startYear endYear</b>  
  
  This query will list the first k top-ranked movies (by IMDb rating and number of votes) belonging to the given set of genres.
  If the genre field is left blank then it finds the k top-ranked movies across all genres.

<b>./similar "title" N</b>

  This query gives you N movie suggestions based on the title you provide.  
  It considers genres, keywords, IMdb rating, number of votes to make this decision.
