# Reserve Civique Router

Reverse Proxy for the Beta Gouv project Reserve Civique

This is a router that we've put in front of the reserve-civique app. It's main goals are:

* Add the Cache-Control headers so that Cloudflare could manage correctly its cache
* Rate limit the requests that are made to the app

## Dev mode

To run the project in dev mode type:

```
docker-composer up
```

The website will be accessible at `http://localhost:8080`


