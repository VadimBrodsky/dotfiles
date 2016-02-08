# Installing JVM, Clojure, Leiningen

## Install Java

```bash
sudo apt-get install openjdk-8-jre-headless
```

## Get Leiningen

Ubuntu:
```bash
sudo wget -P /usr/bin/ https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
```

OSX:
```bash
sudo wget -P /usr/local/bin/ https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
```

## Go to /usr/bin and make executable

```bash
cd /usr/bin
sudo chmod a+x lein
```

## Run to install

```bash
lein
```
