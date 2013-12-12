# What 3 towns have the highest population of citizens that are 65 years and older?
TownHealthRecord.order("senior_2005 DESC").where("geography != 'Massachusetts Total'").limit(3)

# What 3 towns have the highest population of citizens that are 19 years and younger?
TownHealthRecord.order("teen_2005 DESC").where("geography != 'Massachusetts Total'").limit(3)

# What 5 towns have the lowest per capita income?
TownHealthRecord.order(:income_2000).where("geography != 'Massachusetts Total'").limit(5)

# Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
TownHealthRecord.order("teen_births DESC").where("geography != 'Massachusetts Total'
  AND geography != 'Boston' AND geography != 'Becket' AND geography != 'Beverly'").limit(1)

# Omitting Boston, what town has the highest number of infant mortalities?
TownHealthRecord.order("infant_deaths DESC").where("geography != 'Massachusetts Total'
  AND geography != 'Boston'").limit(1)
