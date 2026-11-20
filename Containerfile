# Non-root nginx (uid 101), listens on 8080. Pinned by digest; Renovate
# opens PRs for updates, and each one rebuilds the image.
FROM nginxinc/nginx-unprivileged:1.31.7-alpine@sha256:b5047b9b76845eac124358373c6852377c52e4b05834a47647e955dd91cb8f1e

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 8080
