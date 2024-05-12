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

### Troubleshooting (Added at the top)
    Depending on the Distro you selected, the install scripts will fail. You may need to convert
    then to unix from dos.
    Use the following commands to do so:
    1) Run ```apt-get install dos2unix``` to download dos2unix
    2) Convert all scripts with ```dos2unix.ece install* docker/docker*``` This should convert all 6 scripts
    3) Re-run the effected scripts.