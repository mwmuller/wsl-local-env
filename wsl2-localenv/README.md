Ensure hyper V is enabled for your PC via the BIOS

open git bash as admin and run the ```wsl-localenv/install-enable-wsl.sh```
select the desired distro for WSL (ubuntu is prefered)
Restart machine to have wsl feature enabled and finalize distro install

Open the distro (ubuntu app) as admin
navigate to the wsl-localenv folder -> ```cd /mnt/<drive>/<path_to_folder>```
run ```sudo ./install_basic_tools.sh``` to install docker image/docker and needed tools for wsl

### Check Docker
 To ensure docker was installed correctly, run ```sudo docker run hello-world```.
 You should receive ```Hello from Docker!```