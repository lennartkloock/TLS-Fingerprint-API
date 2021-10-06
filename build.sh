case "$1" in
windows)
  GOARCH=amd64 GOOS=windows go build -o build/win/TLS-Fingerprint-API.exe
  ;;
linux)
  GOARCH=amd64 GOOS=linux go build -o build/linux/TLS-Fingerprint-API
  ;;
darwin)
  GOARCH=amd64 GOOS=darwin go build -o build/darwin/TLS-Fingerprint-API
  ;;
esac
