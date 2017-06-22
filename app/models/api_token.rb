class ApiToken < ApplicationRecord
  STATUSES = {
    active: 1,
    inactive: 2
  }
end
