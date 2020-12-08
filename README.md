# boltdbweb
A simple web based boltdb GUI Admin panel.

## Docker

The easiest way to get the container running is with docker-compose - a basic example can be found [here](https://github.com/mzrimsek/boltdbweb/blob/master/docker-compose.yml).

Make a .env and add the following variables:

* HOST_PORT: The port that will bind to the exposed port in the container
* DB_FILE: The path to the database file to be displayed in in the browser

Then start the container

```docker-compose --env-file .env up -d```

### Development

Simply clone the repository and build the image

```docker build --tag boltdbweb .```

And then run the image

```docker run -d -p 8080:8080 -v /mydb.db:/database.db boltdbweb```

If everything went well you should now be running on http://localhost:8080

## Manual Installation
```
go get github.com/mzrimsek/boltdbweb
```

### Usage
```
boltdbweb --db-name=<DBfilename>[required] --port=<port>[optional] --static-path=<static-path>[optional]
```
- `--db-name:` The file name of the DB.
    - NOTE: If 'file.db' does not exist. it will be created as a BoltDB file.
- `--port:` Port for listening on... (Default: 8080)
- `--static-path:` If you moved the binary to different folder you can determin the path of the `web` folder. (Default: Same folder where the binary is located.)


#### Example
```
boltdbweb --db-name=test.db --port=8089 --static-path=/home/user/github/boltdbweb
```
Goto: http://localhost:8089

#### Screenshots:

![](https://github.com/mzrimsek/boltdbweb/blob/master/screenshots/1.png?raw=true)

![](https://github.com/mzrimsek/boltdbweb/blob/master/screenshots/2.png?raw=true)

![](https://github.com/mzrimsek/boltdbweb/blob/master/screenshots/3.png?raw=true)
