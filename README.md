# Elm Skeleton

This library uses [Hi](https://github.com/fujimura/hi) to scaffold an elm-html-based Elm app. It features the following:

- Ready for testing with [Elm-Test](http://github.com/deadfoxygrandpa/Elm-Test)
- Ready to compile CSS using Sass
- Makefile for building the app with stylesheets
- Bower for including CSS dependencies (comes with [Bourbon](http://bourbon.io) & [Normalize.css](https://necolas.github.io/normalize.css/))
- Watcher that rebuilds Elm app (in the event that you are using ports, `pushState` or any other reason `elm-reactor` may not be good enough)
- Watcher that reruns tests when test or source files change
- Make tasks for starting watchers, installing dependencies, etc.

### Getting Started

Note: These instructions assume you have a Haskell environment with `cabal`. If not, please research installing Haskell on your platform.

Install hi by running `cabal install hi`. Scaffold an app by running:

```
hi -p <PACKAGE NAME> -m <MODULE NAME> -a <AUTHOR NAME> -e <AUTHOR EMAIL> -r https://github.com/joefiorini/hi-elm.git
```

where `PACKAGE NAME` is the name of your package (eg. `flittal` or `elm-html`) and `MODULE NAME` is the name you would use in Elm code (eg. `Html` or `Graphics`). `AUTHOR NAME` and `AUTHOR EMAIL` should include your name and email. This is for the requisite fields in `elm-package.json`.

To simplify running this, I'd recommend creating a function in your `.bashrc` or `.zshrc` like so:

```
elm-init() {
  hi -p $1 -m $2 -a "Your Name" -e you@example.com -r https://github.com/joefiorini/hi-elm.git
}
```

Hardcoding your name & email will give you less to type :)

Run this with:

```
elm-init <PACKAGE NAME> <MODULE NAME>
```

### Dependencies for Development Tools

To use the watchers you'll need `entr` and `daemontools`. On OSX, you can install these by running `make deps`. If you're on Linux open `deps.mk` in an editor and change the values of the `ENTR` and `DAEMONTOOLS` variables to install from your given package manager. If you're on Windows, I don't know what tools are available for this, so unfortunately, I can't help you there.

### Using the Development Tools

To run the build watcher, use `make watch`. If you want to run the test watcher run `make test_watch`. To fire up `elm-reactor` use `elm serve`.

### Running the Tests Manually

To run the tests manually just run `make test`. This will build the runner using the Elm `IO` library and run tests via the command line.

### Contributing

Pull requests to improve the workflow are welcome! Note I will not accept pull requests that add support for other CSS preprocessors.

If you add any files that you want to be part of the generated scaffold, make sure the file ends in `.template` like the other files in this repo. If you make changes to any `.template` files, know that `$` is reserved in `Hi` templates. Escape them by using `$$`.

### Questions, Problems?

Open an issue on this repo, please. I may have missed something in this documentation and would appreciate knowing what's confusing to others.
