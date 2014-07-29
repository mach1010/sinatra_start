require 'spec_helper'

describe "App" do
  it 'fails on true == false' do
    expect(true).to be false
  end
end

describe "Sinatra App" do
  it "should respond to GET" do
    get '/'
    last_response.should be_ok
    last_response.body.should match(/Welcome home to the index page/)
  end
end
