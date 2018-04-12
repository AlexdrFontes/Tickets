class Event < ApplicationRecord
  belongs_to :venue
  has_many :tickets

  validates_presence_of :name, :start_at, :end_at
  validate :start_at_bigger_than_today, :end_at_bigger_than_start_at

  has_attached_file :logo
  validates_attachment_content_type :logo,
                                    content_type: %r{\Aimage\/.*\Z}

  private

  def start_at_bigger_than_today
    return unless start_at.present?
    errors.add :start_at, "can't be in the past" if start_at < Time.zone.now
  end

  def end_at_bigger_than_start_at
    return unless start_at.present? && end_at.present?
    errors.add :end_at, "must be bigger than start at" if end_at < start_at
  end
end
