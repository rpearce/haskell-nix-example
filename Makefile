build:
	nix-build

cabal:
	nix-shell --pure -p cabal2nix --run "cabal2nix ." > project.nix

repl:
	nix-shell --pure --run "cabal new-repl"

run:
	result/bin/haskell-nix-example

test:
	nix-shell --pure --run "cabal new-test all"
