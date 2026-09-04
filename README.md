# helm-charts-library

Three reusable Helm charts, linted and install-tested by CI on every
push, published as an installable Helm repo via GitHub Pages.

## Charts
- `generic-webapp` — stateless Deployment + Service
- `simple-cronjob` — configurable CronJob
- `stateful-app` — StatefulSet with a per-pod PVC + headless Service

## Install from this repo
```bash
helm repo add my-charts https://andrii30.github.io/helm-charts-library/
helm repo update
helm install my-app my-charts/generic-webapp
```

## CI
Every push runs `ct lint` + `ct install` against a throwaway `kind`
cluster (see `.github/workflows/lint-test.yaml`). Every push to `main`
re-packages changed charts and republishes the Pages index (see
`.github/workflows/release.yaml`).
