## Node Express MockerServer & MONGO DB

 1. open the project either in VSCode or Intellij
 2. open a terminal in root 
 3. docker-compose up -d
 4. add execute permission on the bash script file if needed
    - chmod +x jsondata.sh
 5. run the bash script to import or delete json data. The first time you run the script you answer with "yes". "no" will delete all data in the db!
    - ./jsondata.sh
 6. open two bash terminals
    - bash (1) = ``` docker container logs --follow server ``` 
    - bash (2) = ``` docker container logs --follow mongoDB ```
 7. run the students.http script or use the Postman link below

[![Run in Postman](https://run.pstmn.io/button.svg)](https://app.getpostman.com/run-collection/24760526-5f1a4dd2-7b02-49a0-9a14-36ca80e4421e?action=collection%2Ffork&collection-url=entityId%3D24760526-5f1a4dd2-7b02-49a0-9a14-36ca80e4421e%26entityType%3Dcollection%26workspaceId%3D7fcf0f84-1bef-47b8-8dcb-678d2878bbf6)

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
OBS. studentAge is a property that gets calculated with help of the birthday property after the data is retrieved from the database. 
The studentAge is only available in the get request and is not a part of the post body request !!!


### For API documentation go to 

Students:
```JS
https://app.swaggerhub.com/apis-docs/tysker/student/1.0.0
```

