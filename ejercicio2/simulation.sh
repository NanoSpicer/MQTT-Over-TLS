echo "Esta simulación ilustra la autorizacion del ACL FILE"

echo "'publicador' no es capaz de recibir mensajes cuando se suscribe a 'test'"

mosquitto_sub -t test -u publicador -P publicador &
sleep 1
mosquitto_pub -t test -m "'dios' puede publicar donde quiera" -u dios -P dios
pkill -f mosquitto_sub

echo "'suscriptor' no es capaz de enviar mensajes en 'test'"

mosquitto_sub -t test -u dios -P dios &
sleep 1
mosquitto_pub -t test -m "Dios puede publicar donde quiera" -u suscriptor -P suscriptor
pkill -f mosquitto_sub

echo "'dios' puede hacer de todo"

echo "---> 'dios' como suscriptor, 'publicador' como publicador"
mosquitto_sub -t test -u dios -P dios &
sleep 1
mosquitto_pub -t test -m "'publicador' publica" -u publicador -P publicador
pkill -f mosquitto_sub

echo "---> 'suscriptor' como suscriptor, 'dios' como publicador"
mosquitto_sub -t test -u suscriptor -P suscriptor &
sleep 1
mosquitto_pub -t test -m "'dios' publica" -u dios -P dios
pkill -f mosquitto_sub


echo "✅✅ Fin ✅✅"
