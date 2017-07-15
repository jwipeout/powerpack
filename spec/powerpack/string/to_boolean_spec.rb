require 'spec_helper'

describe 'String#to_boolean' do
  shared_examples 'string is either true or false' do |true_string, false_string|
    it 'returns TrueClass instance' do
      expect(true_string.to_boolean).to eq(true)
    end

    it 'returns FalseClass instance' do
      expect(false_string.to_boolean).to eq(false)
    end
  end

  it_behaves_like 'string is either true or false', 'true', 'false'

  it_behaves_like 'string is either true or false', '1', '0'

  it_behaves_like 'string is either true or false', 'yes', 'no'
end
