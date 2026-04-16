
# Update package versions in lock
nix flake update

# Rebuild system
darwin-rebuild switch --flake .#air

