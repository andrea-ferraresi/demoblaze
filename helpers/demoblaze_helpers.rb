


# HOMEPAGE HELPERS


  def categories_menu
    "#cat"
  end 

  def category_laptop_voice_menu
    "#itemc[onclick=\"byCat(\'notebook\')\"]"
  end 

  def sony_vaio_i5
    "a.hrefch[href=\"prod.html?idp_=8\"]"
  end

  def dell_i7_8gb
    "a.hrefch[href=\"prod.html?idp_=12\"]"
  end







# PRODUCT PAGE HELPERS

  def add_to_cart_button
    "a[onclick^=\"addToCart\"]"
  end


# GENERAL COMMON HELPERS


  def go_to_homepage
    "a.nav-link[href=\"index.html\"]"
  end

  def go_to_cart
    "#cartur"
  end


# CART HELPERS

  def cart_list
    "#tbodyid"
  end



  def dell_i7_8gb_Name
    "//*[contains(text(),'Dell i7 8gb')]"
  end


  def delete_dell_i7_8gb_from_cart
    "//*[contains(text(),'Dell')]/..//*[contains(text(),'Delete')]"
  end


  def place_order_button
    "//*[contains(text(),'Place Order')]"
  end


# PLACE ORDER FORM HELPERS


  def place_order_title_in_place_order_form
    "#orderModalLabel"
  end



  def purchase_order_button_in_place_order_form
    "button[onclick=\"purchaseOrder()\"]"
  end


  def name_locator_in_placeOrder_form
    "name"
  end

  
  def country_locator_in_place_order_form
    "country"
  end


  def city_locator_in_place_order_form
    "city"
  end


  def credit_locator_card_in_place_order_form
    "card"
  end



  def month_in_place_order_form
    "city"
  end


  def year_card_in_place_order_form
    "card"
  end



  def name_in_place_order_form
    "#name"
  end

  
  def country_in_place_order_form
    "#country"
  end


  def city_in_place_order_form
    "#city"
  end


  def credit_card_in_place_order_form
    "#card"
  end



# ORDER CONFIRMATION LIGHTBOX HELPERS


  def order_confirmation_information_lightbox
    "div.sweet-alert.showSweetAlert.visible"
  end

  def order_confirmation_information
    "p.lead.text-muted"
  end




p.lead.text-muted

