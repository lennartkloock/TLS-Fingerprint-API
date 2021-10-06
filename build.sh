# For macos install osxcross: https://wapl.es/rust/2019/02/17/rust-cross-compile-linux-to-macos.html

case "$1" in
windows)
  GOARCH=amd64 GOOS=windows go build -o build/win/TLS-Fingerprint-API.exe
  x86_64-w64-mingw32-strip build/win/TLS-Fingerprint-API.exe
  ;;
linux)
  GOARCH=amd64 GOOS=linux go build -o build/linux/TLS-Fingerprint-API
  strip build/linux/TLS-Fingerprint-API
  ;;
darwin)
  GOARCH=amd64 GOOS=darwin go build -o build/darwin/TLS-Fingerprint-API
  x86_64-apple-darwin14-strip build/darwin/TLS-Fingerprint-API
  ;;
esac
