# Installing some base DEB package for new setup

## package update

```bash
sudo apt update && sudo apt upgrade
```


## sudo

```bash
apt install sudo
```

```bash
usermod -aG sudo <username>
```

```bash
sudo visudo
```

add the following line
```bash
<username>    ALL=(ALL:ALL) ALL
```






