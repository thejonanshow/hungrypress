module UserHelper
  def sign_up_as(user)
    visit new_user_registration_path
    fill_in 'user_email', :with => user.email
    fill_in 'user_password',
      :with => Fabricate.attributes_for(:user)[:password]
    fill_in 'user_password_confirmation',
      :with => Fabricate.attributes_for(:user)[:password]
    click_button 'Sign up'
  end

  def sign_in_as(user)
    visit new_user_session_path
    fill_in 'user_email', :with => user.email
    fill_in 'user_password',
      :with => Fabricate.attributes_for(:user)[:password]
    click_button 'Sign in'
  end
end
