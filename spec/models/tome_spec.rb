require 'spec_helper'

describe Tome do
  it { should validate_presence_of :description }
end
