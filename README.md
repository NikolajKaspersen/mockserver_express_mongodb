## Node Express MockerServer & MONGO DB

 1. docker-compose up -d
 2. add execute permission on bash script file
    - chmod +x jsondata.sh
 3. run bash script to import or delete json data
    - ./jsondata.sh (the first time you run the script you answer with "yes")
 4. open the httpclient folder either in VS-code or in Intellij
 5. open two bash terminals
    - bash (1) = ``` docker container logs --follow server ``` 
    - bash (2) = ``` docker container logs --follow mongoDB ```
 6. now try to run the students.http scripts

```JS
  {
    "student": {
        "name": "string",
            "birthday": "2022-12-12",
            "email": "user@example.com",
            "mobil": 0,
            "gender": "male",
            "address": {
            "street": "string",
                "city": "string",
                "zipCode": "string"
        }
    },
    "education": {
        "name": "multimedia",
            "startDate": "2022-08-01",
            "endDate": "2024-06-31"
    },
    "studentAge": "27"
}

```
OBS. studentAge is a property gets calculated with help og the birthday property. 
The studentAge is only available in the get request and is not a part of the post body request !!!


### For API documentation go to 

Students:
```JS
https://app.swaggerhub.com/apis-docs/tysker/student/1.0.0
```

User:
```JS
coming soon ...
```
