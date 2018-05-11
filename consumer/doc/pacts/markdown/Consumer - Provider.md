### A pact between Consumer and Provider

#### Requests from Consumer to Provider

* [A request for people](#a_request_for_people_given_there_is_a_need_for_people) given there is a need for people

* [A request for people](#a_request_for_people_given_an_error_occurs_retrieving_people) given an error occurs retrieving people

#### Interactions

<a name="a_request_for_people_given_there_is_a_need_for_people"></a>
Given **there is a need for people**, upon receiving **a request for people** from Consumer, with
```json
{
  "method": "get",
  "path": "/people",
  "headers": {
    "Accept": "application/json"
  }
}
```
Provider will respond with:
```json
{
  "status": 200,
  "headers": {
    "Content-Type": "application/json;charset=utf-8"
  },
  "body": {
    "people": [
      "Matt",
      "Cara",
      "Eugene"
    ]
  }
}
```
<a name="a_request_for_people_given_an_error_occurs_retrieving_people"></a>
Given **an error occurs retrieving people**, upon receiving **a request for people** from Consumer, with
```json
{
  "method": "get",
  "path": "/people",
  "headers": {
    "Accept": "application/json"
  }
}
```
Provider will respond with:
```json
{
  "status": 500,
  "headers": {
    "Content-Type": "application/json;charset=utf-8"
  },
  "body": {
    "error": "Argh!!!"
  }
}
```
