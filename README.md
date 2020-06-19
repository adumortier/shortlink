# README

ShortLink is an API that can be used to: 

- convert a regular url to a short url
- retrieve a regular url from a stored short url

### Converting a long url to a short url:

```
POST /api/v1/shorturls
{
    "long_url": "https://stackoverflow.com/questions/7167895/rails-whats-a-good-way-to-validate-links-urls/7167988"
}
```

Expected response:
```
{
    "data": {
        "id": "1",
        "type": "url",
        "attributes": {
            "short_url": "FL5fYLb0",
            "long_url": "https://stackoverflow.com/questions/7167895/rails-whats-a-good-way-to-validate-links-urls/7167988"
        }
    }
}
```

### Retrieving a long url from a short url:

```
GET /api/v1/longurls/FL5fYLb0
```

Expected response:
```
{
    "data": {
        "id": "1",
        "type": "url",
        "attributes": {
            "short_url": "FL5fYLb0",
            "long_url": "https://stackoverflow.com/questions/7167895/rails-whats-a-good-way-to-validate-links-urls/7167988"
        }
    }
}
```

### Retrieving a long url from an invalid short url:

```
GET /api/v1/longurls/not_a_valid_short_url
```

Expected response:
```
{
    "data": {
        "id": "poro",
        "type": "error",
        "attributes": {
            "message": "Requested url does not exist"
        }
    }
}
```
