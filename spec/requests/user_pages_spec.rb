require 'spec_helper'

describe "UserPages" do
	subject{ page }
	let(:base_title) {"Ruby on Rails Tutorial Sample App"}

	describe "signup page" do
		before {visit signup_path}

		it {should have_content('Sign up')}
		it {should have_title("#{base_title} | Sign up")}
	end

	describe "profile page" do
		before {visit user_pages(user)}

		it {should have_content(user.name)}
		it {should have_title(user.name)}
	end

  # describe "GET /user_pages" do
  #   it "works! (now write some real specs)" do
  #     # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
  #     get user_pages_index_path
  #     response.status.should be(200)
  #   end
  # end
end
