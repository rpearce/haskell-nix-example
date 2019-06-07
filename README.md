# haskell-nix-example

## Steps to reproduce

1. `λ mkdir my-project && cd $_`
1. `λ nix-shell --packages ghc --run 'cabal init'`
1. _answer `cabal init` CLI questions_
1. _copy `default.nix`, `pkgs.nix`, `release.nix` and `shell.nix`_ files
1. _copy `Makefile`, but update `run` to use the project's executable name_
1. pin `nixpkgs` and save to a `.json` file
    * using latest commit sha: `λ nix-prefetch-git https://github.com/NixOS/nixpkgs.git > nixpkgs.json`
    * or at a specific one: `λ nix-prefetch-git https://github.com/NixOS/nixpkgs.git 05z8iqgpv0pzrwxvjkjwn03kz07dq2y4bv9wdclb2i4f2sh75dlh > nixpkgs.json`
1. `λ make cabal` _(runs `cabal2nix` to generate `project.nix`)_
1. `λ make build` _(runs `nix-build`)_
1. _wait for a while_
1. `λ make test` _(run the tests)_
1. `λ make run` _(test it out!)_

## Resources
* https://github.com/Gabriel439/haskell-nix
* https://github.com/utdemir/example-hs-nix
