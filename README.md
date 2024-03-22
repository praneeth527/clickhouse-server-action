# <img src="https://www.gravatar.com/avatar/3941f2791c0942c0d79402bd813e7278?s=120&r=g&d=404" alt="ClickHouse Server Action" width="30" height="30"> clickhouse-server

This action is used to deploy [ClickHouse Server](https://hub.docker.com/r/clickhouse/clickhouse-server) docker container

## Usage

See [action.yml](action.yml) for the `inputs` this action supports (or [below](#inputs-📥)).


This action runs a ClickHouse server to run/automate tests on ClickHouse DB using github workflows.

### Example

```yaml
jobs:
  build:
    runs-on: ubuntu-latest
    environment: prod # GitHub environment for variables -- https://docs.github.com/en/actions/deployment/targeting-different-environments/using-environments-for-deployment

    # set the following envs to create a database and user with the password provided
    env:
      CLICKHOUSE_DATABASE: ${{vars.CLICKHOUSE_DATABASE}}
      CLICKHOUSE_USER: ${{vars.CLICKHOUSE_USER}}
      CLICKHOUSE_PASSWORD: ${{vars.CLICKHOUSE_PASSWORD}}

    steps:
      - name: "Setup ClickHouse Server"
        id: clickhouse-server
        uses: praneeth527/clickhouse-server-action@v1.0.0
        with:
          tag: '23.3.18.15-alpine' # clickhouse server docker image tag -- https://hub.docker.com/r/clickhouse/clickhouse-server/tags
```

## Inputs 📥

| Input | Required? | Default          | Description                                                                                                                                                     |
| ----- |-----------|------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `tag` | `false`   | `latest-alpine`  | The clickhouse server docker image tag to run |                                                                                                                  |

## Outputs 📤

There are no outputs returned by the action as of now.

## Environment Variables 🌎

| Variable                                | Required? | Description                                                                     |
|-----------------------------------------|-----------|---------------------------------------------------------------------------------|
| `CLICKHOUSE_DATABASE`                   | `true`    | The default `database` to be created on the start                               |
| `CLICKHOUSE_USER`                       | `true`    | The default `user` to be created on the start                                   |
| `CLICKHOUSE_PASSWORD`                   | `true`    | The password for the `CLICKHOUSE_USER` to be created                            |
| `CLICKHOUSE_DEFAULT_ACCESS_MANAGEMENT` | `false`    | The default access management settings enabled for you by default by setting `1` |



The ClickHouse logo is a trademark of ClickHouse.com and is used here under license.
