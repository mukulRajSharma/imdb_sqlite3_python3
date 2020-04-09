PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;

CREATE TABLE actor (
    id integer NOT NULL,
    name character varying(128) UNIQUE NOT NULL,
    facebook_likes integer,
    PRIMARY KEY (id)
);

CREATE TABLE director (
    id integer NOT NULL,
    name character varying(128) UNIQUE NOT NULL,
    facebook_likes integer,
    PRIMARY KEY (id)
);

CREATE TABLE movie (
    id integer NOT NULL,
    title character varying(256) NOT NULL,
    year integer,
    content_rating character varying(9),
    duration integer,
    lang character varying(10),
    country character varying(20),
    gross bigint,
    budget bigint,
    director_id integer,
    PRIMARY KEY (id),
    FOREIGN KEY (director_id) REFERENCES director(id)
);

CREATE TABLE rating (
    movie_id integer NOT NULL,
    num_critic_for_reviews integer,
    num_user_for_reviews integer,
    num_voted_users integer,
    movie_facebook_likes integer,
    cast_total_facebook_likes integer,
    imdb_score numeric(3,1),
    PRIMARY KEY (movie_id),
    FOREIGN KEY (movie_id) REFERENCES movie(id)
);

CREATE TABLE acting (
    movie_id integer NOT NULL,
    actor_id integer NOT NULL,
    PRIMARY KEY (movie_id, actor_id),
    FOREIGN KEY (actor_id) REFERENCES actor(id),
    FOREIGN KEY (movie_id) REFERENCES movie(id)
);

CREATE TABLE genre (
    movie_id integer NOT NULL,
    genre character varying(11) NOT NULL,
    PRIMARY KEY (movie_id, genre),
    FOREIGN KEY (movie_id) REFERENCES movie(id)
);

CREATE TABLE keyword (
    movie_id integer,
    keyword character varying(256) NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES movie(id)
);