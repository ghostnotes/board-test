require 'spec_helper'
require 'rails_helper'

describe Job do

  describe '' do
    context '' do
      before do
        expect(Job.count).to eq 0
        Job.create!(title: 'Test Job Title', category: Job.categories[:in_house])
      end

      it do
        job = Job.first
        puts job.to_json
        puts job.in_house?.to_s
        puts job.entrusted?.to_s
      end
    end
  end
end