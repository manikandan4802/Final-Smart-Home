class Invitation < ApplicationRecord
  belongs_to :agent
  belongs_to :lockcode
  belongs_to :property
end
