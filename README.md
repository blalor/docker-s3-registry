# Working S3-backed Docker registry

Embeds redis as an LRU cache, for hopefully improved performance.

## Example

    docker run -p 5000:5000 \
        -e AWS_BUCKET=W \
        -e AWS_KEY=X \
        -e AWS_SECRET=Y \
        -e WORKER_SECRET_KEY=Z \
        blalor/s3-registry
