class CreateBusinessUsers < ActiveRecord::Migration
  def self.up
    #drop_table :business_users
    create_table :business_users do |t|
      t.string :business_guid
      t.string :business_name
      t.string :business_contact
      t.string :business_email_id

      t.timestamps
    end
  end

  def self.down
    drop_table :business_users
  end
end
