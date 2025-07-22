{
  pkgs,
  lib,
  username,
  ...
}:{

  # Ollama Setup
  services.ollama = {
    enable = true;
    acceleration = "cuda"; # If you are using nvidia, use cuda. Use 'rcom' for AMD (https://wiki.nixos.org/wiki/Ollama)
    loadModels = [ "llama3.2:3b" "deepseek-r1:1.5b" "gemma3:12b" "qwen3:8b"]; # Preload/download models
    host = "hostip";
    openFirewall = true;
  };
  # Open-Webui setup
  services.open-webui = {
    enable = true;
    openFirewall = true;
    host = "hostip";
    environment = {
      ANONYMIZED_TELEMETRY = "False";
      DO_NOT_TRACK = "True";
      SCARF_NO_ANALYTICS = "True";
      OLLAMA_API_BASE_URL = "http://{yourserverip}:11434/api";
    };
  };

}
