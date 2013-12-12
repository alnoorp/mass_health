-- What 3 towns have the highest population of citizens that are 65 years and older?
SELECT geography, senior_2005 FROM town_health_records
WHERE geography != 'Massachusetts Total' ORDER BY senior_2005 DESC LIMIT 3;

-- What 3 towns have the highest population of citizens that are 19 years and younger?
SELECT geography, teen_2005 FROM town_health_records
WHERE geography != 'Massachusetts Total' ORDER BY teen_2005 DESC LIMIT 3;

-- What 5 towns have the lowest per capita income?
SELECT geography, income_2000 FROM town_health_records
WHERE geography != 'Massachusetts Total' ORDER BY income_2000 LIMIT 5;

-- Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
SELECT geography, teen_births FROM town_health_records
WHERE geography != 'Boston'
AND geography != 'Massachusetts Total'
AND geography != 'Becket'
AND geography != 'Beverly'
ORDER BY teen_births DESC LIMIT 1;

-- Omitting Boston, what town has the highest number of infant mortalities?
SELECT geography, infant_deaths FROM town_health_records
WHERE geography != 'Boston'
AND geography != 'Massachusetts Total'
ORDER BY infant_deaths DESC LIMIT 1;
