# Building [Hugo](https://gohugo.io) with Go Modules and Athens :tada:

Hey Gophers! We're gonna build [Hugo](https://gohugo.io) with [Go Modules](https://github.com/golang/go/wiki/Modules) and [Athens](https://docs.gomods.io). I gave this demo at my GopherPallooza 2018 Talk called ["Bringing Sanity to your Dependencies with Go Modules and Proxy Servers"](http://gopherpalooza.com/speakers#aaron_schlesinger).

[![asciicast](https://asciinema.org/a/205747.png)](https://asciinema.org/a/205747)

# Run The Demo

Below is how how to do the demo yourself. The instructions are for Linux/Mac OS X systems.

## Check out Hugo Locally

You can do this anywhere on your system:

```
$ git clone https://github.com/gohugoio/hugo.git && cd hugo
```

## Point to Athens

This will make `go` talk to Athens for all its dependencies, not directly to the VCS:

```console
$ export GOPROXY=https://microsoftgoproxy.azurewebsites.net
```

## Clear Local Module Cache

This will force `go` to ask Athens for all the dependencies. You have to run this with `sudo` because the Go toolchain restricts modules to read-only. It tries to keep dependencies immutable too :smile:.

```console
$ sudo rm -r $GOPATH/pkg/mod
```

## Build the Binary!

No need to change your familiar tools to do this:

```console
$ go build .
```

## Test Things Out

Just to make sure things worked properly:

```console
$ ls -al ./hugo
$ ./hugo version
```

## Where to Go from Here

You can use Athens for any project that uses Go modules. Just set GOPROXY to https://microsoftgoproxy.azurewebsites.net in your environment.

But remember, that URL is an experimental Athens server for now. _I recommand that you don't rely on it for production code yet_.

We'll announce a URL more stable soon. Meanwhile, if you want to run your _own_ Athens or learn more, check out docs.gomods.io!

Keep on rockin', Gophers!
