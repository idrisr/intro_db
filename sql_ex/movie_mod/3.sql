--For all movies that have an average rating of 4 stars or higher, 
--add 25 to the release year.

UPDATE movie
SET year=year+25
where movie.miD in 
(
    --movies with average rating >=4
    select mID
    from rating rat
    group by mID
    having avg(stars) >= 4
);


