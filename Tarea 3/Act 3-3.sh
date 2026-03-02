#!/bin/bash

IMC=$(echo "scale=2; $2 / ($1/100)^2" | bc)
if (( $(echo "$IMC < 18.5" | bc -l) )); then C="Bajo peso"
elif (( $(echo "$IMC < 25" | bc -l) )); then C="Peso normal"
elif (( $(echo "$IMC < 30" | bc -l) )); then C="Sobrepeso"
elif (( $(echo "$IMC < 35" | bc -l) )); then C="Obesidad grado I"
elif (( $(echo "$IMC < 40" | bc -l) )); then C="Obesidad grado II"
else C="Obesidad mórbida"; fi
echo "IMC: $IMC → $C"