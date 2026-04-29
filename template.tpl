___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "displayName": "HelperHat Live Chat",
  "description": "Install the HelperHat AI live chat widget on your website.",
  "securityGroups": [],
  "id": "cvt_helperhat_live_chat",
  "type": "TAG",
  "version": 1,
  "brand": {
    "displayName": "HelperHat",
    "id": "brand_dummy"
  },
  "categories": [
    "CHAT",
    "LEAD_GENERATION",
    "UTILITY"
  ],
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "businessId",
    "displayName": "HelperHat Business ID",
    "simpleValueType": true,
    "valueHint": "e.g. FdV6Iqf37i3rfVlWKoiR",
    "help": "Paste the business ID from your HelperHat install code. It is the value after businessId=.",
    "alwaysInSummary": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY",
        "errorMessage": "Enter your HelperHat business ID."
      },
      {
        "type": "REGEX",
        "args": [
          "^[A-Za-z0-9_-]+$"
        ],
        "errorMessage": "Use only letters, numbers, dashes, and underscores."
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const encodeUriComponent = require('encodeUriComponent');
const injectScript = require('injectScript');

const businessId = data.businessId;
const scriptUrl = 'https://helperhat.com/install.js?businessId=' + encodeUriComponent(businessId);

injectScript(scriptUrl, data.gtmOnSuccess, data.gtmOnFailure, 'helperhatLiveChat');


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://helperhat.com/install.js?businessId=*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]
