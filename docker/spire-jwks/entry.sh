#!/bin/sh
if [ -f "/run/spire/jwks/provider.sock" ]; then
  echo "Removing stale provider.sock"
  rm /run/spire/jwks/provider.sock
fi

/usr/bin/dumb-init /opt/spire/bin/oidc-discovery-provider "$@"
