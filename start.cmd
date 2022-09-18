setlocal
FOR /F "tokens=*" %%i in (./environment/.env) do SET %%i
java -jar ./target/chi-discovery-service-0.0.1-SNAPSHOT.jar
endlocal