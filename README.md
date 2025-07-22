
# nix-llama

An easy to deploy nix flake with Ollama and OpenWebUI.

---

## 🧠 Overview

This project uses **Nix** (a declarative, reproducible package manager) to create a consistent environment for working with Llama models. It includes configurations for installing dependencies, setting up hardware acceleration (e.g., CUDA, ROCm), and managing versioned software stacks.

---

## 📦 Requirements

- **GPU support** (optional but recommended for faster inference/training):
  - NVIDIA GPU + CUDA toolkit
  - AMD GPU + ROCm
- **System resources**:
  - At least **8GB RAM** (more for larger models)
  - **SSD storage** for models

---

## Enabling Flakes

If you haven't enabled flakes yet, add the following to your Nix configuration:

```nix
# Add this in your configuration.nix
nix.settings.experimental-features = [ "nix-command" "flakes" ];
```

```bash
# Run after updating your configuration.nix
sudo nixos-rebuild switch

# After this, you will need to run the following command when you make changes to your flake
sudo nixos-rebuild switch --flake .#hostname
```
---

##  Installation of this flake

1. **Clone the repository**:
   ```bash
   git clone https://github.com/randoneering/nix-llama.git
   cd nix-llama
   ```
2. **Add your configurations**:
  Input your hostname, server-ip, and relevant information in the flake. Once completed..
  ```bash
  sudo nixos-rebuild switch --flake .#yourhostname
  ```

3. **Login to OpenWebUI and have fun!**
  Access OpenWebUI through `http://yourserverip:8080`
---


## Notes

- **Hardware acceleration**: The setup includes CUDA/ROCm support. If you're using a CPU-only setup, disable GPU-related dependencies in `flake.nix`.

---

## Contributing

- Report issues or request features via [GitHub Issues](https://github.com/randoneering/nix-llama/issues).
- Submit pull requests for improvements or "bug" fixes

---

## 📄 License

This project is licensed under the [GPL-v3](LICENSE). See the `LICENSE` file for details.

---
