# homebrew-ipinfo

Homebrew tap for installing `ipinfo`.

## Tap and install

```bash
brew tap yuxi1989/ipinfo
brew install ipinfo
```

## Update formula for a new release

1. Create and push a new tag in `ipinfo` repo, e.g. `v0.2.0`.
2. Update `Formula/ipinfo.rb`:
   - `url` to the new release tarball
   - `sha256` to the new checksum
3. Commit and push this tap repo.
