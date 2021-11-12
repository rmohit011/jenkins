
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
s=webdriver.Chrome(executable_path=r'C:\chromedriver.exe')
s.get(r"http://demo.automationtesting.in/Windows.html")
#//*[@id="Tabbed"]/a/button
print(type(s))
s.find_element_by_xpath("/html/body/div[1]/div/div/div/div[2]/div[1]/a").click()
import time
time.sleep(4)
s.close()
s.quit()
