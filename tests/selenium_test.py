from selenium import webdriver

def test_home_page():
    driver = webdriver.Chrome()
    driver.get("http://localhost:5000")
    assert "Hello, CI/CD with Flask!" in driver.page_source
    driver.quit()
