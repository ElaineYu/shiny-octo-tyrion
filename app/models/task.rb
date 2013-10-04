require_relative '../../config/application'

class Task < ActiveRecord::Base
  validates :description, :list_id, presence: true
  belongs_to :list
end
