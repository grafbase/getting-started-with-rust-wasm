{
  # Nix: https://nixos.org/download.html
  # How to activate flakes: https://nixos.wiki/wiki/Flakes
  # For seamless integration, consider using:
  # - direnv: https://github.com/direnv/direnv
  # - nix-direnv: https://github.com/nix-community/nix-direnv
  #
  # # .envrc
  # use flake
  # dotenv .env
  #
  description = "Getting started with Rust and WebAssembly";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    { self
    , nixpkgs
    , flake-utils
    , ...
    }:
    let
      inherit (nixpkgs.lib) optional;
      systems = flake-utils.lib.system;
    in
    flake-utils.lib.eachDefaultSystem
      (system:
      let
        pkgs = import nixpkgs {
          inherit system;
        };
      in
      {
        devShell = pkgs.mkShell {
          nativeBuildInputs = with pkgs;
            [
              cargo-make
              deno
              nodejs
              nodePackages.prettier
              rustup
              wasm-pack
            ]
            ++ optional (system == systems.aarch64-darwin) [
              darwin.apple_sdk.frameworks.Security
              darwin.apple_sdk.frameworks.CoreFoundation
              darwin.apple_sdk.frameworks.CoreServices
            ];

          shellHook = ''
            export CARGO_INSTALL_ROOT="$(git rev-parse --show-toplevel)/.cargo"
            export PATH="$CARGO_INSTALL_ROOT/bin:$PATH"
          '';
        };
      });
}
        
