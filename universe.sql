CREATE TABLE galaxy (
    galaxy_id SERIAL PRIMARY KEY,
    star_id INT NOT NULL,
    name VARCHAR(20) UNIQUE NOT NULL,
    area INTEGER,
    size NUMERIC(15,2) NOT NULL,
    volume INT,
    diameter INT,
    age INT,
    material TEXT,
    has_life BOOLEAN,
    has_water BOOLEAN
);

CREATE TABLE star (
    star_id SERIAL PRIMARY KEY,
    galaxy_id INTEGER NOT NULL,
    planet_id INTEGER NOT NULL,
    name VARCHAR(20) UNIQUE NOT NULL,
    area INT,
    volume INT,
    diameter INT,
    age NUMERIC,
    material TEXT,
    has_life BOOLEAN,
    has_water BOOLEAN,
    FOREIGN KEY (galaxy_id) REFERENCES galaxy(galaxy_id)
);

CREATE TABLE planet (
    planet_id SERIAL PRIMARY KEY,
    star_id INTEGER  NOT NULL,
    moon_id INTEGER  NOT NULL,
    name VARCHAR(20) UNIQUE NOT NULL,
    area INT,
    volume INT,
    diameter INT,
    age NUMERIC,
    material TEXT,
    has_atmosphere BOOLEAN,
    is_habitable BOOLEAN,
    has_life BOOLEAN,
    has_water BOOLEAN,
    FOREIGN KEY (star_id) REFERENCES star(star_id)
);

CREATE TABLE moon (
    moon_id SERIAL PRIMARY KEY,
    planet_id INTEGER NOT NULL,
    name VARCHAR(20) UNIQUE NOT NULL,
    area INT,
    volume INT,
    diameter INT,
    age NUMERIC,
    distance_from_planet INT,
    material TEXT,
    has_atmosphere INT,
    is_habitable BOOLEAN,
    has_life BOOLEAN,
    has_water BOOLEAN,
    FOREIGN KEY (planet_id) REFERENCES planet(planet_id)
);

CREATE TABLE g_info (
    g_info_id SERIAL NOT NULL,
    object_id INTEGER NOT NULL,
    name VARCHAR(20) UNIQUE NOT NULL,
    description TEXT,
    square INT,
    measure INT
);
