---
title: Environment Variables
toc_order: 2
---

# Environment Variables

## Kontena Master

- `MONGODB_URI`: MongoDB connection uri (required)
- `VAULT_KEY`: secret key for the Kontena Vault (required)
- `VAULT_IV`: initialization vector for the Kontena Vault (required)
- `WEB_CONCURRENCY`: number of forked master api processes (default: 1)
- `MAX_THREADS`: number of threads inside single master api process (default: 8)
- `LOG_LEVEL`: logging level
- `ACME_ENDPOINT`: acme endpoint for Let's Encrypt
- `AUTH_API_URL`: specifies authentication server url (default: https://auth.kontena.io)

## Kontena Agent

- `KONTENA_URI`: Kontena Master websocket uri (required)
- `KONTENA_TOKEN`: Kontena Grid token (required)
- `KONTENA_PEER_INTERFACE`: network interface for peer/private communication (default: eth1)
- `KONTENA_PUBLIC_IP`: specify node public ip, overrides default resolving
- `KONTENA_PRIVATE_IP`: specify node private ip, overrides default resolving
- `LOG_LEVEL`: logging level
- `ETCD_IMAGE`: etcd image (default: kontena/etcd)
- `ETCD_VERSION`: etcd image version
- `CADVISOR_IMAGE`: cadvisor image (default: kontena/cadvisor)
- `CADVISOR_VERSION`: cadvisor image version
- `WEAVE_IMAGE`: weave net image (default: weaveworks/weave)
- `WEAVEEXEC_IMAGE`: weave exec image (default: weaveworks/weaveexec)
- `WEAVE_VERSION`: weave net version