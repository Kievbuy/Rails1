require 'spec_helper'

describe Article do
    
    describe 'validations' do
        it { should validates_presence_of :title }
        it { should validates_presence_of :text }
    end
    
    describe 'associations' do
        it { should have_many :comments }
    end
    
end