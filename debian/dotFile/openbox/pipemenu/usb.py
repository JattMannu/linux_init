import json
import subprocess

process = subprocess.run("/usr/bin/lsblk --paths  --json -o NAME,MOUNTPOINT,UUID,VENDOR,MODEL".split(), 
                            capture_output=True, text=True)

# blockdevices is a dictionary with all the info from lsblk.
# Manipulate it as you wish.
blockdevices = json.loads(process.stdout)



print ('<?xml version=\"1.0\" encoding=\"UTF-8\"?>')
print ('<openbox_pipe_menu>')
for hd in blockdevices["blockdevices"]:
    for part in hd["children"]:
        # print(part["name"])
        print ('<item label="'+ part["name"].split("/")[-1]+' '+hd["model"]+'">')
        print('<action name="Execute"><execute>x-terminal-emulator -e "sudo mkdir -p /media/'+part["uuid"]+' &amp;&amp; sudo mount -o umask=000 '+part["name"]+' /media/' + part["uuid"] + ' ||  pcmanfm /media/'+part["uuid"] +'"</execute></action>')
        # print('<action name="Execute"><execute>x-terminal-emulator -e "echo \" sudo mkdir -p /media/'+part["uuid"]+' &amp;&amp; sudo mount -o umask=000 '+part["name"]+' /media/' + part["uuid"] + ' ||  pcmanfm /media/'+part["uuid"] +' \" |  xclip -selection clipboard "</execute></action>')
        print ('</item>')
print ('</openbox_pipe_menu>')

