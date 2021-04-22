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

    it 'starts with an empty hash of participants' do
      activity = Activity.new("Brunch")
      expect(activity.participants).to eq ({})
    end
  end
end