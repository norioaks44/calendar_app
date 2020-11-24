class Event < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :title
  # belongs_to :time
  # def start_time
  #   self.date
  # end
end
