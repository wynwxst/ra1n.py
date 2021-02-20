import wget
import os

#to be added, making a backup of the old program in a backup location on root drive.
try:
    os.remove("/ra1n-py/ra1n.py")
    print("Old checkra1npython deleted")
except FileNotFoundError:
    print("No old checkra1npython delete.")

linkToUpdate = "https://ftp.he1ios.repl.co/ra1n-py/ra1n.py"
wget.download(linkToUpdate, '/checkra1npythongui/ra1n.py')
print("Update complete, restarting now.")
#if button not being held down dont reboot

os.popen('sudo reboot')
