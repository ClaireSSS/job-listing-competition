class Job < ApplicationRecord

  scope :published, -> { where(is_hidden: false) }
  has_many :resumes
  scope :recent, -> { order('created_at DESC') }

  def publish!
    self.is_hidden = false
    self.save
  end

  def hide!
    self.is_hidden = true
    self.save
  end
end
