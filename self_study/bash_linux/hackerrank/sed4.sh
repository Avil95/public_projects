#!/bin/bash
# mask the first 12 digits of each credit card number with *
sed -r 's/d{4} d{4} d{4} /**** **** **** /' 
# sed -r 's/[0-9]{4} [0-9]{4} [0-9]{4} /**** **** **** /'
