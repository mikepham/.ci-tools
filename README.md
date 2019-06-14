# .ci-tools

## setup-git
Since most CI platforms will checkout a specific commit, which leaves the local branch in a headless state, this will perform the actions necessary to attach the correct remote repo as "origin" and checkout by branch name.
```
setup-git develop git@git.nativecode.net:nativecode/.ci-tools.git
```

## wait-for
Provided a hostname and a port, will wait until the port responds with a 200 OK. Useful when used in combination with services via most CI platforms.
```
wait-for localhost 80
```
