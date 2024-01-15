# MoonLamp

Convert simple LiPO powered LED lamp to IoT device. Look into [Instructables page](https://www.instructables.com/IoT-Moon-Lamp/) for step-by-step guide.

![img](https://content.instructables.com/F2Q/JU81/JYSZ803Q/F2QJU81JYSZ803Q.jpg?auto=webp&frame=1&width=1024&height=1024&fit=bounds&md=e45a99748e1cefee87893ef683b6f787)

## Arduino Code

The ESP8266 connects to your WiFi access point using credentials you input at the start of the code. The MCU obtains an IP address from your router's DHCP server. You can set a debugging flag to view the assigned IP (reserve it in your router's settings for consistent boot IP).

Upon initialization, the MCU continuously follows this routine:

- Checks connection to the AP, reconnecting until successful.

- Waits for a client to send an HTTP request.

Upon request:

- Checks input voltage.
- Determines the current state of LEDs.
- Matches the HTTP request with known LED states (e.g., blue on, orange on, both on, off).
- Simulates button presses to achieve the requested state.

## Android App

The Android app, created using MIT App Inventor, can be downloaded or cloned from this [link](http://ai2.appinventor.mit.edu/?galleryId=6339320163205120) (requires a Google account).

Upon the initial launch, access settings to input your ESP8266 IP address. The entered IP is saved for subsequent program restarts, eliminating the need to re-enter it.

## Moon Server

Alternative for app is simple web server based on nginx.
It serves static html page with control buttons and status window.
ESP8266 IP must be defined with `MOON_LAMP_HOST` env variable in docker-compose.yaml before running container.

```bash
cd moon_server
sudo docker compose up -d
```
