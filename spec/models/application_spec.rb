require "rails_helper"

RSpec.describe Application, type: :model do
  describe "relationships" do
    it { should have_many :application_pets}
    it { should have_many(:pets).through(:application_pets)}
    it { should validate_presence_of(:name)}
    it { should validate_presence_of(:address)}
    it { should validate_presence_of(:city)}
    it { should validate_presence_of(:state)}
    it { should validate_presence_of(:zip_code)}
    # it { is_expected.to callback(Application).before(:validation).on([:create]) }
  end
end
