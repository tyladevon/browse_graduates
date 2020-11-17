class Graduate < ApplicationRecord
  validates_presence_of :first_name,
                        :last_name,
                        :city,
                        :state,
                        :title,
                        :company,
                        :software
end
