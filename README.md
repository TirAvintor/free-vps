# Free VPS 🆓️

- Welcome to the **Free VPS** repository.
- Here you will find scripts for creating your own virtual private server (VPS) and configuring it in environments like GitHub Codespaces, CodeSandbox, Firebase Studio, Codeanywhere and others.

## Usage 📋

- Run the script and choose the desired option:
```bash
sudo bash <(curl -s https://raw.githubusercontent.com/TirAvintor/free-vps/refs/heads/main/free-vps.sh)
```

## FAQ 💬

### How to connect to a VPS via SSH?

1. Install SSH __(if not already installed)__:
```bash
sudo apt-get install openssh-server
```

2. Configure the <ins>/etc/ssh/sshd_config</ins> file.

- If you are not sure about the settings, use the ready-made script:
```bash
sudo bash <(curl -s https://raw.githubusercontent.com/TirAvintor/free-vps/refs/heads/main/change-sshd.sh)
```

### Why can't I connect to my VPS anyway?

- Most often, the problem occurs due to closed ports or connection restrictions in the environment where you run the script.
- In this case, it is recommended to use third-party services that allow you to bypass these restrictions and provide access to your VPS.

- One of the most convenient solutions is [Tailscale](https://tailscale.com).

#### Installing Tailscale and configuring SSH

- Run the following script:
```bash
sudo bash <(curl -s https://raw.githubusercontent.com/TirAvintor/free-vps/refs/heads/main/sshd-tailscale.sh)
```

### Is it legal?

- Yes, using these scripts is completely legal.

## Enjoy! ⚡️