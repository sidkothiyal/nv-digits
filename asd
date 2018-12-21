from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC


usernameStr = ''
passwordStr = ''

browser = webdriver.Chrome()
browser.get('http://splm.sec.samsung.net/portal/com/shared/main.do')

username = browser.find_element_by_id('userNameInput')
username.send_keys(usernameStr)

password = browser.find_element_by_id('passwordInput')
password.send_keys(passwordStr)

loginButton = browser.find_element_by_id('submitButton')
loginButton.click()


findIssuesByOwner = WebDriverWait(browser, 20).until(EC.presence_of_element_located((By.ID, 'PERSON_IN_CHARGE_SAL_STATE')))
findIssuesByOwnerButton = browser.find_element_by_id('PERSON_IN_CHARGE_SAL_STATE')
findIssuesByOwnerButton.click()

'''
findIssuesByOwnerTable = WebDriverWait(browser, 20)

for row in browser.find_elements_by_id("list"):
    cell = row.find_elements_by_tag_name("tr")[1]
    print(cell.text)
'''
