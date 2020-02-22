Reinstall if installation of Prerequisites fails:


# add Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

usermod -aG docker lx00<index>

curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
#terraform
sudo apt install unzip
curl -LO https://raw.github.com/robertpeteuil/terraform-installer/master/terraform-install.sh
chmod +x terraform-install.sh
./terraform-install.sh -a

---------------

Docker commands


Exercise 1

docker –version
docker run hello-world
docker images
docker ports
docker ps-a
docker search nginx
docker run -d -p 8080:80 nginx
docker container ls --all
docker container logs <containername>
PATH is /usr/share/nginx/html


Exercise 3
cd tf
Edit acr.tf file

az login -u lab1user<index>@FirstWaveBASF.onmicrosoft.com -p <your password>
terraform init
terraform plan 
terraform apply
docker login -u -p  (command out of the terraform)
docker tag local remote
docker push remote

edit webapp.tf
terraform plan
terraform apply

check website ...azurewebsites.net


