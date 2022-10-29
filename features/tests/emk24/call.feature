# Created by Alex Kardash at 24/07/2021
@regression
Feature: Проверка кнопки заказать звонок emk24

  Scenario Outline: Заказать звонок emk24
    Given open <url> page
    When click on call request button
    When enter "+70000000000" in standard phone field
    When wait 1 sec
    When click on standard send button
    Then text "Ваше сообщение отравлено" is displayed
    Then email with "<url> Обратный звонок (заявка)" contains "[PHONE]: +70000000000" in 900 sec

    Examples:
      | url          |
      | emk24.ru     |
      | emk24.by     |
      | emk24.kz     |
      | emk24.com.ua |
