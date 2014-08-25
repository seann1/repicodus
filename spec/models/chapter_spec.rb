require 'spec_helper'

describe Chapter do
  it { should validate_presence_of :description }
  it { should validate_presence_of :number }
  it { should validate_presence_of :tome_id }
end
