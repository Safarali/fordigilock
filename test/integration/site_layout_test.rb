require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", 'https://github.com/Safarali/fordigilock'
    assert_select "title", full_title("Project")
  end
end
