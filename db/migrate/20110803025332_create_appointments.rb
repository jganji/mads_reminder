class CreateAppointments < ActiveRecord::Migration
  def self.up
    #drop_table :appointments
    create_table :appointments do |t|
      t.string :business_guid
      t.string :customer_name
      t.string :customer_phone
      t.date :appointment_date
      t.datetime :appointment_time

      t.timestamps
    end
  end

  def self.down
    drop_table :appointments
  end
end
