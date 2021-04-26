class Profile < SitePrism::Page
  set_url "/profile"

  element :form_page, '#app'
  element :btn_logout, '#submit'
  element :grid_data, 'div[class="ReactTable -striped -highlight"]'

  def wait_page_load
    wait_until_form_page_visible
    wait_until_btn_logout_visible
    wait_until_grid_data_visible
  end
end
