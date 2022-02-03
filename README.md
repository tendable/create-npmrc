# Create a .npmrc file for the github repository

Github workflow action to create `.npmrc` file for github to the root folder

Pass all sensitive data using secrets.

## Inputs

### `org_name`

Organization name (Github repository name)

### `auth_token` (optional)

AuthToken that is able to download files from the repository, can also be passed as env and it's rather recommended this way


## Example usage

```ylm
uses: tendable/create-npmrc@3
with:
  org_name: tendable
  env:
    AUTH_TOKEN: ${{ secrets.github_auth_token }}
```

## Example output

```npmrc
registry = https://npm.pkg.github.com/tendable
//npm.pkg.github.com/:_authToken=31352d11daasdf769942919dsafas594a5d
```
