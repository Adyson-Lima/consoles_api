class Console < ApplicationRecord
  validates :name, :manufacturer, presence: true
end
