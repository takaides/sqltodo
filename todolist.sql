CREATE TABLE todo (
    id            SERIAL PRIMARY KEY NOT NULL,
    title         varchar(255) NOT NULL,
    details       varchar(65000),
    priority      integer DEFAULT 1 NOT NULL,
    created_at    timestamp NOT NULL,
    completed_at  timestamp
);

INSERT INTO todo (title, details, priority, created_at) VALUES ('Wash the car', 'Washy washy', 1, clock_timestamp());

INSERT INTO todo (title, priority, created_at) VALUES ('Wash the dog', 1, clock_timestamp());

INSERT INTO todo (title, details, priority, created_at) VALUES ('Do the dishes', 'The sink is full', 1, clock_timestamp());

INSERT INTO todo (title, details, priority, created_at) VALUES ('Laundry', 'I need some pants', 3, clock_timestamp());

INSERT INTO todo (title, priority, created_at, completed_at) VALUES ('Make Dinner', 5, clock_timestamp(), clock_timestamp());

SELECT * FROM todo WHERE completed_at IS NULL;

SELECT * FROM todo WHERE priority > 1;

UPDATE todo SET completed_at = TO_TIMESTAMP('2017-08-09 12-00-00', 'YYYY-MM-DD HH24:MI:SS') WHERE id = 1;

DELETE FROM todo WHERE completed_at IS NOT NULL;
