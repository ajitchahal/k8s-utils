# k8s-utils
k8s utilities 

### 
#### test a port is open
nc -zv nginx-test 80

#### send some text to url:
nc -v nginx-test 80
abcd + Enter


#### write output of a url response to standard output
wget -O - nginx-test
wget -O - nginx-test > /dev/null

###
kubectl label namespace default istio-injection=enabled/disabled

---

# Istio installation 
https://istio.io/latest/docs/setup/platform-setup/kind/

https://kind.sigs.k8s.io/docs/user/quick-start/

https://istio.io/latest/docs/setup/install/helm/

https://istio.io/latest/docs/tasks/security/authentication/mtls-migration/#lock-down-mutual-tls-for-the-entire-mesh

---

## Verifying-mtls-between-services 

https://discuss.istio.io/t/verifying-mtls-between-services/5539/3 
```bash
istioctl x describe pod nginx-test-deployment-74b86c8867-96txl              1 ↵  14:34:50 
Pod: nginx-test-deployment-74b86c8867-96txl
   Pod Revision: default
   Pod Ports: 8080 (nginx), 15090 (istio-proxy)
Suggestion: add 'version' label to pod for Istio telemetry.
--------------------
Service: nginx-test
   Port: http 80/HTTP targets pod port 8080
--------------------
Effective PeerAuthentication:
   Workload mTLS mode: STRICT
Applied PeerAuthentication:
   default.istio-system
Skipping Gateway information (no ingress gateway pods)
```
 mTLS mode: PERMISSIVE, mtls is disabled
 mTLS mode: STRICT
