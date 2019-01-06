# --- initial_page.rb
class InitialPage < SitePrism::Page
  include RSpec::Matchers

  def access_main_page(url_path)
    visit(Settings.get_url(url_path))
  end

  def verify_main_url(url_path)
    expect(URI.parse(current_url).to_s).to include(url_path)
  end
end
