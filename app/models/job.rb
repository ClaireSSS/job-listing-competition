class Job < ApplicationRecord

  scope :published, -> { where(is_hidden: false) }
  has_many :resumes
  scope :recent, -> { order('created_at DESC') }
end
