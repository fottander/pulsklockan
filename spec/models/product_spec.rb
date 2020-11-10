require 'rails_helper'

RSpec.describe Product, type: :model do

  before(:all) do
    Brand.destroy_all
    create(:brand, name: 'Garmin', description: 'Garmin är ..', extra_info: 'Det är ett..', id: 199)
  end

  describe 'DB table' do
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :battery }
    it { is_expected.to have_db_column :weight }
    it { is_expected.to have_db_column :display }
    it { is_expected.to have_db_column :water_res }
    it { is_expected.to have_db_column :memory }
    it { is_expected.to have_db_column :gps }
    it { is_expected.to have_db_column :bluetooth }
    it { is_expected.to have_db_column :wi_fi }
    it { is_expected.to have_db_column :os_system }
    it { is_expected.to have_db_column :nfc }
    it { is_expected.to have_db_column :heart_rate }
    it { is_expected.to have_db_column :touch_screen }
    it { is_expected.to have_db_column :voice_control }
    it { is_expected.to have_db_column :phone_call }
    it { is_expected.to have_db_column :apps }
    it { is_expected.to have_db_column :sleep_tracking }
    it { is_expected.to have_db_column :store_1_name }
    it { is_expected.to have_db_column :store_1_link }
    it { is_expected.to have_db_column :store_1_price }
    it { is_expected.to have_db_column :store_2_name }
    it { is_expected.to have_db_column :store_2_link }
    it { is_expected.to have_db_column :store_2_price }
    it { is_expected.to have_db_column :store_3_name }
    it { is_expected.to have_db_column :store_3_link }
    it { is_expected.to have_db_column :store_3_price }
    it { is_expected.to have_db_column :active }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :name }
  end

  describe 'Associations' do
    it { is_expected.to belong_to :brand }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(create(:product, brand_id: 199)).to be_valid
    end
  end

  after(:all) do
    Brand.destroy_all
  end

end
