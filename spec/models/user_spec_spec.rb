require 'rails_helper'

describe User do
  it { should validate_presence_of :first_name }
  
  before :each do
    @user = create(:user)
  end
    
  describe 'full name' do
    it 'returns user full name' do
      expect(@user.full_name).to eq @user.first_name + ' ' + @user.last_name
    end
  end

  describe 'initials' do
      it 'retutns user initials' do
        expect(@user.initials).to eq 'JS'
    end
  end
end