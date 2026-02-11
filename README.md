# Homebrew Tap + Formula Project

This workspace contains two repositories:

- `ipinfo/`: source repo with CLI script
- `homebrew-ipinfo/`: Homebrew tap repo with formula

## 1. Script repo (`ipinfo`)

```text
ipinfo/
  ipinfo
  README.md
  LICENSE
```

### Clean NUL chars (if needed)

```bash
tr -d '\000' < ipinfo > ipinfo.clean
mv ipinfo.clean ipinfo
chmod +x ipinfo
```

### Release tag

```bash
git tag v0.1.0
git push --tags
```

## 2. Tap repo (`homebrew-ipinfo`)

```text
homebrew-ipinfo/
  Formula/
    ipinfo.rb
  README.md
```

Tap naming:

- repo name: `homebrew-ipinfo`
- tap name: `yuxi1989/ipinfo`

## 3. User install flow

```bash
brew tap yuxi1989/ipinfo
brew install ipinfo
ipinfo 8.8.8.8
```

## 4. Maintenance flow

1. Tag a new version in `ipinfo` (for example `v0.2.0`).
2. Update `homebrew-ipinfo/Formula/ipinfo.rb` URL + SHA256.
3. Commit and push the tap repo.
