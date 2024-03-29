class TestJson

  def self.project1
json=<<-EOF
[
    {
        "id": "account-holder-withdraws-cash",
        "tags": [
            {
                "name": "@super",
                "line": 1
            }
        ],
        "description": "As a Account Holder\nI want to withdraw cash from an ATM\nSo that I can get money when the bank is closed",
        "name": "Account Holder withdraws cash",
        "keyword": "Feature",
        "line": 2,
        "elements": [
            {
                "description": "",
                "name": "Activate Credit Card",
                "keyword": "Background",
                "line": 7,
                "steps": [
                    {
                        "result": {
                            "duration": 107447000,
                            "status": "passed"
                        },
                        "name": "I have a new credit card",
                        "keyword": "Given ",
                        "line": 8,
                        "match": {
                            "location": "ATMScenario.I_have_a_new_credit_card()"
                        }
                    },
                    {
                        "result": {
                            "duration": 16000,
                            "status": "passed"
                        },
                        "name": "I confirm my pin number",
                        "keyword": "When ",
                        "line": 9,
                        "match": {
                            "location": "ATMScenario.I_confirm_my_pin_number()"
                        }
                    },
                    {
                        "result": {
                            "duration": 14000,
                            "status": "passed"
                        },
                        "name": "the card should be activated",
                        "keyword": "Then ",
                        "line": 10,
                        "match": {
                            "location": "ATMScenario.the_card_should_be_activated()"
                        }
                    }
                ],
                "type": "background"
            },
            {
                "id": "account-holder-withdraws-cash;account-has-\u0027sufficient-funds\u0027;;2",
                "tags": [
                    {
                        "name": "@fast",
                        "line": 12
                    },
                    {
                        "name": "@super",
                        "line": 1
                    },
                    {
                        "name": "@checkout",
                        "line": 12
                    }
                ],
                "description": "",
                "name": "Account has \u0027sufficient funds\u0027",
                "keyword": "Scenario Outline",
                "line": 24,
                "steps": [
                    {
                        "result": {
                            "duration": 996000,
                            "status": "passed"
                        },
                        "name": "the account balance is 100",
                        "keyword": "Given ",
                        "line": 14,
                        "match": {
                            "arguments": [
                                {
                                    "val": "100",
                                    "offset": 23
                                }
                            ],
                            "location": "ATMScenario.createAccount(int)"
                        },
                        "output": ["\u003cdiv\u003esome other text\u003c/div\u003e", "<div>wooops</div>"],
                        "matchedColumns": [0]
                    },
                    {
                        "result": {
                            "duration": 30000,
                            "status": "passed"
                        },
                        "name": "the card is valid",
                        "keyword": "And ",
                        "line": 15,
                        "match": {
                            "location": "ATMScenario.createCreditCard()"
                        }
                    },
                    {
                        "result": {
                            "duration": 58000,
                            "status": "passed"
                        },
                        "name": "the machine contains 100",
                        "keyword": "And ",
                        "line": 16,
                        "match": {
                            "arguments": [
                                {
                                    "val": "100",
                                    "offset": 21
                                }
                            ],
                            "location": "ATMScenario.createATM(int)"
                        },
                        "matchedColumns": [1]
                    },
                    {
                        "result": {
                            "duration": 42000,
                            "status": "passed"
                        },
                        "name": "the Account Holder requests 10",
                        "keyword": "When ",
                        "line": 17,
                        "match": {
                            "arguments": [
                                {
                                    "val": "10",
                                    "offset": 28
                                }
                            ],
                            "location": "ATMScenario.requestMoney(int)"
                        },
                        "matchedColumns": [2]
                    },
                    {
                        "result": {
                            "duration": 3220000,
                            "status": "passed"
                        },
                        "name": "the ATM should dispense 10",
                        "keyword": "Then ",
                        "line": 18,
                        "match": {
                            "arguments": [
                                {
                                    "val": "10",
                                    "offset": 24
                                }
                            ],
                            "location": "ATMScenario.checkMoney(int)"
                        },
                        "matchedColumns": [3]
                    },
                    {
                        "result": {
                            "duration": 65000,
                            "status": "passed"
                        },
                        "name": "the account balance should be 90",
                        "keyword": "And ",
                        "line": 19,
                        "match": {
                            "arguments": [
                                {
                                    "val": "90",
                                    "offset": 30
                                }
                            ],
                            "location": "ATMScenario.checkBalance(int)"
                        },
                        "matchedColumns": [4]
                    },
                    {
                        "result": {
                            "duration": 20000,
                            "status": "passed"
                        },
                        "name": "the card should be returned",
                        "keyword": "And ",
                        "line": 20,
                        "match": {
                            "location": "ATMScenario.cardShouldBeReturned()"
                        }
                    }
                ],
                "type": "scenario"
            },
            {
                "description": "",
                "name": "Activate Credit Card",
                "keyword": "Background",
                "line": 7,
                "steps": [
                    {
                        "result": {
                            "duration": 49000,
                            "status": "passed"
                        },
                        "name": "I have a new credit card",
                        "keyword": "Given ",
                        "line": 8,
                        "match": {
                            "location": "ATMScenario.I_have_a_new_credit_card()"
                        }
                    },
                    {
                        "result": {
                            "duration": 12000,
                            "status": "passed"
                        },
                        "name": "I confirm my pin number",
                        "keyword": "When ",
                        "line": 9,
                        "match": {
                            "location": "ATMScenario.I_confirm_my_pin_number()"
                        }
                    },
                    {
                        "result": {
                            "duration": 12000,
                            "status": "passed"
                        },
                        "name": "the card should be activated",
                        "keyword": "Then ",
                        "line": 10,
                        "match": {
                            "location": "ATMScenario.the_card_should_be_activated()"
                        }
                    }
                ],
                "type": "background"
            },
            {
                "id": "account-holder-withdraws-cash;account-has-\u0027sufficient-funds\u0027;;3",
                "tags": [
                    {
                        "name": "@fast",
                        "line": 12
                    },
                    {
                        "name": "@super",
                        "line": 1
                    },
                    {
                        "name": "@checkout",
                        "line": 12
                    }
                ],
                "description": "",
                "name": "Account has \u0027sufficient funds\u0027",
                "keyword": "Scenario Outline",
                "line": 25,
                "steps": [
                    {
                        "result": {
                            "duration": 48000,
                            "status": "passed"
                        },
                        "name": "the account balance is 100",
                        "keyword": "Given ",
                        "line": 14,
                        "match": {
                            "arguments": [
                                {
                                    "val": "100",
                                    "offset": 23
                                }
                            ],
                            "location": "ATMScenario.createAccount(int)"
                        },
                        "matchedColumns": [0]
                    },
                    {
                        "result": {
                            "duration": 14000,
                            "status": "passed"
                        },
                        "name": "the card is valid",
                        "keyword": "And ",
                        "line": 15,
                        "match": {
                            "location": "ATMScenario.createCreditCard()"
                        }
                    },
                    {
                        "result": {
                            "duration": 32000,
                            "status": "passed"
                        },
                        "name": "the machine contains 100",
                        "keyword": "And ",
                        "line": 16,
                        "match": {
                            "arguments": [
                                {
                                    "val": "100",
                                    "offset": 21
                                }
                            ],
                            "location": "ATMScenario.createATM(int)"
                        },
                        "matchedColumns": [1]
                    },
                    {
                        "result": {
                            "duration": 33000,
                            "status": "passed"
                        },
                        "name": "the Account Holder requests 20",
                        "keyword": "When ",
                        "line": 17,
                        "match": {
                            "arguments": [
                                {
                                    "val": "20",
                                    "offset": 28
                                }
                            ],
                            "location": "ATMScenario.requestMoney(int)"
                        },
                        "matchedColumns": [2]
                    },
                    {
                        "result": {
                            "duration": 35000,
                            "status": "passed"
                        },
                        "name": "the ATM should dispense 20",
                        "keyword": "Then ",
                        "line": 18,
                        "match": {
                            "arguments": [
                                {
                                    "val": "20",
                                    "offset": 24
                                }
                            ],
                            "location": "ATMScenario.checkMoney(int)"
                        },
                        "matchedColumns": [3]
                    },
                    {
                        "result": {
                            "duration": 33000,
                            "status": "passed"
                        },
                        "name": "the account balance should be 80",
                        "keyword": "And ",
                        "line": 19,
                        "match": {
                            "arguments": [
                                {
                                    "val": "80",
                                    "offset": 30
                                }
                            ],
                            "location": "ATMScenario.checkBalance(int)"
                        },
                        "matchedColumns": [4]
                    },
                    {
                        "result": {
                            "duration": 14000,
                            "status": "passed"
                        },
                        "name": "the card should be returned",
                        "keyword": "And ",
                        "line": 20,
                        "match": {
                            "location": "ATMScenario.cardShouldBeReturned()"
                        }
                    }
                ],
                "type": "scenario"
            },
            {
                "description": "",
                "name": "Activate Credit Card",
                "keyword": "Background",
                "line": 7,
                "steps": [
                    {
                        "result": {
                            "duration": 49000,
                            "status": "passed"
                        },
                        "name": "I have a new credit card",
                        "keyword": "Given ",
                        "line": 8,
                        "match": {
                            "location": "ATMScenario.I_have_a_new_credit_card()"
                        }
                    },
                    {
                        "result": {
                            "duration": 12000,
                            "status": "passed"
                        },
                        "name": "I confirm my pin number",
                        "keyword": "When ",
                        "line": 9,
                        "match": {
                            "location": "ATMScenario.I_confirm_my_pin_number()"
                        }
                    },
                    {
                        "result": {
                            "duration": 12000,
                            "status": "passed"
                        },
                        "name": "the card should be activated",
                        "keyword": "Then ",
                        "line": 10,
                        "match": {
                            "location": "ATMScenario.the_card_should_be_activated()"
                        }
                    }
                ],
                "type": "background"
            },
            {
                "id": "account-holder-withdraws-cash;account-has-\u0027sufficient-funds\u0027;;4",
                "tags": [
                    {
                        "name": "@fast",
                        "line": 12
                    },
                    {
                        "name": "@super",
                        "line": 1
                    },
                    {
                        "name": "@checkout",
                        "line": 12
                    }
                ],
                "description": "",
                "name": "Account has \u0027sufficient funds\u0027",
                "keyword": "Scenario Outline",
                "line": 26,
                "steps": [
                    {
                        "result": {
                            "duration": 46000,
                            "status": "passed"
                        },
                        "name": "the account balance is 100",
                        "keyword": "Given ",
                        "line": 14,
                        "match": {
                            "arguments": [
                                {
                                    "val": "100",
                                    "offset": 23
                                }
                            ],
                            "location": "ATMScenario.createAccount(int)"
                        },
                        "matchedColumns": [0]
                    },
                    {
                        "result": {
                            "duration": 15000,
                            "status": "passed"
                        },
                        "name": "the card is valid",
                        "keyword": "And ",
                        "line": 15,
                        "match": {
                            "location": "ATMScenario.createCreditCard()"
                        }
                    },
                    {
                        "result": {
                            "duration": 32000,
                            "status": "passed"
                        },
                        "name": "the machine contains 100",
                        "keyword": "And ",
                        "line": 16,
                        "match": {
                            "arguments": [
                                {
                                    "val": "100",
                                    "offset": 21
                                }
                            ],
                            "location": "ATMScenario.createATM(int)"
                        },
                        "matchedColumns": [1]
                    },
                    {
                        "result": {
                            "duration": 32000,
                            "status": "passed"
                        },
                        "name": "the Account Holder requests 30",
                        "keyword": "When ",
                        "line": 17,
                        "match": {
                            "arguments": [
                                {
                                    "val": "30",
                                    "offset": 28
                                }
                            ],
                            "location": "ATMScenario.requestMoney(int)"
                        },
                        "matchedColumns": [2]
                    },
                    {
                        "result": {
                            "duration": 34000,
                            "status": "passed"
                        },
                        "name": "the ATM should dispense 30",
                        "keyword": "Then ",
                        "line": 18,
                        "match": {
                            "arguments": [
                                {
                                    "val": "30",
                                    "offset": 24
                                }
                            ],
                            "location": "ATMScenario.checkMoney(int)"
                        },
                        "matchedColumns": [3]
                    },
                    {
                        "result": {
                            "duration": 33000,
                            "status": "passed"
                        },
                        "name": "the account balance should be 70",
                        "keyword": "And ",
                        "line": 19,
                        "match": {
                            "arguments": [
                                {
                                    "val": "70",
                                    "offset": 30
                                }
                            ],
                            "location": "ATMScenario.checkBalance(int)"
                        },
                        "matchedColumns": [4]
                    },
                    {
                        "result": {
                            "duration": 14000,
                            "status": "passed"
                        },
                        "name": "the card should be returned",
                        "keyword": "And ",
                        "line": 20,
                        "match": {
                            "location": "ATMScenario.cardShouldBeReturned()"
                        }
                    }
                ],
                "type": "scenario"
            },
            {
                "description": "",
                "name": "Activate Credit Card",
                "keyword": "Background",
                "line": 7,
                "steps": [
                    {
                        "result": {
                            "duration": 50000,
                            "status": "passed"
                        },
                        "name": "I have a new credit card",
                        "keyword": "Given ",
                        "line": 8,
                        "match": {
                            "location": "ATMScenario.I_have_a_new_credit_card()"
                        }
                    },
                    {
                        "result": {
                            "duration": 12000,
                            "status": "passed"
                        },
                        "name": "I confirm my pin number",
                        "keyword": "When ",
                        "line": 9,
                        "match": {
                            "location": "ATMScenario.I_confirm_my_pin_number()"
                        }
                    },
                    {
                        "result": {
                            "duration": 12000,
                            "status": "passed"
                        },
                        "name": "the card should be activated",
                        "keyword": "Then ",
                        "line": 10,
                        "match": {
                            "location": "ATMScenario.the_card_should_be_activated()"
                        }
                    }
                ],
                "type": "background"
            },
            {
                "id": "account-holder-withdraws-cash;account-has-sufficient-funds-again",
                "tags": [
                    {
                        "name": "@super",
                        "line": 28
                    }
                ],
                "description": "",
                "name": "Account has sufficient funds again",
                "keyword": "Scenario",
                "line": 29,
                "steps": [
                    {
                        "result": {
                            "duration": 39000,
                            "status": "passed"
                        },
                        "name": "the account balance is 300",
                        "keyword": "Given ",
                        "line": 30,
                        "match": {
                            "arguments": [
                                {
                                    "val": "300",
                                    "offset": 23
                                }
                            ],
                            "location": "ATMScenario.createAccount(int)"
                        }
                    },
                    {
                        "result": {
                            "duration": 13000,
                            "status": "passed"
                        },
                        "name": "the card is valid",
                        "keyword": "And ",
                        "line": 31,
                        "match": {
                            "location": "ATMScenario.createCreditCard()"
                        }
                    },
                    {
                        "result": {
                            "duration": 32000,
                            "status": "passed"
                        },
                        "name": "the machine contains 300",
                        "keyword": "And ",
                        "line": 32,
                        "match": {
                            "arguments": [
                                {
                                    "val": "300",
                                    "offset": 21
                                }
                            ],
                            "location": "ATMScenario.createATM(int)"
                        }
                    },
                    {
                        "result": {
                            "duration": 31000,
                            "status": "passed"
                        },
                        "name": "the Account Holder requests 20",
                        "keyword": "When ",
                        "line": 33,
                        "match": {
                            "arguments": [
                                {
                                    "val": "20",
                                    "offset": 28
                                }
                            ],
                            "location": "ATMScenario.requestMoney(int)"
                        }
                    },
                    {
                        "result": {
                            "duration": 33000,
                            "status": "passed"
                        },
                        "name": "the ATM should dispense 20",
                        "keyword": "Then ",
                        "line": 34,
                        "match": {
                            "arguments": [
                                {
                                    "val": "20",
                                    "offset": 24
                                }
                            ],
                            "location": "ATMScenario.checkMoney(int)"
                        }
                    },
                    {
                        "result": {
                            "duration": 35000,
                            "status": "passed"
                        },
                        "name": "the account balance should be 280",
                        "keyword": "And ",
                        "line": 35,
                        "match": {
                            "arguments": [
                                {
                                    "val": "280",
                                    "offset": 30
                                }
                            ],
                            "location": "ATMScenario.checkBalance(int)"
                        }
                    },
                    {
                        "result": {
                            "duration": 13000,
                            "status": "passed"
                        },
                        "name": "the card should be returned",
                        "keyword": "And ",
                        "line": 36,
                        "match": {
                            "location": "ATMScenario.cardShouldBeReturned()"
                        }
                    }
                ],
                "type": "scenario"
            }
        ],
        "uri": "net/masterthought/example/ATM.feature"
    },
    {
        "id": "account-holder-withdraws-more-cash",
        "description": "As an Account Holder\nI want to withdraw cash from an ATM\nSo that I can get money when the bank is closed",
        "name": "Account Holder withdraws More Cash",
        "keyword": "Feature",
        "line": 1,
        "elements": [
            {
                "id": "account-holder-withdraws-more-cash;account-has-sufficient-funds;;2",
                "description": "",
                "name": "Account has sufficient funds",
                "keyword": "Scenario Outline",
                "line": 19,
                "steps": [
                    {
                        "result": {
                            "duration": 2861000,
                            "status": "passed"
                        },
                        "name": "the account balance is 100",
                        "keyword": "Given ",
                        "line": 7,
                        "match": {
                            "arguments": [
                                {
                                    "val": "100",
                                    "offset": 23
                                }
                            ],
                            "location": "ATMScenario.createAccount(int)"
                        },
                        "matchedColumns": [0]
                    },
                    {
                        "result": {
                            "duration": 13000,
                            "status": "passed"
                        },
                        "name": "the card is valid",
                        "keyword": "And ",
                        "line": 8,
                        "match": {
                            "location": "ATMScenario.createCreditCard()"
                        }
                    },
                    {
                        "result": {
                            "duration": 36000,
                            "status": "passed"
                        },
                        "name": "the machine contains 100",
                        "keyword": "And ",
                        "line": 9,
                        "match": {
                            "arguments": [
                                {
                                    "val": "100",
                                    "offset": 21
                                }
                            ],
                            "location": "ATMScenario.createATM(int)"
                        },
                        "matchedColumns": [1]
                    },
                    {
                        "result": {
                            "duration": 32000,
                            "status": "passed"
                        },
                        "name": "the Account Holder requests 20",
                        "keyword": "When ",
                        "line": 10,
                        "match": {
                            "arguments": [
                                {
                                    "val": "20",
                                    "offset": 28
                                }
                            ],
                            "location": "ATMScenario.requestMoney(int)"
                        },
                        "matchedColumns": [2]
                    },
                    {
                        "result": {
                            "duration": 36000,
                            "status": "passed"
                        },
                        "name": "the ATM should dispense 20",
                        "keyword": "Then ",
                        "line": 11,
                        "match": {
                            "arguments": [
                                {
                                    "val": "20",
                                    "offset": 24
                                }
                            ],
                            "location": "ATMScenario.checkMoney(int)"
                        },
                        "matchedColumns": [3]
                    },
                    {
                        "result": {
                            "duration": 1933000,
                            "status": "failed",
                            "error_message": "java.lang.AssertionError: \nExpected: is \u003c80\u003e\n     got: \u003c90\u003e\n\n\tat org.junit.Assert.assertThat(Assert.java:780)\n\tat org.junit.Assert.assertThat(Assert.java:738)\n\tat net.masterthought.example.ATMScenario.checkBalance(ATMScenario.java:69)\n\tat ✽.And the account balance should be 90(net/masterthought/example/ATMK.feature:12)\n"
                        },
                        "name": "the account balance should be 90",
                        "keyword": "And ",
                        "line": 12,
                        "match": {
                            "arguments": [
                                {
                                    "val": "90",
                                    "offset": 30
                                }
                            ],
                            "location": "ATMScenario.checkBalance(int)"
                        },
                        "matchedColumns": [4]
                    },
                    {
                        "result": {
                            "status": "skipped"
                        },
                        "name": "the card should be returned",
                        "keyword": "And ",
                        "line": 13,
                        "match": {
                            "location": "ATMScenario.cardShouldBeReturned()"
                        }
                    },
                    {
                        "result": {
                            "status": "skipped"
                        },
                        "name": "its not implemented",
                        "keyword": "And ",
                        "line": 14,
                        "match": {
                            "location": "ATMScenario.its_not_implemented()"
                        }
                    },
                    {
                        "result": {
                            "status": "skipped"
                        },
                        "name": "the card is valid",
                        "keyword": "And ",
                        "line": 15,
                        "match": {
                            "location": "ATMScenario.createCreditCard()"
                        }
                    }
                ],
                "type": "scenario"
            }
        ],
        "uri": "net/masterthought/example/ATMK.feature"
    }
]
EOF
JSON.parse(json.gsub("\n",""))
  end

end