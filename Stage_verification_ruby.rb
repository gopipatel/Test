require "json"
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

describe "StageVerificationRuby" do

  before(:each) do
    @driver = Selenium::WebDriver.for :firefox
    @base_url = "https://preprod.store.verizonwireless.com/"
    @accept_next_alert = true
    @driver.manage.timeouts.implicit_wait = 30
    @verification_errors = []
  end
  
  after(:each) do
    @driver.quit
    @verification_errors.should == []
  end
  
  it "test_stage_verification_ruby" do
    @driver.get(@base_url + "/store/_default/phones")
    verify { (@driver.find_element(:link, "Apple® iPad® Air 128GB Silver").text).should == "Apple® iPad® Air 128GB Silver" }
    verify { (@driver.find_element(:link, "Apple® iPad® Air 128GB Space Gray").text).should == "Apple® iPad® Air 128GB Space Gray" }
    verify { (@driver.find_element(:link, "Apple®iPad® Air 16GB Silver").text).should == "Apple®iPad® Air 16GB Silver" }
    verify { (@driver.find_element(:link, "Apple® iPad® Air 16GB Space Gray").text).should == "Apple® iPad® Air 16GB Space Gray" }
    verify { (@driver.find_element(:link, "Apple® iPad® Air 32GB Silver").text).should == "Apple® iPad® Air 32GB Silver" }
    verify { (@driver.find_element(:link, "Apple® iPad® Air 32GB Space Gray").text).should == "Apple® iPad® Air 32GB Space Gray" }
    verify { (@driver.find_element(:link, "Apple® iPad® Air 64GB Silver").text).should == "Apple® iPad® Air 64GB Silver" }
    verify { (@driver.find_element(:link, "Apple® iPad® Air 64GB Space Gray").text).should == "Apple® iPad® Air 64GB Space Gray" }
    verify { (@driver.find_element(:link, "Apple® iPad® Mini 16GB in Space Gray").text).should == "Apple® iPad® Mini 16GB in Space Gray" }
    verify { (@driver.find_element(:link, "Apple® iPad® Mini 16GB in White").text).should == "Apple® iPad® Mini 16GB in White" }
    verify { (@driver.find_element(:link, "Apple® iPad® Mini with Retina Display 128GB in Silver").text).should == "Apple® iPad® Mini with Retina Display 128GB in Silver" }
    verify { (@driver.find_element(:link, "Apple® iPad® Mini with Retina Display 128GB in Space Gray").text).should == "Apple® iPad® Mini with Retina Display 128GB in Space Gray" }
    verify { (@driver.find_element(:link, "Apple® iPad® Mini with Retina Display 16GB in Silver").text).should == "Apple® iPad® Mini with Retina Display 16GB in Silver" }
    verify { (@driver.find_element(:link, "Apple® iPad® Mini with Retina Display 16GB in Space Gray").text).should == "Apple® iPad® Mini with Retina Display 16GB in Space Gray" }
    verify { (@driver.find_element(:link, "Apple® iPad® Mini with Retina Display 32GB in Silver").text).should == "Apple® iPad® Mini with Retina Display 32GB in Silver" }
    verify { (@driver.find_element(:link, "Apple® iPad® Mini with Retina Display 32GB in Space Gray").text).should == "Apple® iPad® Mini with Retina Display 32GB in Space Gray" }
    verify { (@driver.find_element(:link, "Apple® iPad® Mini with Retina Display 64GB in Silver").text).should == "Apple® iPad® Mini with Retina Display 64GB in Silver" }
    verify { (@driver.find_element(:link, "Apple® iPad® Mini with Retina Display 64GB in Silver").text).should == "Apple® iPad® Mini with Retina Display 64GB in Silver" }
    verify { (@driver.find_element(:link, "Apple® iPad® Mini with Retina Display 64GB in Space Gray").text).should == "Apple® iPad® Mini with Retina Display 64GB in Space Gray" }
    verify { (@driver.find_element(:link, "Apple® iPad® with Retina Display 16GB in Black").text).should == "Apple® iPad® with Retina Display 16GB in Black" }
    verify { (@driver.find_element(:link, "Apple® iPad® with Retina Display 16GB in White").text).should == "Apple® iPad® with Retina Display 16GB in White" }
    verify { (@driver.find_element(:link, "Apple iPhone 5c 16GB in Blue").text).should == "Apple iPhone 5c 16GB in Blue" }
    verify { (@driver.find_element(:link, "Apple iPhone 5c 16GB in Pink").text).should == "Apple iPhone 5c 16GB in Pink" }
    verify { (@driver.find_element(:link, "Apple iPhone 5c 16GB in White").text).should == "Apple iPhone 5c 16GB in White" }
    verify { (@driver.find_element(:link, "Apple iPhone 5c 16GB in Yellow").text).should == "Apple iPhone 5c 16GB in Yellow" }
    verify { (@driver.find_element(:link, "Apple iPhone 5c 32GB in Blue").text).should == "Apple iPhone 5c 32GB in Blue" }
    verify { (@driver.find_element(:link, "Apple iPhone 5c 32GB in Green").text).should == "Apple iPhone 5c 32GB in Green" }
    verify { (@driver.find_element(:link, "Apple iPhone 5c 32GB in Pink").text).should == "Apple iPhone 5c 32GB in Pink" }
    verify { (@driver.find_element(:link, "Apple iPhone 5c 32GB in Yellow").text).should == "Apple iPhone 5c 32GB in Yellow" }
    verify { (@driver.find_element(:link, "Apple® iPhone® 5s 16GB in Gold").text).should == "Apple® iPhone® 5s 16GB in Gold" }
    verify { (@driver.find_element(:link, "Apple iPhone 5s 16GB in Silver").text).should == "Apple iPhone 5s 16GB in Silver" }
    verify { (@driver.find_element(:link, "Apple® iPhone® 5s 16GB in Space Gray").text).should == "Apple® iPhone® 5s 16GB in Space Gray" }
    verify { (@driver.find_element(:link, "Apple® iPhone® 5s 32GB in Gold").text).should == "Apple® iPhone® 5s 32GB in Gold" }
    verify { (@driver.find_element(:link, "Apple® iPhone® 5s 32GB in Silver").text).should == "Apple® iPhone® 5s 32GB in Silver" }
    verify { (@driver.find_element(:link, "Apple® iPhone® 5s 32GB in Space Gray").text).should == "Apple® iPhone® 5s 32GB in Space Gray" }
    verify { (@driver.find_element(:link, "Apple iPhone 5s 64GB in Gold").text).should == "Apple iPhone 5s 64GB in Gold" }
    verify { (@driver.find_element(:link, "Apple® iPhone® 5s 64GB in Silver").text).should == "Apple® iPhone® 5s 64GB in Silver" }
    verify { (@driver.find_element(:link, "Apple® iPhone® 5s 64GB in Space Gray").text).should == "Apple® iPhone® 5s 64GB in Space Gray" }
    verify { (@driver.find_element(:link, "BlackBerry® Bold™ 9930").text).should == "BlackBerry® Bold™ 9930" }
    verify { (@driver.find_element(:link, "BlackBerry® Bold™ 9930 without camera").text).should == "BlackBerry® Bold™ 9930 without camera" }
    verify { (@driver.find_element(:link, "BlackBerry® Bold™ 9930 without camera").text).should == "BlackBerry® Bold™ 9930 without camera" }
    verify { (@driver.find_element(:link, "BlackBerry® Q10 in Black").text).should == "BlackBerry® Q10 in Black" }
    verify { (@driver.find_element(:link, "BlackBerry® Q10 in White").text).should == "BlackBerry® Q10 in White" }
    verify { (@driver.find_element(:link, "BlackBerry® Z10 in Black").text).should == "BlackBerry® Z10 in Black" }
    verify { (@driver.find_element(:link, "BlackBerry® Z10 in White").text).should == "BlackBerry® Z10 in White" }
    verify { (@driver.find_element(:link, "BlackBerry® Z30").text).should == "BlackBerry® Z30" }
    verify { (@driver.find_element(:xpath, "//html/body/div[2]/div[3]/div/div[6]/div[45]/h3/a").text).should == "CASIO G'zOne Commando® 4G LTE" }
    verify { (@driver.find_element(:link, "Nexus 7 from Google").text).should == "Nexus 7 from Google" }
    verify { (@driver.find_element(:link, "HTC One®").text).should == "HTC One®" }
    verify { (@driver.find_element(:link, "HTC One Max®").text).should == "HTC One Max®" }
    verify { (@driver.find_element(:link, "All New HTC One (M8) In Glacial Silver").text).should == "All New HTC One (M8) In Glacial Silver" }
    verify { (@driver.find_element(:link, "All New HTC One (M8) In Metal Gray").text).should == "All New HTC One (M8) In Metal Gray" }
    verify { (@driver.find_element(:link, "Windows Phone 8X by HTC in Black").text).should == "Windows Phone 8X by HTC in Black" }
    verify { (@driver.find_element(:link, "Windows Phone 8X by HTC in Blue").text).should == "Windows Phone 8X by HTC in Blue" }
    verify { (@driver.find_element(:link, "Kyocera Hydro ELITE").text).should == "Kyocera Hydro ELITE" }
    verify { (@driver.find_element(:link, "LG Cosmos™ 3").text).should == "LG Cosmos™ 3" }
    verify { (@driver.find_element(:link, "LG Enact").text).should == "LG Enact" }
    verify { (@driver.find_element(:link, "LG Exalt").text).should == "LG Exalt" }
    verify { (@driver.find_element(:link, "LG Extravert").text).should == "LG Extravert" }
    verify { (@driver.find_element(:link, "LG G Pad 8.3 LTE").text).should == "LG G Pad 8.3 LTE" }
    verify { (@driver.find_element(:link, "LG G2™").text).should == "LG G2™" }
    verify { (@driver.find_element(:link, "LG G2™ in White").text).should == "LG G2™ in White" }
    verify { (@driver.find_element(:link, "Lucid 3 by LG").text).should == "Lucid 3 by LG" }
    verify { (@driver.find_element(:link, "LG Revere® 2").text).should == "LG Revere® 2" }
    verify { (@driver.find_element(:link, "Motorola DROID MAXX 16GB Black").text).should == "Motorola DROID MAXX 16GB Black" }
    verify { (@driver.find_element(:link, "Motorola DROID MAXX 16GB Red").text).should == "Motorola DROID MAXX 16GB Red" }
    verify { (@driver.find_element(:link, "DROID MINI by MOTOROLA").text).should == "DROID MINI by MOTOROLA" }
    verify { (@driver.find_element(:link, "DROID MINI by MOTOROLA in Red").text).should == "DROID MINI by MOTOROLA in Red" }
    verify { (@driver.find_element(:link, "DROID MINI by MOTOROLA in White").text).should == "DROID MINI by MOTOROLA in White" }
    verify { (@driver.find_element(:link, "DROID RAZR M by MOTOROLA in Black").text).should == "DROID RAZR M by MOTOROLA in Black" }
    verify { (@driver.find_element(:link, "DROID RAZR M by MOTOROLA in White").text).should == "DROID RAZR M by MOTOROLA in White" }
    verify { (@driver.find_element(:link, "DROID ULTRA by MOTOROLA in Black").text).should == "DROID ULTRA by MOTOROLA in Black" }
    verify { (@driver.find_element(:link, "DROID XYBOARD 10.1 by MOTOROLA 16GB (Certified Pre-Owned)").text).should == "DROID XYBOARD 10.1 by MOTOROLA 16GB (Certified Pre-Owned)" }
    verify { (@driver.find_element(:link, "Moto X by MOTOROLA in Black").text).should == "Moto X by MOTOROLA in Black" }
    verify { (@driver.find_element(:link, "Moto X by MOTOROLA in White").text).should == "Moto X by MOTOROLA in White" }
    verify { (@driver.find_element(:link, "Nokia Lumia 2520 in Black").text).should == "Nokia Lumia 2520 in Black" }
    verify { (@driver.find_element(:link, "Nokia Lumia 2520 in Red").text).should == "Nokia Lumia 2520 in Red" }
    verify { (@driver.find_element(:link, "Nokia Lumia 928 in Black").text).should == "Nokia Lumia 928 in Black" }
    verify { (@driver.find_element(:link, "Nokia Lumia 928 in White").text).should == "Nokia Lumia 928 in White" }
    verify { (@driver.find_element(:link, "Nokia Lumia Icon in Black").text).should == "Nokia Lumia Icon in Black" }
    verify { (@driver.find_element(:link, "Nokia Lumia Icon in White").text).should == "Nokia Lumia Icon in White" }
    verify { (@driver.find_element(:link, "Pantech UML290 LTE Global USB Modem").text).should == "Pantech UML290 LTE Global USB Modem" }
    verify { (@driver.find_element(:link, "Samsung ATIV SE").text).should == "Samsung ATIV SE" }
    verify { (@driver.find_element(:link, "Samsung Convoy™ 2 (Certified Pre-Owned)").text).should == "Samsung Convoy™ 2 (Certified Pre-Owned)" }
    verify { (@driver.find_element(:link, "Samsung Convoy 3").text).should == "Samsung Convoy 3" }
    verify { (@driver.find_element(:link, "Samsung Galaxy Note 10.1 2014 Edition").text).should == "Samsung Galaxy Note 10.1 2014 Edition" }
    verify { (@driver.find_element(:link, "Samsung Galaxy Note® 3 in Black").text).should == "Samsung Galaxy Note® 3 in Black" }
    verify { (@driver.find_element(:link, "Samsung Galaxy Note® 3 in White").text).should == "Samsung Galaxy Note® 3 in White" }
    verify { (@driver.find_element(:link, "Samsung Galaxy S4 16GB in Black Mist").text).should == "Samsung Galaxy S4 16GB in Black Mist" }
    verify { (@driver.find_element(:link, "Samsung Galaxy S4 16GB in White Frost").text).should == "Samsung Galaxy S4 16GB in White Frost" }
    verify { (@driver.find_element(:link, "Samsung Galaxy S4 32GB in Black Mist").text).should == "Samsung Galaxy S4 32GB in Black Mist" }
    verify { (@driver.find_element(:link, "Samsung Galaxy S® 4 Mini").text).should == "Samsung Galaxy S® 4 Mini" }
    verify { (@driver.find_element(:link, "Samsung Galaxy S5 16GB Charcoal Black").text).should == "Samsung Galaxy S5 16GB Charcoal Black" }
    verify { (@driver.find_element(:link, "Samsung Galaxy S5 16GB Shimmery White").text).should == "Samsung Galaxy S5 16GB Shimmery White" }
    verify { (@driver.find_element(:link, "Samsung Galaxy S® III Mini").text).should == "Samsung Galaxy S® III Mini" }
    verify { (@driver.find_element(:link, "Samsung Galaxy® Tab 2 (10.1) 8GB").text).should == "Samsung Galaxy® Tab 2 (10.1) 8GB" }
    verify { (@driver.find_element(:link, "Samsung Galaxy Tab® 2.0 (7.0)").text).should == "Samsung Galaxy Tab® 2.0 (7.0)" }
    verify { (@driver.find_element(:link, "Samsung Galaxy Stellar").text).should == "Samsung Galaxy Stellar" }
    verify { (@driver.find_element(:link, "Samsung Gusto™ 2 in Snow Silver").text).should == "Samsung Gusto™ 2 in Snow Silver" }
    verify { (@driver.find_element(:link, "SureResponse").text).should == "SureResponse" }
    verify { (@driver.find_element(:link, "Home Phone Connect").text).should == "Home Phone Connect" }
    verify { (@driver.find_element(:link, "4G LTE Broadband Router").text).should == "4G LTE Broadband Router" }
    verify { (@driver.find_element(:link, "Verizon Wireless 4G LTE USB Modem 551L").text).should == "Verizon Wireless 4G LTE USB Modem 551L" }
    verify { (@driver.find_element(:link, "4G LTE USB Modem").text).should == "4G LTE USB Modem" }
    verify { (@driver.find_element(:link, "Verizon Wireless Ellipsis 7").text).should == "Verizon Wireless Ellipsis 7" }
    verify { (@driver.find_element(:link, "Verizon Ellipsis Jet pack").text).should == "Verizon Ellipsis Jet pack" }
    verify { element_present?(:link, "Verizon Jetpack™ 4G LTE Mobile Hotspot 890L (CPO)").should be_true }
    verify { element_present?(:link, "Verizon Jetpack™ 4G LTE Mobile Hotspot MiFi® 5510L").should be_true }
  end
  
  def element_present?(how, what)
    ${receiver}.find_element(how, what)
    true
  rescue Selenium::WebDriver::Error::NoSuchElementError
    false
  end
  
  def alert_present?()
    ${receiver}.switch_to.alert
    true
  rescue Selenium::WebDriver::Error::NoAlertPresentError
    false
  end
  
  def verify(&blk)
    yield
  rescue ExpectationNotMetError => ex
    @verification_errors << ex
  end
  
  def close_alert_and_get_its_text(how, what)
    alert = ${receiver}.switch_to().alert()
    alert_text = alert.text
    if (@accept_next_alert) then
      alert.accept()
    else
      alert.dismiss()
    end
    alert_text
  ensure
    @accept_next_alert = true
  end
end
