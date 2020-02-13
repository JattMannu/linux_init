Install OpenJDK 12
```
brew tap AdoptOpenJDK/openjdk
brew cask install adoptopenjdk12

java -version
which java
```


Install ZSH to get auto-complete :https://ohmyz.sh/
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

How to check where the symbolic file is linked to 
```
ls -la
```
The l infront means its a linked file
lrwxr-xr-x    1 root   wheel         74 Feb 13 09:49 java -> /System/Library/Frameworks/JavaVM.framework/Versions/Current/Commands/java
