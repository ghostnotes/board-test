require 'spec_helper'
require 'rails_helper'

describe Job do

  describe '#new' do
    context '正常' do
      before do
        expect(Job.count).to eq 0
        Job.categories.each do |k, v|
          Job.create!(title: 'Test Job Title' + k.to_s, category: Job.categories[k])
        end
      end

      it do
        expect(Job.count).to eq Job.categories.length
        jobs = Job.limit(2)
        expect(jobs[0].in_house?).to eq true
        expect(jobs[1].entrusted?).to eq true
      end
    end

    context '存在しないカテゴリの場合' do
      it do
        expect{ Job.create!(category: 999) }.to raise_error(ArgumentError)
      end
    end
  end
end