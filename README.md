# blackscreen

A minimal static website that shows a fully black screen.

Behavior:

- The page is entirely black and fills the full viewport.
- Double-click anywhere on the page to toggle fullscreen on/off.

## Files

- `index.html`: The black-screen page and fullscreen toggle logic.
- `Containerfile`: Minimal non-root container image for serving the static site.

## Use Published GHCR Image

Image:

- `ghcr.io/pgschk/blackscreen:latest`

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

- The container uses `nginxinc/nginx-unprivileged:alpine`, which runs without root permissions.
- The service listens on port `8080`.
