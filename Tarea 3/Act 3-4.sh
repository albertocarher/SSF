#!/bin/bash

while true; do
  read -s -p "Contraseña: " P1; echo
  read -s -p "Confirmar:  " P2; echo
  [ "$P1" = "$P2" ] && echo "✅ OK" && break || echo "❌ ERROR, inténtalo de nuevo"
done