-- TIMESTAMPS and EXTRACT

-- I've seen that PostgreSQL can hold date and time info:
-- 1. TIME - contains only time
-- 2. DATE - contains only date
-- 3. TIMESTAMP - contains date and time
-- 4. TIMESTAMPZ - contains date, time and timezone

-- Careful consideration in thinking about which time data type to store information in.
-- We can always remove historical information as timezone if we later on decided that we don't need it. 
-- But we can't add it later if we never recorded in the first place. 
-- So, try to think long term when recording time and date information


-- Exploring some functions and operations
-- useful later on while creating and populating databases
-- 1. TIMEZONE
-- 2. NOW
-- 3. TIMEOFDAY
-- 4. CURRENT_TIME
-- 5. CURRENT_DATE

SHOW ALL; -- shows values of all run time parameters

SHOW TIMEZONE; -- show the timezone i'm working with

SELECT NOW(); -- get's you current date, time and timezone

SELECT TIMEOFDAY(); -- gives basically the same info as NOW() but in string format for better readability

SELECT CURRENT_TIME; -- gives current time with timezone

SELECT CURRENT_DATE; -- gives date in YYYY-MM-DD

