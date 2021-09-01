import os

print ('<?xml version=\"1.0\" encoding=\"UTF-8\"?>')
print ('<openbox_pipe_menu>')
for folder in os.listdir("/media/"):
    print ('<item label="'+ folder + '">')
    print('<action name="Execute"><execute>x-terminal-emulator -e "sudo umount /media/'+folder+'"</execute></action>')
    print ('</item>')
print ('</openbox_pipe_menu>')
