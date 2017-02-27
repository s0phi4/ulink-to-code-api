[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

# ULink to Code store API

## Links

- [Front end repo](https://github.com/yenpraja610/yenproject_front)
- [ULink to Code](https://yenpraja610.github.io/yenproject_front/)

A full stack web app for coders of all times to save their coding online resources!


### API

| Verb   | URI Pattern            | Controller#Action  |
|--------|------------------------|--------------------|
| POST   | `/sign-up`             | `users#signup`     |
| POST   | `/sign-in`             | `users#signin`     |
| PATCH  | `/change-password/:id` | `users#changepw`   |
| DELETE | `/sign-out/:id`        | `users#signout`    |
| POST   | `/resources`           | `resources#create` |
| GET    | `/resources`           | `resources#index`  |
| PATCH  | `/resources/:id`       | `resources#update` |
| DELETE | `/resources/:id`       | `resources#destroy`|


#### Actions

Requests:

```sh
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "resource": {
      "name": "'"${NAME}"'",
      "url": "'"${URL}"'",
      "tag": "'"${TAG}"'",
      "content_type": "'"${CONTENT_TYPE}"'"
    }
  }'
```
Request:

```sh
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/resources"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"
```
Request:

```sh
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "resource": {
      "name": "'"${NAME}"'",
      "url": "'"${URL}"'"
    }
  }'
```
Request:

```sh
curl "${API}${URL_PATH}" \
--include \
--request DELETE \
--header "Authorization: Token token=$TOKEN"
```

## Process developing
  I developed this API step by step and use sh to run every script I was creating to see the error and then work on the error I was given. I chose not to scaffold in order to understand the process and to have a methodical organized API development.
