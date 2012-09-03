require 'spec_helper'

describe User do

  before do
    @user = User.new(username: "Example User", firstname: "Felix", surname: "Muster" ,email: "user@example.com", 
                     password: "foobar", password_confirmation: "foobar")
  end

  it { should respond_to(:username) }
  it { should respond_to(:email) }
  it { should respond_to(:password_digest) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:remember_token) }
  it { should respond_to(:admin) }
  it { should respond_to(:authenticate) }

  it { should be_valid }
  it { should_not be_admin }

end