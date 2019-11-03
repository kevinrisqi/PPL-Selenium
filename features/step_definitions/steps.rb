require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

driver = Selenium::WebDriver.for:chrome

Given("open the website") do
    driver.navigate.to "http://opac.polinema.ac.id/"
    sleep(6)
  end
  
  Then("user click info perpustakaan") do
    driver.find_element(:link, 'Info Perpustakaan').click
    sleep(5)
  end

  Then("user click kembali") do
    driver.find_element(:link, 'Kembali').click
    sleep(3)
  end

  Then("user search book") do
    inputNameBook = driver.find_element(:id, 'keyword')
    inputNameBook.send_keys("buku")
    sleep(2)
    inputBtn = driver.find_element(:xpath, "//button[@type='submit']")
    inputBtn.click
    sleep(4)
  end

  Then("user click kembali again") do
    driver.find_element(:link, 'Kembali').click
    sleep(3)
  end

  Then("user click visitor menu") do
    driver.find_element(:link, 'Visitor').click
    sleep(3)
    inputMemberID = driver.find_element(:id, 'memberID')
    inputMemberID.send_keys("Rae")
    sleep(3)
    inputInstitution = driver.find_element(:id, 'institution')
    inputInstitution.send_keys("Polinema")
    sleep(3)
    counterBtn = driver.find_element(:xpath, "//input[@id='counter']")
    counterBtn.click
    sleep(5)
  end