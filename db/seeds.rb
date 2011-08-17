# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

appointments = Appointment.create([
  {:business_guid => 'guid1', :customer_name => 'Karunakar', 
  :customer_phone => '1234567891', :appointment_date => '08/31/2011' , :appointment_time => '13:10'},
  {:business_guid => 'guid2', :customer_name => 'Mahesh', 
  :customer_phone => '1234567892', :appointment_date => '08/30/2011' , :appointment_time => '14:10'},
  {:business_guid => 'guid3', :customer_name => 'Jithu', 
  :customer_phone => '1234567893', :appointment_date => '08/29/2011' , :appointment_time => '15:10'},
  {:business_guid => 'guid4', :customer_name => 'Madhu', 
  :customer_phone => '1234567894', :appointment_date => '08/28/2011' , :appointment_time => '16:10'},
  ])
