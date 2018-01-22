# Cube-Release Concourse CI

CI Resources for [cube-release](https://github.com/andrew-edgar/cube-release)

[VIEW PIPELINE](https://flintstone.ci.cf-app.com/teams/cube/pipelines/cube-release-ci)

# Development

**Access** 

To access the Concourse Server, you will need to get:

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
