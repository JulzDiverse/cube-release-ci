# Eirini CI

CI Resources for [cube-release](https://github.com/andrew-edgar/cube-release)

## Pipelines

- [Eirini-CI](https://flintstone.ci.cf-app.com/teams/cube/pipelines/eirini-release-ci)
- [Eirini-Dev](https://flintstone.ci.cf-app.com/teams/eirini/pipelines/eirini-dev)

## Access 

There are two ways to access our Concourse server:

1. GitHub OAuth

To be able to login via Github you will need to be member of the `cf-cube-ci/cube` team. 

1. LastPass

- [LastPass](https://lastpass.com) account,  
- install the [LastPass CLI](https://github.com/lastpass/lastpass-cli), and 
- contact the cube development team to share the login with you.

After you got all these things, run the following to login via `fly`:

```
fly -t <alias> login \
   -c https://flintstone.ci.cf-app.com \
   -u <user-name> \
   -p $(lpass show "<key-name>" --password) \
   --team-name <team-name>
```

## Development

### Prereqs

- Access to private repo, which contains environment specific vars
- [Aviator](https://github.com/JulzDiverse/aviator)

### Fly `eirini-ci`

1. Create the pipelin YAML:

```
$ aviator
```

This will create the `eirini-ci.yml`

1. Fly the pipeline using the `./fly.sh` script:

```
./fly.sh eirini-ci eirini-ci.yml <path-to-private-repo>/concourse/env/eirini.yml
```

### Fly `eirini-dev`

```
./fly.sh eirini-dev stubs/eirini-dev.yml <path-to-private-repo>/concourse/env/eirini-dev.yml
```


