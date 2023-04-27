## I Have a Question

Firstly, be sure you googled your problem, searched for your trouble in issues. 

Otherwise, you can open an Issue, provide as much context as you can, provide OS, Anisble version

## I want to Contribute

Fork this repo and create pull request with changes you have done.

Add proper commit messages! We use [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/).

### Env requirements

- Ubuntu is preferable OS
- Python 3.9 or higher
- Make util (Repository is shipped with Make scenario)

### Env configuration

We recommend you configure virtual Python environment instead of using OS level env. Read more at [Creation of virtual environments](https://docs.python.org/3.9/library/venv.html)

Run:

```shell
make init
```

Or if you are a Mac user:

```shell
make init-mac
```

### Linters

Check your code:

```shell
make lint
```

### Run tests

Run all test scenarios at once:

```shell
make test
```

...or particular scenario using Molecule:

```shell
molecule converge -s default_ext-etcd
molecule verify -s default_ext-etcd
```
