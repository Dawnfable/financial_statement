class Statement < ApplicationRecord
  enum status: {pending: 0, completed: 1}
  validates_presence_of :date
  belongs_to :user

end
