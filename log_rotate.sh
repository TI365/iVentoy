#!/bin/bash

# Função para rotacionar logs
rotate_logs() {
    local log_file="/opt/iventoy-1.0.20/log/log.txt"

    # Verifica se o arquivo existe e tem conteúdo
    if [ -f "$log_file" ] && [ -s "$log_file" ]; then
        echo "" | sudo tee "$log_file" > /dev/null
    fi
}
