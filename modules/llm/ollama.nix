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
    environmentVariables = {
       OLLAMA_HOST = "{yourserverip}:11434"; # Make Ollama accesible outside of localhost
       OLLAMA_ORIGINS = "http://{yourserverip}:8080,http://{networkCIDR}.*:11434"; # Allow access, otherwise Ollama returns 403 forbidden due to CORS
    };
  };
  # Open-Webui setup
  services.open-webui = {
    enable = true;
    environment = {
      ANONYMIZED_TELEMETRY = "False";
      DO_NOT_TRACK = "True";
      SCARF_NO_ANALYTICS = "True";
      OLLAMA_API_BASE_URL = "http://{yourserverip}:11434/api";
      OLLAMA_BASE_URL = "http://{yourserverip}:11434";
    };
  };

}
