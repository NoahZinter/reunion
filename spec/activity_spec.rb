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

  describe '#add_participant' do
    it 'adds participants to hash with name as key and money as value' do
      activity = Activity.new("Brunch")
      activity.add_participant('Maria', 20)

      expected = {'Maria' => 20}
      expect(activity.participants).to eq expected
    end
  end
end