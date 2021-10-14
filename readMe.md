
Un Dockerfile qui recupere le weatherApi (jar) et l'exécute

Creation de l'image a partir du Dockerfile: ->$ docker built -t amine/weather_api:1.0 .

Lancement de l'api sur le port 8085 en mode déttacher: ->$ docker run -dit -p 8085:8081 --name=weather --hostname=amine amine/weather_api:1.0

EndPoint de l'api: GET->/meteo/getWeather?city=lyon

GET->/meteo/getWeatherAndSave?city=lyon

GET->/meteo/getAllSavedWeathers

GET->/meteo/getById?city=lyon

DELETE->/meteo/deleteById?city=lyon

DELETE->/meteo/deleteAll
