class MaterialComment < ApplicationRecord
  belongs_to :material
  belongs_to :user
end
