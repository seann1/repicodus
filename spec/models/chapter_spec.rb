require 'spec_helper'

describe Chapter do
  it { should validate_presence_of :description }
end
