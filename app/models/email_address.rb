class EmailAddress < ActiveRecord::Base
  validates :address, :person_id, presence: true
end
