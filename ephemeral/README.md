To build the FRAM and Tomcat images run:

## Build

### Tomcat:

Inside the Tomcat directory run :

```bash
docker build -t edtomcat .
```

### FRAM

Inside the FRAM directory run :

```bash
docker build -t fram .
```

## Configure

You need to configure the ```.env``` file.

This contains your license key and password for the instances.

You should set the following properties
  * LICENSE
  * PASS

## Running

To run the test setup run :

```bash
docker-compose up
```

If you want to run more tomcat instances:

```
docker-compose up --scale tomcat=4
```

where tomcat= is the defines the number of instances you want.

## Viewing

Open the following link in your browser :

 * [Enterprise Dashboard](http://localhost:8187/fusionreactor/findex.htm?p=ed&__toc=enterprise)
