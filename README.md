# Uptime Kuma Probe Extension

By Karel Cermak | [Karlosoft](https://karlosoft.com).

<img src="https://cdn.karlosoft.com/cdn-data/ks/img/kprobe/github.png" width="700" alt="Uptime Kuma Probe Extension">

## What is Uptime Kuma Probe Extension?
- **Uptime Kuma excels at service monitoring and notifications, but it cannot reach devices hidden behind your internal network or VPN.**
- This extension fills that gap by running **inside your LAN**, checking local devices (Wi-Fi access points, cameras, internal services, etc.) and exposing their status through an **HTTP API** that your main Uptime Kuma instance can query.
- It is lightweight, easy to deploy, and works independently of your primary Uptime Kuma installation.

<br>

## How it works?
1. Set up a small Linux machine (Ubuntu Server recommended) inside your local network.
2. Install this extension following the steps in the [FAQ.md](FAQ.md).
3. Configure the scans you want to run.
4. In Uptime Kuma, create a **standard HTTP monitor** pointing to the Probe API endpoint.
   - The API returns a success or failure response depending on the scan results, allowing Uptime Kuma to monitor internal services **without direct access** to that network.


<br>


## Features
- **ICMP ping checks** with configurable timeouts
- **HTTP requests** with timeout, expected status code validation, and optional keyword matching
- Simple configuration editor and CLI tools
- Dedicated API server for integration with Uptime Kuma or other systems

<br>

## Can I use it without Uptime Kuma?
- Yes — the API can be queried directly if you just need a simple, local monitoring tool.

- Keep in mind:
    - This extension does **not** send notifications.
    - There are no plans to add notification features.

<br>

## Getting Started
- Installation, uninstallation, and other tips are available in the [FAQ.md](FAQ.md).


<br>
<br>

---

#### This project is not affiliated with Uptime Kuma. This is just a simple probe extension for monitoring tool Uptime Kuma. Developed by Karel Cermak (info@karlosoft.com).