create table todo (
  id serial primary key,
  title varchar(100) not null,
  description varchar(200),
  priority int default(1) not null,
  created_at timestamp not null,
  completed_at timestamp
  );

  INSERT INTO todo (title, priority, created_at) VALUES
('Wash the dog', 5, now()-interval '37 hours'),
('Wash the car', 4, now()-interval '36 hours'),
('Wash the dishes', 3, now()-interval '35 hours'),
('Wash the toilet', 2, now()-interval '34 hours'),
('Wash the tub', 1, now()-interval '33 hours'),
('Wash the floor', 5, now()-interval '32 hours'),
('Wash the siding', 4, now()-interval '31 hours'),
('Wash the porch', 3, now()-interval '30 hours'),
('Wash the cat', 2, now()-interval '29 hours'),
('Wash the injuries received from washing the cat', 1, now()-interval '28 hours');

INSERT INTO todo (title, description, priority, created_at) VALUES
('Go to dinner', 'With my parents', 5, now()-interval '27 hours'),
('Go to dinner', 'With her parents', 4, now()-interval '26 hours'),
('Go to dinner', 'With my brother', 3, now()-interval '25 hours'),
('Go to dinner', 'With her sister', 2, now()-interval '24 hours'),
('Go to dinner', 'With friends', 1, now()-interval '23 hours');

INSERT INTO todo (title, priority, created_at, completed_at) VALUES
('Test time machine', 5, now(), now()+interval '3 hours'),
('Determine if war has been started yet', 4, now(), now()+interval '5 hours'),
('Check stock market', 3, now(), now()+interval '2 hours'),
('Check the winning lotto numbers', 2, now(), now()+interval '9 hours'),
('Destroy time machine to prevent poor usage', 1, now(), now()+interval '6 hours');

-- Verify table is properly seeded
SELECT * FROM todo;

SELECT * FROM todo WHERE completed_at IS NULL AND priority = 3;

SELECT priority, COUNT(*) FROM todo WHERE completed_at IS NULL GROUP BY priority;

SELECT priority, COUNT(*) FROM todo WHERE created_at > current_date - interval '30' day GROUP BY priority;

SELECT * FROM todo WHERE created_at = (SELECT min(created_at) FROM todo WHERE priority = 5 AND completed_at IS NULL);
