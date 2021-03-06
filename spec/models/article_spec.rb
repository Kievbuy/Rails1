require 'spec_helper'

describe Article do
    
    describe 'validations' do
        it { should validates_presence_of :title }
        it { should validates_presence_of :text }
    end
    
    describe 'associations' do
        it { should have_many :comments }
    end
    
    describe '#subject' do
        it 'returns the article title' do
            # создаем объект article хитрым способом
            aticle = create(:article, title: 'Lorem Ipsum')
            # assert, проверка
            expect(article.subject).to eq 'Lorem Ipsum'
        end
    end
end