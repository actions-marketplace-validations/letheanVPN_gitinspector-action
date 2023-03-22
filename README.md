# gitinspector-action

This action runs gitinspector.

## Inputs

## `repo`

**Required** The name of the repo to check, e.g: letheanVPN/blockchain-iTw3.


## Example usage

```yaml
on: [push]
jobs:
  hello_world_job:
    runs-on: ubuntu-latest
    name: Run Checker
    steps:
      # To use this repository's private action,
      # you must check out the repository
      - name: Checkout
        uses: actions/checkout@v3
      - name: gitinspector action step
        uses: letheanVPN/gitinspector-action@v1
        id: hello
        with:
          repo: 'letheanVPN/blockchain-iTw3'
      - name: gitinspector coverage results
        uses: actions/upload-artifact@v3
        with:
          name: gitinspector-report
          path: html/letheanVPN/blockchain-iTw3.html
```
