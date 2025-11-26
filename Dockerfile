FROM bitnamilegacy/etcd:3.5.7

# Use build arguments to determine architecture
ARG TARGETARCH

# Copy the appropriate etcd binary based on architecture to overwrite the bitnami binary
COPY etcd-${TARGETARCH} /opt/bitnami/etcd/bin/etcd

# Set executable permissions
RUN chmod +x /opt/bitnami/etcd/bin/etcd