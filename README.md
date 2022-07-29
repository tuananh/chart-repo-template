# Chart Repo Template

A chart repo template

- Publish chart to ghcr.io using OCI format as well as [GitHub Pages](https://tuananh.github.io/chart-repo-template) for maximum compatibility.
- GitHub Actions for CI/linting and publishing, using [`helm/chart-testing`](https://github.com/helm/chart-testing).
- `helm-docs` to make sure charts' README are up-to-date.

## Usage

Using ghcr.io

```shell
# login to registry and then
helm pull oci://ghcr.io/tuananh/chart-repo-template/example-chart --version 0.1.0
```

Using legacy registry

```shell
helm repo add chart-repo-template https://tuananh.github.io/chart-repo-template/
helm pull chart-repo-template/example-chart
```

## License

[LICENSE](./LICENSE)
