## Setting up WSL and Hyper V

1) Ensure hyper V is enabled for your PC via the BIOS (Depending on your CPU manufacturer, this can be achieved by run running the next command)

2) open git bash as admin and run the ```wsl-localenv/install-enable-wsl.sh```
3) Select the desired distro for WSL (ubuntu is used for this petalinux version)
4) Restart machine to have wsl feature enabled and finalize distro install
    - Look for the ```"Linux"``` -> ```Ubuntu``` folder in your file explorer (You should see ```username@DESKTOP-XXXXXXX:~$```)

5) Open the distro (ubuntu app) as admin
6) navigate to the wsl-localenv folder -> ```cd /mnt/<drive>/<path_to_folder>```
run ```sudo ./install_basic_tools.sh``` to install docker image/docker and needed tools for wsl

### Check Docker
 To ensure docker was installed correctly, run ```sudo docker run hello-world```.
 You should receive ```Hello from Docker!```

### Petalinux Repo
    The repo should be clone via the ```install_basic_tools.sh``` script, however if it fails:
    1) Open the ```Ubuntu``` app and run: ```git clone https://github.com/mwmuller/petalinux_wsl.git``` from /home/<user>/ to clone it

### Bashrc args (Maybe do this automatically)
1) Open your WSL distro and ```sudo nano``` (Or preferred editor) the bashrc file

### Troubleshooting (Added at the top)
Depending on the Distro you selected, the install scripts will fail. You may need to convert
then to unix from dos.
Use the following commands to do so:
1) Run ```apt-get install dos2unix``` to download dos2unix
2) Convert all scripts with ```dos2unix.exe install* docker/docker*``` This should convert all 6 scripts
3) Re-run the effected scripts.

