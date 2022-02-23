# <img src="logo.png" alt="vs code logo" width="60" /> balenaRTLSDR

balenaRTLSDR is a project to use a RTL-SDR dongle with your Raspberry Pi!

It's inspired by and has borrowed code from the following repos and forum threads:

* [balena-ads-b](https://github.com/ketilmo/balena-ads-b)
* [deploy-rtl-sdr](https://github.com/mikenye/deploy-rtl-sdr).


Thanks to [ketilmo](https://github.com/ketilmo/), [mikenye](https://github.com/mikenye/)

---

### Equipment Needed
* Raspberry Pi (tested on Pi4)
* RTL-SDR Dongle (tested with a rtl-sdr.com one)
---
### Install
Running this project is as simple as deploying it to a balenaCloud application. You can deploy it in one click by using the button below:

[![balena deploy button](https://www.balena.io/deploy.svg)](https://dashboard.balena-cloud.com/deploy?repoUrl=https://github.com/javiercp/balenaRTLSDR)

---
### Using balenaRTLSDR

* Type `<device-ip>:8073` in a browser window _(You can find your device IP address in the Balena Console)_  
* The default admin user  `admin` 
* The default password for the admin user when deployed with the balena deploy button is `b@13n4!` else the password is `password`
 
---
### Device Variables
|Env Variable / Default Value|Function|
|---|---|
|OPENWEBRX_ADMIN_USER=admin|Admin user for OpenWebRX. Default is admin. 
|OPENWEBRX_ADMIN_PASSWORD=password|for Admin User|
