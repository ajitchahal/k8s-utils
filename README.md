# k8s-utils
k8s utilities 

### 
#### test a port is open
nc -zv nginx-test 80

#### send some text to url:
nc -zv nginx-test 80

#### write output of a url response to standard output
wget -O - nginx-test > /dev/null
