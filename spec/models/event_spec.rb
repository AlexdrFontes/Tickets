require 'rails_helper'

RSpec.describe Event, type: :model do
  subject { build(:event) }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a venue' do
    subject.venue = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a start date' do
    subject.start_at = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without an end date' do
    subject.end_at = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid if start date is less than today' do
    subject.start_at = Time.zone.yesterday
    expect(subject).to_not be_valid
  end

  it 'is not valid if end date is less than start at' do
    subject.start_at = Time.zone.now + 5.days
    subject.end_at = Time.zone.now + 4.days
    expect(subject).to_not be_valid
  end

  it 'is valid with an uploaded image' do
    subject.logo = fixture_file_upload(
      Rails.root.join('spec/support/media/blko.png'),
      'image/png'
    )
    expect(subject).to be_valid
  end

  it 'is not valid without a zip file' do
    subject.logo = fixture_file_upload(
      Rails.root.join('spec/support/media/blko.zip'),
      'application/zip'
    )
    expect(subject).to_not be_valid
  end
end
