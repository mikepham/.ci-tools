# .citools

## setup-git
Since most CI platforms will checkout a specific commit, which leaves the local branch in a headless state, this will perform the actions necessary to attach the correct remote repo as "origin" and checkout by branch name. Also sets the git user to an automaton account.
```
setup-git <BRANCH> <ORIGIN> <EMAIL>
```

## setup-ssh
Configures the remote build agent with a pre-defined SSH key from an environment variable or filename.
```
setup-ssh <DOMAIN> [FILEPATH] [SSH_HOST]
```

## wait-for
Provided a hostname and a port, will wait until the port responds with a 200 OK. Useful when used in combination with services via most CI platforms.
```
wait-for <HOST> <PORT>
```
