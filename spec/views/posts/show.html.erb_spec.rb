require 'rails_helper'

RSpec.describe "posts/show", type: :view do
  before(:each) do
    assign(:post, Post.create!(
      title: "Title",
      body: "MyText",
      user: nil,
      views: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
  end
end
