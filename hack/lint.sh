#!/bin/bash
# This script runs the chart-testing tool locally. It simulates the linting that is also done by the github action. Run this without any errors before pushing.
# ref: https://github.com/helm/chart-testing

# NOTE: since we're working with OCI registry so we need to wait til this PR lands
# https://github.com/helm/chart-testing/pull/445
# also, OCI registry is private by default so we need to pass in credentials as well.

set -eux

SRCROOT="$(cd "$(dirname "$0")/.." && pwd)"

echo -e "\n-- Linting all Helm Charts --\n"
docker run \
     -v "$SRCROOT:/workdir" \
     --entrypoint /bin/sh \
     quay.io/helmpack/chart-testing:v3.6.0-arm64 \
     -c cd /workdir \
     ct lint \
     --config .github/configs/ct-lint.yaml \
     --lint-conf .github/configs/lintconf.yaml \
     --debug