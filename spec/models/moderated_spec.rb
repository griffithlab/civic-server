require 'rails_helper'

#Gene is arbitrary here, it could be any class using the Moderated concern
describe 'Moderated' do
  before(:each) do
    @gene = Fabricate(:gene)
    @user = Fabricate(:user)
  end

  it 'should add suggested changes and open changes relations' do
    relations = Gene.reflections
    expect(relations['suggested_changes']).to_not be_nil
    expect(relations['open_changes']).to_not be_nil
  end

  it 'should not allow empty suggested change sets' do
    expect { @gene.suggest_change!(@user, {}, {}) }.to raise_error(NoSuggestedChangesError)
  end

  it 'should create a suggested change object with proper associations' do
    @gene.name = 'new name'
    @gene.suggest_change!(@user, {}, {})

    expect(@gene.suggested_changes.size).to eq(1)
    expect(@gene.suggested_changes.first.user).to eq(@user)
  end

  it 'should revert the actual object to its original state' do
    original_name = @gene.name
    @gene.name = 'new name'
    @gene.suggest_change!(@user, {}, {})
    expect(@gene.name).to eq(original_name)
  end

  it 'should store the current and proposed values for each attribute changed' do
    data = {
      'description' => {
        'original' => @gene.description,
        'new' => 'new description'
      },
      'name' => {
        'original' => @gene.name,
        'new' => 'new name'
      }
    }

    @gene.name = data['name']['new']
    @gene.description = data['description']['new']
    change = @gene.suggest_change!(@user, {}, {})

    change.suggested_changes.each do |attr, (old_val, new_val)|
      expect(data[attr]['original']).to eq(old_val)
      expect(data[attr]['new']).to eq(new_val)
    end
  end
end
