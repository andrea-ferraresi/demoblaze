require_relative '../../spec_helper'

feature "purchase a laptop" do

  background do
    visit ENV['demoblaze_url']

  end


    scenario 'purchase a laptop' do
      #binding.pry
 
      expect(page).to have_selector( categories_menu )
      expect(page).to have_selector( category_laptop_voice_menu )
      find(:css, category_laptop_voice_menu).click
      find(:css, sony_vaio_i5).click

      expect(page).to have_selector( add_to_cart_button )
      find(:css, add_to_cart_button).click

      wait = Selenium::WebDriver::Wait.new ignore: Selenium::WebDriver::Error::NoAlertPresentError
      alert = wait.until { page.driver.browser.switch_to.alert }
      page.driver.browser.switch_to().alert().accept();




      find(:css, go_to_homepage).click


      expect(page).to have_selector( categories_menu )
      expect(page).to have_selector( category_laptop_voice_menu )
      find(:css, category_laptop_voice_menu).click
      find(:css, dell_i7_8gb).click

      expect(page).to have_selector( add_to_cart_button )
      find(:css, add_to_cart_button).click


      wait = Selenium::WebDriver::Wait.new ignore: Selenium::WebDriver::Error::NoAlertPresentError
      alert = wait.until { page.driver.browser.switch_to.alert }
      page.driver.browser.switch_to().alert().accept();


      find(:css, go_to_cart).click

      expect(page).to have_selector( cart_list )



      find(:xpath,delete_dell_i7_8gb_from_cart).click

binding.pry

      find(:xpath,place_order_button).click

      binding.pry



      #window = page.driver.browser.window_handles

      #page.driver.browser.switch_to.window(window.last)
      #purchaseForm_window = page.driver.browser.window_handles.last

      purchaseForm_window = windows.last

     binding.pry



      page.within_window purchaseForm_window do      

        expect(page).to have_selector( place_order_title_in_place_order_form )

        expect(page).to have_selector( purchase_order_button_in_place_order_form )

       binding.pry

        find(:css, name_in_place_order_form).click

    #    binding.pry

        fill_in name_locator_in_placeOrder_form, :with => "Pirandello"

     #   binding.pry

        fill_in country_locator_in_place_order_form, :with => "Italy"

    #    binding.pry

        fill_in city_locator_in_place_order_form, :with => "Agrigento"

        fill_in credit_locator_card_in_place_order_form, :with => "123456778"

        fill_in month_in_place_order_form, :with => "12"

        fill_in year_in_place_order_form, :with => "2023"

        find(:css, purchase_order_button_in_place_order_form).click
#
      end



      orderConfirmation_window = windows.last

      page.within_window purchaseForm_window do

        expect(page).to have_selector( order_confirmation_information_lightbox )

        expect(page).to have_selector( order_confirmation_information)






      end




#binding.pry 


 #       window = page.driver.browser.window_handles
    
 # if window.size > 1 
   # page.driver.browser.switch_to.window(window.last)
 #   page.driver.browser.close
  #  page.driver.browser.switch_to.window(window.first)       partner_website = page.driver.browser.window_handles.last 

  #   page.within_window partner_website do
     # end




 #     page.driver.browser.switch_to().window_handles

  #    place_order_window = page.window_opened_by( find(:xpath,place_order_button).click )

  #    within_window place_order_window do
    #    expect(page).to have_selector( place_order_title_in_place_order_form )
#
   #     expect(page).to have_selector( purchase_order_button_in_place_order_form )

  #      fill_in name_in_place_order_form, :with => "Pirandello"

  #      fill_in country_in_place_order_form, :with => "Italy"

     #   fill_in city_in_place_order_form, :with => "Agrigento"
#
  #      fill_in credit_card_in_place_order_form, :with => "123456778"
 #     #end







  



   

      
      

    end

end
