

echo "User?:"
read  jnkUser

echo "Password?:"
read -s jnkPassword

serviceName='is-clientes-auth-api-v1,is-clientes-login-api-v1,is-clientes-autorizaciones-api-v1,is-clientes-blua-api-v1,is-clientes-citas-api-v1,is-clientes-dental-anamnesis-api-v1,is-clientes-dental-centros-api-v1,is-clientes-dental-tarifario-api-v1,is-clientes-facturacion-api-v2,is-clientes-hce-api-v1,is-clientes-medicos-api-v1,is-clientes-perfil-api-v1,is-clientes-permisos-api-v1,is-clientes-privado-api-v1,is-clientes-publico-api-v1,is-clientes-reembolsos-api-v1,is-sps-api-v2,is-cuadro-medico-api-v2'

    
echo "Restarting MiSanitas services  $serviceName ....."

    
curl -X POST "http://ic.sanitas.dom/jenkins/view/self-service/job/self-service-docker-restart-service/buildWithParameters?serviceName="$serviceName"&entorno=des" --user $jnkUser:$jnkPassword
   
echo " Service Restart Completed ....."


