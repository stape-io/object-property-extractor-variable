___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Object Property Extractor",
  "description": "Allows getting property from a variable that contains an object",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "SELECT",
    "name": "object_var",
    "displayName": "Object",
    "macrosInSelect": true,
    "selectItems": [],
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "object_property",
    "displayName": "Property",
    "simpleValueType": true,
    "help": "You can use dot notation for getting a nested property. For example `data.user.email`",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_SERVER___

return data.object_property.split('.').reduce((a, b) => a[b], data.object_var);


___TESTS___

scenarios: []


___NOTES___

Created on 30/09/2021, 18:10:20


