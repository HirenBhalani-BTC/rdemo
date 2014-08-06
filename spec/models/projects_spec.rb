require 'spec_helper'

describe Projects do
	before do
		@project=Project.new
	end

	subject { @user}

  	describe "When name is not present" do
  		before { @project.name=""}
  		it{ should_not be_valid}
  	end

  	

  	describe "When description is not present" do
  		before { @project.description=""}
  		it{ should_not be_valid}
  	end

  	describe "When billing type is not present" do
  		before { @project.billing_type=""}
  		it{ should_not be_valid}
  	end
  	describe "when name is too long" do
    before { @user.name = "a" * 51 }
    it { should_not be_valid }
  end
end
