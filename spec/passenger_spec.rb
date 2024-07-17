require './lib/passenger'
require 'rspec'

RSpec.configure do |config|
    config.formatter = :documentation
    end

RSpec.describe '#passenger' do
    before(:each)do
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    end
    it 'exists' do
        expect(@charlie).to be_an_instance_of(Passenger)
        expect(@taylor).to be_an_instance_of(Passenger)
    end

    it 'has passenger info' do
        expect(@charlie.name).to eq("Charlie")
        expect(@charlie.age).to eq(18)
        expect(@taylor.name).to eq("Taylor")
        expect(@taylor.age).to eq(12)
    end

    it 'can be an adult' do
        @charlie.adult?
        @taylor.adult?
        expect(@charlie.adult?).to eq true
        expect(@taylor.adult?).to eq false
    end
end