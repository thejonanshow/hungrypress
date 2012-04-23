require 'spec_helper'

describe User do
  let(:user) { Fabricate.build(:user) }
  let(:admin_user) { Fabricate.build(:admin_user) }

  describe "registration" do
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

  describe "authorization" do
    it "disallows non-admin users from indexing users" do
      sign_up_as(user)
      visit users_path
      page.should have_content("You are not authorized to access this page.")
    end
  end
end
