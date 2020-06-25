psql<<-EOF
    create user dendrite password 'itsasecret';
EOF

for i in account device mediaapi syncapi roomserver serverkey federationsender publicroomsapi appservice naffka; do
    createdb -O dendrite dendrite_$i
done
