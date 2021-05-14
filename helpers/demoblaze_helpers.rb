


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






  def does_page_have_redirect_lightbox?
    page.has_selector?('#redirect_source')
  end

  def close_redirect_lightbox
    'div.oeClose'
  end

  def title
    "//title[starts-with(text(),'trivago: search')]"
  end

  def input_search_field
    "js_querystring"
  end 

  def search_field
    "#js_querystring"
  end 

  def search_suggestions
    'ul.js-ssg-suggestions.ssg-suggestions li'
  end

  def close_checkin_calendar
    'div.js_df_overlay.df_overlay.checkin span.icon-ic.icon-icn__ip-close_s'
  end

  def does_page_have_redirect_message?
    page.has_selector?('div.hard_soft_notification_message')
  end

  def redirect_message_url
    'div.hard_soft_notification_message a'
  end

  def hotel_list
    '#js_itemlist>li'
  end

  def hotel_name_list
    '#js_itemlist>li span.item_name'
  end
  
  def hotel__all_available_deals__view_button
    '#js_itemlist>li li[title="View all available deals"]>span.label'
  end

  def hotel__all_available_deals__deal_price_list
    'div.slo-base div.deals_wrp.js_deals_wrp button.btn.btn_fo.btn_deal>span.arrow'
  end


  def deal_with_redirect_message_or_lightbox
    if ( does_page_have_redirect_lightbox? )
        puts "does_page_have_redirect_lightbox?\n"
        find(:css, close_redirect_lightbox).click

    elsif ( does_page_have_redirect_message? )
        puts "does_page_have_redirect_message?\n"
        find(:css, redirect_message_url).click
        
    else 
        # puts "no redirect\n"

    end
  end