import subprocess
import re

state = subprocess.Popen(['setxkbmap', '-query'] , stdout = subprocess.PIPE)
output = str(state.communicate())

if(re.search(' us', output)):
    subprocess.Popen(['setxkbmap', '-model', 'asus_laptop', '-layout', 'ca', '-variant', 'fr-legacy'])
else:
    subprocess.Popen(['setxkbmap', '-model', 'asus_laptop', '-layout', 'us'])

#setxkbmap -model asus_laptop -layout us
#setxkbmap -model asus_laptop -layout ca -variant fr-legacy
