## JSON SERVER & MONGO DB

 1. docker-compose up -d
 2. add execute permission on bash script file
    - chmod +x jsondata.sh
 3. run bash script to import or delete json data
    - ./jsondata.sh (the first time you run the script you answer with "yes")
 4. open the httpclient folder either in VS-code or in Intellij
 5. open two bash terminals
    - bash (1) = docker container logs --follow server
    - bash (2) = docker container logs --follow mongoDB
 6. now try to run the students.http scripts


OBS. studentAge is not part of the object that is posted into mongodb. That just means, if you want to post a new student, do it without studentAge!
