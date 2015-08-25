require 'rails_helper'

RSpec.describe Idea, type: :model do
  let(:idea) { Idea.create(title: "Title", body: "Body", quality: "quality") }

  it 'is invalid without a title' do
    idea.title = nil
    expect(idea).to_not be_valid
  end

  it 'is invalid without a title' do
    idea.body = nil
    expect(idea).to_not be_valid
  end

  it 'is invalid without a title' do
    idea.quality = nil
    expect(idea).to_not be_valid
  end
end
