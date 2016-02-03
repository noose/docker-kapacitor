# Configuration
You need to set 3 variables:
- INFLUXDB_HOST (for example http://localhost:8086 )
- INFLUXDB_USER
- INFLUXDB_PASS 

Example run:
`docker run -it --link $INFLUXDB_CONTAINER_ID:influx -e INFLUXDB_HOST=http://influx:8086 -e INFLUXDB_USER=root noose/kapacitor`
