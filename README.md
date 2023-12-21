# Scroll pHAT HD clock

A simple Debian package which provides a `sphd-clock` service.

## Installing

You can either download a pre-built deb file, or build one yourself.

To install a pre-build deb file, [download it](https://github.com/liamnewmarch/sphd-clock/releases/) and run:

```sh
wget https://github.com/liamnewmarch/sphd-clock/releases/download/v1.2/sphd-clock_1.2-1_all.deb
dpkg --install sphd-clock_1.1-1_all.deb
```

To build the deb file yourself, run:

```sh
git clone https://github.com/liamnewmarch/sphd-clock.git
cd sphd-clock
make install
```

## Starting the service

After installing package, use systemd to start and stop the service.

First reload the available services and check that `sphd-clock` is available:

```sh
sudo systemctl daemon-reload
sudo systemctl status sphd-clock
```

You can start and stop the service by running:

```sh
sudo systemctl start sphd-clock
sudo systemctl stop sphd-clock
```

To start the service when the Raspberry Pi boots, enabled it; disabling undoes this:

```sh
sudo systemctl enable sphd-clock
sudo systemctl disable sphd-clock
```
