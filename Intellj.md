### Workaround for unresponsive keyboard on Ubuntu 20.04
https://youtrack.jetbrains.com/issue/IDEA-23472

Restart ibus-daemon to unlock keyboard input (run ibus-daemon -rd). To prevent further locks:

1. Go to IDE "Help | Edit Custom VM options..."
2. Add -Drecreate.x11.input.method=true to a new line
3. Restart IDE
