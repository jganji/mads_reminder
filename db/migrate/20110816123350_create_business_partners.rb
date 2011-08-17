class CreateBusinessPartners < ActiveRecord::Migration
  def self.up
    create_table :business_partners do |t|
      t.string :BusinessPartnerGuid
      t.string :BusinessName
      t.string :BusinessContact
      t.string :BusinessEmailId

      t.timestamps
    end
  end

  def self.down
    drop_table :business_partners
  end
end
