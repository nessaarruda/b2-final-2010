require 'rails_helper'

RSpec.describe Competition, type: :model do
  describe 'relationships' do
    it { should have_many :championships}
    it { should have_many(:teams).through(:championships)}
  end 
end
