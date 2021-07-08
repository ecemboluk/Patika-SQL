-- ODEV 8 --

CREATE TABLE employee(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	birthday DATE,
	email VARCHAR(100)
);

insert into employee (name, birthday, email) values ('Isaiah', '1941-07-05', null);
insert into employee (name, birthday, email) values ('Terrell', '1982-09-21', 'tbustard1@va.gov');
insert into employee (name, birthday, email) values ('Guilbert', '1995-04-02', null);
insert into employee (name, birthday, email) values ('Adolphus', null, 'agreville3@theglobeandmail.com');
insert into employee (name, birthday, email) values ('Carleen', '1947-01-22', 'cantrum4@gov.uk');
insert into employee (name, birthday, email) values ('Jon', null, 'jcorsan5@goo.gl');
insert into employee (name, birthday, email) values ('Auguste', '1949-05-30', 'asauter6@jigsy.com');
insert into employee (name, birthday, email) values ('Burton', '1998-01-18', null);
insert into employee (name, birthday, email) values ('Andie', null, 'amawne8@ted.com');
insert into employee (name, birthday, email) values ('Daphna', '1971-11-24', 'dmulqueeny9@unesco.org');
insert into employee (name, birthday, email) values ('Elsinore', null, 'erisbiea@soup.io');
insert into employee (name, birthday, email) values ('Jemmy', '1996-04-21', 'jattenboroughb@fema.gov');
insert into employee (name, birthday, email) values ('Roderich', null, 'rmildnerc@sina.com.cn');
insert into employee (name, birthday, email) values ('Angelico', null, 'ashanahand@google.es');
insert into employee (name, birthday, email) values ('Farlie', '1903-06-03', 'ffernelye@dmoz.org');
insert into employee (name, birthday, email) values ('Phillis', null, 'pgeerlingf@163.com');
insert into employee (name, birthday, email) values ('Maurine', '1945-10-25', 'mvaughamg@geocities.jp');
insert into employee (name, birthday, email) values ('Link', '1968-01-23', 'ldeesonh@photobucket.com');
insert into employee (name, birthday, email) values ('Bertina', null, 'bsounessi@nsw.gov.au');
insert into employee (name, birthday, email) values ('Gabby', null, 'gbenechj@theatlantic.com');
insert into employee (name, birthday, email) values ('Darice', '1908-07-29', 'dtrevaskisk@vistaprint.com');
insert into employee (name, birthday, email) values ('Isabeau', '1932-06-12', null);
insert into employee (name, birthday, email) values ('Frasier', null, 'fvearm@nydailynews.com');
insert into employee (name, birthday, email) values ('Cletis', '1952-06-17', 'cmacarin@bravesites.com');
insert into employee (name, birthday, email) values ('Ammamaria', '1901-09-02', 'adouglisso@google.es');
insert into employee (name, birthday, email) values ('Lynett', '1996-04-20', 'ltippertonp@ameblo.jp');
insert into employee (name, birthday, email) values ('Tades', '1942-06-25', 'tenrichq@chicagotribune.com');
insert into employee (name, birthday, email) values ('Ernaline', '1958-09-28', 'espickr@angelfire.com');
insert into employee (name, birthday, email) values ('Ambrosio', null, 'akarchowskis@google.com.hk');
insert into employee (name, birthday, email) values ('Basilius', '1904-03-15', 'bvinkert@topsy.com');
insert into employee (name, birthday, email) values ('Flory', '1959-08-26', 'fslowanu@tumblr.com');
insert into employee (name, birthday, email) values ('Nike', null, 'nkirdschv@sohu.com');
insert into employee (name, birthday, email) values ('Benita', '1967-01-14', 'bwhinrayw@360.cn');
insert into employee (name, birthday, email) values ('Uta', null, 'ufaggex@list-manage.com');
insert into employee (name, birthday, email) values ('Valina', '1981-11-24', 'vwallingy@uiuc.edu');
insert into employee (name, birthday, email) values ('Artemas', '1967-12-31', 'alacasez@fda.gov');
insert into employee (name, birthday, email) values ('Vaclav', '1950-11-03', 'vjovey10@businessweek.com');
insert into employee (name, birthday, email) values ('Morie', null, 'mlambrecht11@mozilla.org');
insert into employee (name, birthday, email) values ('Karissa', '1938-07-28', 'kwulfinger12@ucsd.edu');
insert into employee (name, birthday, email) values ('Mikey', '1905-01-04', 'mjammet13@flavors.me');
insert into employee (name, birthday, email) values ('Juliane', '1980-11-04', 'jworpole14@unc.edu');
insert into employee (name, birthday, email) values ('Foster', '1931-01-21', 'fweetch15@booking.com');
insert into employee (name, birthday, email) values ('Luke', '1950-03-24', 'lcoull16@yahoo.co.jp');
insert into employee (name, birthday, email) values ('Annora', '1991-05-28', 'asnell17@slashdot.org');
insert into employee (name, birthday, email) values ('Codie', '1974-06-08', 'cachromov18@networksolutions.com');
insert into employee (name, birthday, email) values ('Blanche', '1912-07-24', 'bcarsey19@mapy.cz');
insert into employee (name, birthday, email) values ('Tamarra', '1906-02-25', 'tparadin1a@infoseek.co.jp');
insert into employee (name, birthday, email) values ('Gusta', '1906-03-18', 'gyo1b@guardian.co.uk');
insert into employee (name, birthday, email) values ('Madison', '1902-03-06', 'mashburne1c@bigcartel.com');
insert into employee (name, birthday, email) values ('Virgil', '1957-01-14', null);

SELECT * FROM employee;

UPDATE employee
	SET birthday = '1901-01-01'
WHERE name = 'Jon'
RETURNING *;

UPDATE employee
	SET birthday = '2021-07-08'
WHERE name LIKE 'A%'
RETURNING *;

UPDATE employee
	SET email = 'example@example.com'
WHERE name LIKE 'D%'
RETURNING *;

UPDATE employee
	SET name = 'Donis'
WHERE email = 'example@example.com' AND birthday = '1908-07-29'
RETURNING *;

UPDATE employee
	SET email = 'greenworld@gov.uk'
WHERE birthday BETWEEN '1909-07-08' AND '1999-07-08'
RETURNING *;

DELETE FROM employee
WHERE birthday BETWEEN '1963-07-08' AND '1968-07-08'
RETURNING *;

DELETE FROM employee
WHERE name LIKE 'T%'
RETURNING *;

DELETE FROM employee
WHERE email ILIKE 'g%'
RETURNING *;

DELETE FROM employee
WHERE name = 'Benita' AND birthday = '1967-01-14'
RETURNING *;

DELETE FROM employee
WHERE birthday > '1968-01-25'
RETURNING *;

