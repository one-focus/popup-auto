# Created by Alex Kardash at 24/07/2021
@regression
Feature: Проверка сайта emkworld.com

  Scenario Outline: emkworld.com заказать звонок
    Given open emkworld.com page
    When click on <button>
    When wait 2 sec
    When enter "generated_test_automation_email_call_order" in name field in "callback dialog section"
    When enter "test_automation_company_name" in company field in "callback dialog section"
    When click on country flag button in "callback dialog section"
    When click on russia button in "callback dialog section"
    When enter "1231231212" in phone field in "callback dialog section"
    When click on submit button in "callback dialog section"
    Then text "Thank you for your message" is displayed
    Then email with "generated_test_automation_email_call_order" contains "[COMPANY]: test_automation_company_name;[PHONE]: +7 (123) 123-12-12" in 900 sec

    Examples:
      | button                      |
      | top request callback button |
#      | bottom request callback button |

  Scenario Outline: emkworld.com оставить заявку
    Given open emkworld.com page
    When wait 2 sec
    When enter "generated_test_automation_company_name" in company field in "<section>"
    When enter "test_automation_good_name" in goods field in "<section>"
    When enter "automation.emk@gmail.com" in email field in "<section>"
    When click on country flag button in "<section>"
    When click on russia button in "<section>"
    When enter "1231231212" in phone field in "<section>"
    When click on submit button in "<section>"
    Then text "<thank_you_message>" is displayed
    Then email with "generated_test_automation_company_name" contains "<email_text>" in 900 sec

    Examples:
      | section     | thank_you_message          | email_text                                                                                                     |
      | top section | Thank you for your message | [EMAIL]: automation.emk@gmail.com;[PHONE]: +7 (123) 123-12-12 |
#      | bottom section | Спасибо!                   | [COMPANY]: test_automation_company_name;[EMAIL]: automation.emk@gmail.com;[PHONE]: +7 (123) 123-12-12 |
