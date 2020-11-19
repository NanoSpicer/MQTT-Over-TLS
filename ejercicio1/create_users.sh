pwfilePath="./conf/pwfile"

# Same as running  mosquitto_passwd -c the first time
rm $pwfilePath
touch $pwfilePath

users="publicador suscriptor inutil dios"

for user in $users; do
    # -b allows to pass password as an argument
    mosquitto_passwd -b $pwfilePath $user $user
done

echo "✅ Usuarios creados"