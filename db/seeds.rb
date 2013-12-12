# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'
require 'pry'
file_name = Rails.root + "db/data/mass_chip_data2.csv"

CSV.foreach(file_name, headers: true) do |row|
  data = { geography: row["Geography"],
    total_pop: row["total pop, year 2005"].gsub!(',','').to_i,
    teen_2005: row["age 0-19, year 2005"].gsub!(',','').to_i,
    senior_2005: row["age 65+, year 2005"].gsub!(',','').to_i,
    income_2000: row["Per Capita Income, year 2000"].gsub!(',','').gsub!('$','').to_i,
    num_poverty_2000: row["Persons Living Below 200% Poverty, year 2000 "].gsub!(',','').to_i,
    percent_poverty_2000: row["% all Persons Living Below 200% Poverty Level, year 2000"].to_f,
    prenatal: row["% adequacy prenatal care (kotelchuck)"].to_f,
    c_section: row["% C-section deliveries, 2005-2008"].to_f,
    infant_deaths: row["Number of infant deaths, 2005-2008"].to_i,
    infant_mortality: row["Infant mortality rate (deaths per 1000 live births), 2005-2008"].to_f,
    low_birthweight: row["% low birthweight 2005-2008"].to_f,
    multiple_births: row["% multiple births, 2005-2008"].to_f,
    public_prenatal: row["% publicly financed prenatal care, 2005-2008"].to_f,
    teen_births: row["% teen births, 2005-2008"].to_f
  }
  TownHealthRecord.create(data) if !TownHealthRecord.exists?(data)
end














