## Create ns istio-system
kubectl create ns istio-system

##Gerando yaml personalizados
helm template install / kubernetes / helm / istio \ 
  --set global.mtls.enabled = false \ 
  --set tracing.enabled = true \ 
  --set kiali.enabled = true \ 
  --set grafana.enabled = true \ 
  - -namespace istio-system> istio.yaml
  
  
  ##Aplique os yaml gerados
  kubectl apply -f istio.yaml
  
  ## Injecao sidecar 
  
  kubectl label namespace default istio-injection=enabled
  
  ## Status pods istio-system
  
  kubectl get pods -n istio-system
  
