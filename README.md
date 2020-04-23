This repo contains a [pre-commit](https://pre-commit.com/) hook for
[ocamlformat](https://github.com/ocaml-ppx/ocamlformat#ocamlformat).

## Setup

This doesn't sandbox the command at all, so you'll need `ocamlformat` available locally:

```bash
opam install ocamlformat
```

Note: There's a [docker](https://github.com/arenadotio/pre-commit-ocamlformat/tree/docker) branch
which sandboxes this, but it's a lot slower and barely tested.

## Usage

In your .pre-commit-config.yaml:

```yaml
- repo: https://github.com/arenadotio/pre-commit-ocamlformat
  rev: master # or pick a commit sha I guess
  hooks:
    - id: ocamlformat
```

Note: ocamlformat will get confused if you try to run it against vendored files, so you may need add
an exclude filter like:

```yaml
- repo: https://github.com/arenadotio/pre-commit-ocamlformat
  rev: master
  hooks:
    - id: ocamlformat
      exclude: "^vendor/"
```