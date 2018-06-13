class Statement < ApplicationRecord
  enum status: {pending: 0, completed: 1}
  validates_presence_of :date
  belongs_to :user

  extend FriendlyId
  friendly_id :user_date, use: [:slugged, :finders]

  def date_title
    date.strftime('%B-%Y')
  end

  def full_name
    user.first_name + '-' + user.last_name
  end

  def user_date
    if date != nil
      full_name + '_' + date_title
    end
  end
end
