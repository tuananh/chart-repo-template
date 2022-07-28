# Chart Repo Template

A chart repo template

- Publish chart to ghcr.io using OCI format as well as GitHub Pages for maximum compatibility.
- GitHub Actions for CI/linting and publishing, using [`helm/chart-testing`](https://github.com/helm/chart-testing).
- `helm-docs` to make sure charts' README are up-to-date.

## Usage

```shell
# login to registry and then
helm pull oci://ghcr.io/tuananh/chart-repo-template/example-chart --version 0.1.0
```

## License

[LICENSE](./LICENSE)