# Helm v3 Namespace Plugin

This plugin is meant to be used as a simple drop in replacement for
auto-creation of namespaces in Helm v3. This feature was removed in Helm v3 for
some good reasons, but there is still a need to handle creating a namespace in
some cases. It is drop dead simple and does a simple `kubectl apply` with the
most basic of namespace object so as to not override any settings that may
already be there.

## Installation
This plugin requires `kubectl` to be installed and available on your `$PATH`.

Installation is as simple as running:

```shell
$ helm plugin install https://github.com/thomastaylor312/helm-namespace
```

## Usage
You can pass all of the same arguments you would to `helm` normally:

```shell
$ helm namespace install foo --set foo=bar stable/wordpress -n foo
```
