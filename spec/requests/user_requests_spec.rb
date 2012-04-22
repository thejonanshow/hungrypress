require 'spec_helper'

describe "user registration" do
  let(:user) { Fabricate.build(:user) }

  describe "allows new users" do
    it "with valid email" do
      sign_up_as(user)
      page.should have_content("You have signed up successfully.")
    end
  end

  describe "disallows new users" do
    it "with invalid email" do
      user.email = 'foo'
      sign_up_as(user)
      page.should have_content("Email is invalid")
    end
  end
end
