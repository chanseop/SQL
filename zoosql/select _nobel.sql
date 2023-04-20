-- Change the query shown so that it displays Nobel prizes for 1950.
select * from nobel
where yr='1950';

-- Show who won the 1962 prize for literature.
select winner from nobel
where yr='1962' and subject='literature';

-- Show the year and subject that won 'Albert Einstein' his prize.
select yr,subject from nobel
where winner='Albert Einstein';

-- Give the name of the 'peace' winners since the year 2000, including 2000.
select winner from nobel
where subject='peace' and yr>=2000;

-- Show all details (yr, subject, winner) of the literature prize winners for 1980 to 1989 inclusive.
select yr,subject,winner from nobel 
where subject='literature' and yr>=1980 and yr<=1989;

-- Show all details of the presidential winners:

-- Theodore Roosevelt
-- Thomas Woodrow Wilson
-- Jimmy Carter
-- Barack Obama
SELECT * FROM nobel
 where winner in('Theodore Roosevelt', 'Woodrow Wilson', 'Jimmy Carter', 'Barack Obama');
 
 -- Show the winners with first name John
 select winner from nobel
where winner like 'John%'

-- Show the year, subject, and name of physics winners for 1980 together with the chemistry winners for 1984.
select yr,subject,winner from nobel
where subject='physics' and yr='1980'
or subject='chemistry' and yr='1984';

-- Show the year, subject, and name of winners for 1980 excluding chemistry and medicine
select yr,subject,winner from nobel
where yr='1980' and not(subject='chemistry' or subject='medicine');


-- Show year, subject, and name of people who won a 'Medicine' prize in an early year (before 1910, not including 1910) together with winners of a 'Literature' prize in a later year (after 2004, including 2004)
select * from nobel
where yr<1910 and subject='medicine'
or yr>=2004 and subject='literature'

-- Find all details of the prize won by PETER GRÜNBERG
select * from nobel
where winner='Peter Grünberg'

-- Find all details of the prize won by EUGENE O'NEILL
select * from nobel
where winner like 'EUGENE O%';

-- Knights in order
-- List the winners, year and subject where the winner starts with Sir. Show the the most recent first, then by name order.
SELECT winner, yr, subject
FROM nobel
WHERE winner LIKE 'sir%'
ORDER BY yr DESC, winner

-- The expression subject IN ('chemistry','physics') can be used as a value - it will be 0 or 1.
-- Show the 1984 winners and subject ordered by subject and winner name; but list chemistry and physics last.
SELECT winner, subject
FROM nobel
WHERE yr=1984
ORDER BY 
CASE WHEN subject IN ('Physics','Chemistry')
     THEN 1
     ELSE 0
END ,subject,winner








