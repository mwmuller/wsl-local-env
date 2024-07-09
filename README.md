### Setting up WSL and Hyper V

1) Ensure hyper V is enabled for your PC via the BIOS (Depending on your CPU manufacturer, this can be achieved by run running the next command)

#### Petalinux Installer and WSL
2) open git bash as admin and run the ```wsl-localenv/install-enable-wsl-get-ptlnx.sh```
3) The URL for downloading petalinux should popup while the distro is installing.
4) Once you've downloaded the installer ```petalinux-v2019.2-final-installer.run```<br />
copy it to the ```\\wsl.localhost\Ubuntu\home\<username\>\petalinux_wsl``` directory, which is in your wsl environment. 

#### WSL Distro
1) The selected distro for petalinux will be ubuntu
2) Restart machine to have wsl feature enabled and finalize distro install
    - Look for the ```"Linux"``` -> ```Ubuntu``` folder in your file explorer

### Installing Basic Tools and Clone Repo
1) Open the ```Ubuntu``` app as admin (you should see ```username@DESKTOP-XXXXXXX:~$```)
2) navigate to the wsl-localenv folder -> ```cd /mnt/<drive>/<path_to_folder>```
2) run ```sudo ./install_basic_tools.sh``` to install docker image/docker and needed tools for wsl
#### Petalinux Repo
    - The repo should be clone via the ```install_basic_tools.sh``` script, however if it fails:
    - run: ```git clone https://github.com/mwmuller/petalinux_wsl.git```
    
### Check Docker
To ensure docker was installed correctly, run ```sudo docker run hello-world```.
You should receive ```Hello from Docker!```

### VScode

Devcontainers are used with vscode so you'll need to install that before continuing. 
Open the ```petalinux_wsl``` repo in vscode (right click context menu) and follow the repo ```README.md``` <br \>
to continue!
This can be done from the ```Ubuntu``` shell with:
1) ```cd petalinux_wsl``` into the directory
2) Open VScode with this command:  ```\<Username\>@:~$ Code .```

### Troubleshooting (Added at the top)
Depending on the Distro you selected, the install scripts will fail. You may need to convert
then to unix from dos.
Use the following commands to do so:
1) Run ```apt-get install dos2unix``` to download dos2unix
2) Convert all scripts with ```dos2unix.exe install* docker/docker*``` This should convert all 6 scripts
3) Re-run the effected scripts.

### WSL shutdown
If you're environment ever complains of locked resources or processes you can run ```wsl --shutdown```
from Git bash on your main machine to kill the instance. It should start up automatically afterwards.

### WSL Shrink
- If you notice your drive is getting low on space this process may help reduce the virtual drive space
1) Open ```git bash``` as admin and shutdown wsl: ```wsl --shutdown```
2) Then run ```diskpart```
3) ```select vdisk file="C:\Users\**user**\AppData\Local\Packages\CanonicalGroupLimited.Ubuntu...\LocalState\ext4.vhdx"```
- This will ask you to select the ```ext4.vhdx``` file of the subsystem found:
> - ```"C:\Users\valorin\AppData\Local\Packages\CanonicalGroupLimited.Ubuntu...\LocalState\ext4.vhdx"```

## Note
If this script fails, out-of-date/system mismatch, the instructions can be found here: https://stephenreescarter.net/how-to-shrink-a-wsl2-virtual-disk/