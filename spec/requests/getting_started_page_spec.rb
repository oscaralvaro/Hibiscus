require "rspec"

describe "Getting started page" do
  before do
    login_integration
    visit '/get_started'
  end

  subject { page }

  it { should have_content('Getting started') }

  describe "with sample katas" do
    it { should have_link('easy kata 1 (test-driven-development)', href: Kata.find_by_id('string calculator')) }
    it { should have_link('easy kata 2 (others)', href: Kata.find_by_id('coin change')) }
    it { should have_link('easy kata 3 (test-driven-development)', href: Kata.find_by_id('prime factors')) }
  end
end