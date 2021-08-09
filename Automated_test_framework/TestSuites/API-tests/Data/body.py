data_test = {
    "jsonrpc": "2.0",
    "method": "call",
    "params": {
        "args": [{
            "name": "Test Contact V1"
        }],
        "model": "res.partner",
        "method": "create",
        "kwargs": {
            "context": {
                "lang": "en_US",
                "tz": "Asia/Saigon",
                "uid": 2,
                "allowed_company_ids": [
                    1
                ],
                "default_is_company": True
            }
        }
    }
}

data_test2 = {
    "jsonrpc": "2.0",
    "method": "call",
    "params": {
        "args": [{
            
        }],
        "model": "res.partner",
        "method": "create",
        "kwargs": {
            "context": {
                "lang": "en_US",
                "tz": "Asia/Saigon",
                "uid": 2,
                "allowed_company_ids": [
                    1
                ],
                "default_is_company": True
            }
        }
    }
}

data_test3 = {
  "jsonrpc": "2.0",
  "method": "call",
  "params": {
    "args": [
      {
        "active": True,
        "name": "Test emp V1",
        "mobile_phone": "07875648654",
        "work_email": "test@test.com",
      }
    ],
    "model": "hr.employee",
    "method": "create",
    "kwargs": {
      "context": {
        "lang": "en_US",
        "tz": "Asia/Saigon",
        "uid": 2,
        "allowed_company_ids": [
          1
        ],
        "chat_icon": True
      }
    }
  }
}



data_test4 = {
  "jsonrpc": "2.0",
  "method": "call",
  "params": {
    "args": [
      {
     
      }
    ],
    "model": "hr.employee",
    "method": "create",
    "kwargs": {
      "context": {
        "lang": "en_US",
        "tz": "Asia/Saigon",
        "uid": 2,
        "allowed_company_ids": [
          1
        ],
        "chat_icon": True
      }
    }
  }
}

data_test5 = {
  "jsonrpc": "2.0",
  "method": "call",
  "params": {
    "args": [
      [
        100
      ],
      {
        "email": "viet.pham@muchconsulting.de"
      }
    ],
    "model": "res.partner",
    "method": "write",
    "kwargs": {
      "context": {
        "lang": "en_US",
        "tz": "Asia/Saigon",
        "uid": 2,
        "allowed_company_ids": [
          1
        ],
        "default_is_company": True
      }
    }
  }
}

data_test6 = {
  "jsonrpc": "2.0",
  "method": "call",
  "params": {
    "args": [
      [
        100
      ],
      {
        "email": "viet.pham@muchconsulting.de"
      }
    ],
    "model": "hr.employee",
    "method": "write",
    "kwargs": {
      "context": {
        "lang": "en_US",
        "tz": "Asia/Saigon",
        "uid": 2,
        "allowed_company_ids": [
          1
        ],
        "default_is_company": True
      }
    }
  }
}
