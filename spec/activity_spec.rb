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

  describe '#total_cost' do
    it 'adds the total money contributions of participants' do
      activity = Activity.new("Brunch")
      activity.add_participant('Maria', 20)
      activity.add_participant("Luther", 40)

      expect(activity.total_cost).to eq 60
    end
  end

  describe '#split' do
    it 'returns the total cost as evenly divided among participants' do
      activity = Activity.new("Brunch")
      activity.add_participant('Maria', 20)
      activity.add_participant("Luther", 40)

      expect(activity.split).to eq 30
    end
  end

  describe '#owed' do
    it 'returns a hash of what each participant owes or is owed' do
      activity = Activity.new("Brunch")
      activity.add_participant('Maria', 20)
      activity.add_participant("Luther", 40)

      expect(activity.owed).to eq({'Maria' => 10, 'Luther' => -10})
    end
  end
end
