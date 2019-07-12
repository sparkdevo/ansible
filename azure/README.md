build image:  
```sh
$ docker build -t sparkdev/ansible:azure2.8 .
```

run playbook:  
```sh
$ docker run --rm \  
    -e AZURE_SUBSCRIPTION_ID=xxx \  
    -e AZURE_CLIENT_ID=xxx \  
    -e AZURE_SECRET=xxx \  
    -e AZURE_TENANT=xxx \  
    --mount type=bind,source=${PWD},target=/workdir \  
    -w=/workdir \  
    sparkdev/ansible:azure2.8 ansible-playbook test.pb.yml
```
