require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'validates existence of expected columns' do
    it { is_expected.to have_db_column :title}
    it { is_expected.to have_db_column :body}
    it { is_expected.to have_db_column :teaser}
    it { is_expected.to have_db_column :article_type}
    it { is_expected.to have_db_column :created_at}
    it { is_expected.to have_db_column :location}
  end
  
  describe 'validates attributes' do
    it { should validate_presence_of(:article_type)}
    it { should validate_presence_of(:title)}
    it { should validate_presence_of(:teaser)}
    it { should validate_presence_of(:body)}
    it { should validate_presence_of(:location)}
  end

  describe 'validate enum attribute' do
    it { should define_enum_for(:article_type).with_values([:experience, :story]) }
  end
end
