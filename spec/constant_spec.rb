require_relative '../lib/kappa-maki.rb'
require 'pry'

# valid constant
Cucumber::Features::ApplesAndOranges = 'ApplesAndOranges'
# invalid constant
applesOnly  = 'applesOnlyPlease'

describe 'Invalid Feature Constant Capitalization' do
  it 'has a feature name constant error' do
    expect{Cucumber::Features.const_defined?(applesOnly)}.to raise_error(NameError, "wrong constant name #{applesOnly}")
  end
end

describe 'Valid Feature Constant Capitalization' do
  it 'raises no error' do
    expect(Cucumber::Features.const_defined?('ApplesAndOranges')).to be true
  end
end
