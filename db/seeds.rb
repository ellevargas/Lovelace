# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

  CSV.foreach ('csvs/adies.csv') do |csv_obj|
    Adie.create(cohort: csv_obj[1], pref_pronouns: csv_obj[2], first_name: csv_obj[3], last_name: csv_obj[4], email: csv_obj[5], twitter_handle: csv_obj[12], linkedin: csv_obj[13], github_username: csv_obj[14], internship_company: csv_obj[19], adie_image: csv_obj[23])
  end

  CSV.foreach ('csvs/companies.csv') do |csv_obj|
    Company.create(company_id: csv_obj[0], company_name: csv_obj[1], address: csv_obj[2], city: csv_obj[3], state: csv_obj[4], zip_code: csv_obj[5], business_field: csv_obj[6], website: csv_obj[7], logo: csv_obj[8])
  end

  # BRUH. MAKE HEADERS A REQUIREMENT AND THEN TRANSLATE THE HEADERS INTO THESE OBJECTS FOR EASY CALL THROUGHOUT THE APPLICATION. STRONG PARAMS FTW.
