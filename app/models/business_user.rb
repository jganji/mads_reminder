class BusinessUser < ActiveRecord::Base
  default_scope :order => 'business_name'
  validates :business_guid, :business_name, :business_contact, :presence => true
  validates :business_guid, :uniqueness => true
end
