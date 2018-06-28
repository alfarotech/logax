# Logax

Logax is an open-source Command and Control service. The primary use for Logax is penetration testing.

## Branch Structure

- `Master` branch is the latest stable and tested code.
- `Develop` branch is the latest unstable branch and still needs further testing.

## Contributing

If you would like to contribute, please find a currently open issue or create one. Make a new branch from develop named `NIC-####` where `####` is the id of the issue (IE: NIC-485). Each commit should reference your issue at the end of the commit, IE: `"Fixed an annoying bug with the UI. #485"` where #485 is the id of the issue.

Once the branch is ready, a merge request should be opened to merge it into develop.

## Docker Repo

https://hub.docker.com/u/nicklecannon/

## Formatting

Python: All variables, functions, and names must have underscores.

```
def my_cool_function(some_param):
    pass
```

All code also must meet `pep8` standards.
