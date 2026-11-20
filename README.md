# blackscreen

A minimal static website that shows a fully black screen.

Behavior:

- The page is entirely black and fills the full viewport.
- Double-click anywhere on the page to toggle fullscreen on/off.

## Files

- `index.html`: The black-screen page and fullscreen toggle logic.
- `Containerfile`: Minimal non-root container image for serving the static site.

## Use Published GHCR Image

Images, all signed with cosign (keyless) and with a CycloneDX SBOM and
build provenance attached:

- `ghcr.io/pgschk/blackscreen:latest`: the newest release
- `ghcr.io/pgschk/blackscreen:vX.Y.Z`, `:vX.Y`, `:vX`: GitHub releases
- `ghcr.io/pgschk/blackscreen:main`: rolling, rebuilt on every push to `main`

Verify the signature:

```bash
cosign verify ghcr.io/pgschk/blackscreen:latest \
  --certificate-identity-regexp '^https://github\.com/pgschk/blackscreen/\.github/workflows/build\.yaml@' \
  --certificate-oidc-issuer https://token.actions.githubusercontent.com
```

Run with Podman:

```bash
podman run --rm -p 8080:8080 ghcr.io/pgschk/blackscreen:latest
```

Run with Docker:

```bash
docker run --rm -p 8080:8080 ghcr.io/pgschk/blackscreen:latest
```

Open:

- <http://localhost:8080>

## Run with Podman

Build:

```bash
podman build -t blackscreen .
```

Run:

```bash
podman run --rm -p 8080:8080 blackscreen
```

Open:

- <http://localhost:8080>

## Run with Docker

Build:

```bash
docker build -t blackscreen .
```

Run:

```bash
docker run --rm -p 8080:8080 blackscreen
```

Open:

- <http://localhost:8080>

## Notes

- The container uses `nginxinc/nginx-unprivileged` (Alpine), pinned by digest, which runs without root permissions.
- The service listens on port `8080`.

## Release

Create a GitHub release with a new `vX.Y.Z` tag on `main`. CI only tags an
image after it passed the Trivy scan (`vex/openvex.json` and
`.trivyignore.yaml` list the reviewed exceptions); a weekly workflow
rescans `:main` and the newest release.
