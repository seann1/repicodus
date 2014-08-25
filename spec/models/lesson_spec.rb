require 'spec_helper'

describe Lesson do
  it { should validate_presence_of :description }
  it { should validate_presence_of :number }
  it { should validate_presence_of :chapter_id }
  it { should validate_presence_of :content }
  it { should belong_to :chapter }
end
