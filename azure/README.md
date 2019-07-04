build image:  
```sh
$ docker build -t sparkdev/ansible:azure .
```

run playbook:  
```sh
$ docker run --rm \\  
    -e AZURE_SUBSCRIPTION_ID=xxx \\  
    -e AZURE_CLIENT_ID=xxx \\  
    -e AZURE_SECRET=xxx \\  
    -e AZURE_TENANT=xxx \\  
    --mount type=bind,source=${PWD},target=/workdir \\  
    -w=/workdir \\  
    sparkdev/ansible:azure ansible-playbook test.pb.yml
```
