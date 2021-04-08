Original project : https://github.com/Hari-Nagarajan/fairgame

## How to run

Create a `amazon_credentials.json` or add the one you have in your config folder `config`

Same for the `amazon_config.json`


```
docker run  -v `pwd`/config/amazon_config.json:/fairgame/config/amazon_config.json -v `pwd`/config/amazon_credentials.json:/fairgame/config/amazon_credentials.json -it hydrog3n/fairgame amazon --headless
```

Entry your credentials or your secret

To quite the flow type `ctrl + p` and `ctrl + q`
