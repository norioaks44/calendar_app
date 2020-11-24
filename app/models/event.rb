class Event < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :title
  belongs_to :meeting_time

  validates :title_id, numericality: { other_than: 1, message: 'Select' }
  validates :meeting_time_id, numericality: { other_than: 1, message: 'Select' }

end
