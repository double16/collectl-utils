# collectl-utils-docker

The collectl-utils package processes and graphs collectl output. This is a container to provide
the package is an easy to consume form.

## Input Files

The `/input` volume should contain the collectl recorded files.

## Output Files

The `/output` volume is intended to hold the output files.

## User Interface

Map port 80 to 8080, or a randomly assigned port. Point your browser to `http://localhost:8080/colplot/` (adjusting port 8080 as needed).

## Examples

### Start a colplot server

```shell
$ docker run -P -d -v $(pwd)/input:/input pdouble16/collectl-utils
```

### Replay a raw file

```shell
$ docker run -v $(pwd)/input:/input pdouble16/collectl-utils:latest -p /input/collectl-b5595de7e57a-20180425-192552.raw
```
### Replay `top`

```shell
$ docker run -v $(pwd)/input:/input pdouble16/collectl-utils:latest -p /input/collectl-b5595de7e57a-20180425-192552.raw --top
```
