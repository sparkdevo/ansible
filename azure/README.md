build image:
$ docker build -t sparkdev/ansible:azure .

docker run --rm \\  
&ensp;&ensp;&ensp;&ensp;-e AZURE_SUBSCRIPTION_ID=xxx \\  
&ensp;&ensp;&ensp;&ensp;-e AZURE_CLIENT_ID=xxx \\  
&ensp;&ensp;&ensp;&ensp;-e AZURE_SECRET=xxx \\  
&ensp;&ensp;&ensp;&ensp;-e AZURE_TENANT=xxx \\  
&ensp;&ensp;&ensp;&ensp;--mount type=bind,source=${PWD},target=/workdir \\  
&ensp;&ensp;&ensp;&ensp;-w=/workdir \\  
&ensp;&ensp;&ensp;&ensp;sparkdev/ansible:azure ansible-playbook test.pb.yml
