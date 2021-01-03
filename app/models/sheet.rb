class Sheet < ApplicationRecord
  belongs_to :character
  belongs_to :stat
end
