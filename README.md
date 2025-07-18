## Install Docker 

Install yum-utils package, which provides utilities for managing Yum repositories and packages.
```
sudo yum install -y yum-utils
```

Add the Docker CE repository to the Yum configuration manager.
```
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
```

Install Docker CE, Docker CLI, containerd.io, docker-buildx-plugin, and docker-compose-plugin using Yum.
```
sudo yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
```

Check the status of the Docker service using systemctl.
```
systemctl enable docker.service
systemctl start docker.service
systemctl status docker.service
```

Run the "hello-world" Docker container to verify the Docker installation.
```
sudo docker run hello-world
```

## Download and Run Python Flask Image

Pull the image from Docker Hub
```
docker pull tareqtech/flask
```

Run the Docker container
```
docker run -dit --name web -p 80:5000 tareqtech/flask
```


Open Google chrome and run your IP with ports 80
```
http://<IP Address>:80
```
