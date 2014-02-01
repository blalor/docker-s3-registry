# Working filesystem-backed Docker registry

Embeds redis as an LRU cache, for hopefully improved performance.

## Example

    docker run -p 5000:5000 \
        -e WORKER_SECRET_KEY=Z \
        -v /path/to/registry/volume:/var/lib/docker/registry \
        blalor/docker-local-registry
