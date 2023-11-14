## get argocd initial pass
`kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo
`

## Source

https://longhorn.io/

https://k3s.io/

https://community.traefik.io/t/rancher-k3s-build-in-traefik-ingress-not-connecting-to-https-backend-service/19320