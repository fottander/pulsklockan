require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column(:price).of_type(:float) }
    it { is_expected.to have_db_column :description }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_presence_of :price }
  end

  describe 'Associations' do
    it { is_expected.to belong_to :brand }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(create(:category)).to be_valid
    end
  end
end
