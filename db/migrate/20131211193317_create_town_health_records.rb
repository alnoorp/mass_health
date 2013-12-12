class CreateTownHealthRecords < ActiveRecord::Migration
  def change
    create_table :town_health_records do |t|
      t.string :geography
      t.integer :total_pop
      t.integer :teen_2005
      t.integer :senior_2005
      t.integer :income_2000
      t.integer :num_poverty_2000
      t.float :percent_poverty_2000
      t.float :prenatal
      t.float :c_section
      t.integer :infant_deaths
      t.float :infant_mortality
      t.float :low_birthweight
      t.float :multiple_births
      t.float :public_prenatal
      t.float :teen_births

      t.timestamps
    end
  end
end
