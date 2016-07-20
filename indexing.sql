CREATE INDEX make_code_idx ON car_models (make_code);
CREATE INDEX make_title_idx ON car_models (make_title);
CREATE INDEX model_code_idx ON car_models (model_code);
CREATE INDEX model_title_idx ON car_models (model_title);

-- 1.
SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM';
 -- TIME: 2.63ms

-- 2.
SELECT DISTINCT model_title FROM car_models WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
 -- TIME: 3.714ms

-- 3.
SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code = 'LAM';
  -- TIME: 4.863 ms

-- 4.
SELECT * FROM car_models WHERE year >= 2010 AND year <= 2015;
  -- TIME: 105.570ms

-- 5.
SELECT * FROM car_models WHERE year = 2010;
  -- TIME: 63.5ms

-- Queries 4 and 5 are not faster