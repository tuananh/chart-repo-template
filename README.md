# Chart Repo Template

A chart repo template

- Publish chart to ghcr.io using OCI format.
- GitHub Actions for CI/linting and publishing, using [`helm/chart-testing`](https://github.com/helm/chart-testing).
- `helm-docs` to make sure charts' README are up-to-date.

## Usage

```shell
# login to registry and then
helm pull oci://ghcr.io/tuananh/chart-repo-template/example-chart --version 1.0.8
```

## License

[LICENSE](./LICENSE)