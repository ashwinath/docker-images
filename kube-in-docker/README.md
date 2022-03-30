# Local Kubernetes Setup

# Spin up

Issue the command `docker-compose up -d` to start the Kubernetes cluster.

# Accessing the cluster

The kubeconfig file can be found in /tmp/kubeconfig. Setting the environment variable KUBECONFIG=/tmp/kubeconfig will allow you to access the cluster.

# Tear down

Issue the command `docker-compose down -v` to destroy the Kubernetes cluster.
