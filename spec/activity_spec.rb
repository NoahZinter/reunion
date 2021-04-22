require './lib/activity'

describe Activity do
  describe '#initialize' do
    it 'exists' do
      activity = Activity.new("Brunch")
      expect(activity).is_a? Activity
    end

    it 'has a name' do
      activity = Activity.new("Brunch")
      expect(activity.name).to eq 'Brunch'
    end
  end
end