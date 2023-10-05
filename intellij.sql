
CREATE TABLE Books (
                       BookID serial PRIMARY KEY,
                       Title VARCHAR(100),
                       Author VARCHAR(100),
                       PublicationYear INT
);


INSERT INTO Books (Title, Author, PublicationYear)
VALUES
    ('The Great Gatsby', 'F. Scott Fitzgerald', 1925),
    ('когда я вернусь будь дома', 'Эльчин Сафарали', 2017),
    ('мастер и маргарита', 'Л.Толстой', 1940);


CREATE TABLE Movies (
                        MovieID serial PRIMARY KEY,
                        Title VARCHAR(100),
                        Director VARCHAR(100),
                        ReleaseYear INT
);


INSERT INTO Movies (Title, Director, ReleaseYear)
VALUES
    ('The Shawshank Redemption', 'Frank Darabont', 1994),
    ('Pulp Fiction', 'Quentin Tarantino', 1994),
    ('The Godfather', 'Francis Ford Coppola', 1972);


CREATE TABLE Restaurants (
                             RestaurantID serial PRIMARY KEY,
                             Name VARCHAR(100),
                             CuisineType VARCHAR(100),
                             City VARCHAR(100)
);


INSERT INTO Restaurants (Name, CuisineType, City)
VALUES
    ('La Trattoria', 'Italian', 'New York'),
    ('Sushi Express', 'Japanese', 'Los Angeles'),
    ('Le Bistro', 'French', 'Paris');


CREATE TABLE Cars (
                      CarID serial PRIMARY KEY,
                      Make VARCHAR(50),
                      Model VARCHAR(50),
                      Year INT
);


INSERT INTO Cars (Make, Model, Year)
VALUES
    ('Toyota', 'Camry', 2022),
    ('Ford', 'Mustang', 2023),
    ('Honda', 'Civic', 2022);
