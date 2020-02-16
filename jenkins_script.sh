

echo "User?:"
read  jnkUser

echo "Password?:"
read -s jnkPassword

echo "Branch?: develop, rc-sprint, master"
read  gitBranch

api=''

echo "Executing "$gitBranch" jobs "

for branch in $gitBranch
do

branchAux=$branch;
branchAux2=$branch;


if [[ "$branch" == "rc-sprint" ]]; then
    branchAux='rc/sprint'
    branchAux2='rc'
    api='-api'
fi

curl -X POST "http://ic.sanitas.dom/jenkins/view/dominios/job/clientes/view/clientes-api-"$branchAux2"/job/clientes-auth-"$branch"/buildWithParameters?gitrepo=http://ic.sanitas.dom/git/entrega-continua/clientes-auth"$api"&gitbranch="$branchAux"&notif_emails=abernal@sanitas.es" --user $jnkUser:$jnkPassword
curl -X POST "http://ic.sanitas.dom/jenkins/view/dominios/job/clientes/view/clientes-api-"$branchAux2"/job/clientes-autorizaciones-api-"$branch"/buildWithParameters?gitrepo=http://ic.sanitas.dom/git/entrega-continua/clientes-autorizaciones"$api"&gitbranch="$branchAux"&notif_emails=abernal@sanitas.es" --user $jnkUser:$jnkPassword
curl -X POST "http://ic.sanitas.dom/jenkins/view/dominios/job/clientes/view/clientes-api-"$branchAux2"/job/clientes-blua-api-"$branch"/buildWithParameters?gitrepo=http://ic.sanitas.dom/git/entrega-continua/clientes-blua"$api"&gitbranch=develop&notif_emails=abernal@sanitas.es" --user $jnkUser:$jnkPassword
curl -X POST "http://ic.sanitas.dom/jenkins/view/dominios/job/clientes/view/clientes-api-"$branchAux2"/job/clientes-citas-api-"$branch"/buildWithParameters?gitrepo=http://ic.sanitas.dom/git/entrega-continua/clientes-citas"$api"&gitbranch="$branchAux"&notif_emails=abernal@sanitas.es" --user $jnkUser:$jnkPassword
curl -X POST "http://ic.sanitas.dom/jenkins/view/dominios/job/clientes/view/clientes-api-"$branchAux2"/job/clientes-commons-"$branch"/buildWithParameters?gitrepo=http://ic.sanitas.dom/git/entrega-continua/clientes-commons&gitbranch="$branchAux"&notif_emails=abernal@sanitas.es" --user $jnkUser:$jnkPassword
curl -X POST "http://ic.sanitas.dom/jenkins/view/dominios/job/clientes/view/clientes-api-"$branchAux2"/job/clientes-dental-anamnesis-api-"$branch"/buildWithParameters?gitrepo=http://ic.sanitas.dom/git/entrega-continua/clientes-dental-anamnesis"$api"&gitbranch="$branchAux"&notif_emails=abernal@sanitas.es" --user $jnkUser:$jnkPassword
curl -X POST "http://ic.sanitas.dom/jenkins/view/dominios/job/clientes/view/clientes-api-"$branchAux2"/job/clientes-dental-centros-api-"$branch"/buildWithParameters?gitrepo=http://ic.sanitas.dom/git/entrega-continua/clientes-dental-centros"$api"&gitbranch="$branchAux"&notif_emails=abernal@sanitas.es" --user $jnkUser:$jnkPassword
curl -X POST "http://ic.sanitas.dom/jenkins/view/dominios/job/clientes/view/clientes-api-"$branchAux2"/job/clientes-dental-tarifario-api-"$branch"/buildWithParameters?gitrepo=http://ic.sanitas.dom/git/entrega-continua/clientes-dental-tarifario"$api"&gitbranch="$branchAux"&notif_emails=abernal@sanitas.es" --user $jnkUser:$jnkPassword
curl -X POST "http://ic.sanitas.dom/jenkins/view/dominios/job/clientes/view/clientes-api-"$branchAux2"/job/clientes-facturacion-api-"$branch"/buildWithParameters?gitrepo=http://ic.sanitas.dom/git/entrega-continua/clientes-facturacion"$api"&gitbranch="$branchAux"&notif_emails=abernal@sanitas.es" --user $jnkUser:$jnkPassword
curl -X POST "http://ic.sanitas.dom/jenkins/view/dominios/job/clientes/view/clientes-api-"$branchAux2"/job/clientes-hce-api-"$branch"/buildWithParameters?gitrepo=http://ic.sanitas.dom/git/entrega-continua/clientes-hce"$api"&gitbranch="$branchAux"&notif_emails=abernal@sanitas.es" --user $jnkUser:$jnkPassword
curl -X POST "http://ic.sanitas.dom/jenkins/view/dominios/job/clientes/view/clientes-api-"$branchAux2"/job/clientes-login-api-"$branch"/buildWithParameters?gitrepo=http://ic.sanitas.dom/git/entrega-continua/clientes-login"$api"&gitbranch="$branchAux"&notif_emails=abernal@sanitas.es" --user $jnkUser:$jnkPassword
curl -X POST "http://ic.sanitas.dom/jenkins/view/dominios/job/clientes/view/clientes-api-"$branchAux2"/job/clientes-medicos-api-"$branch"/buildWithParameters?gitrepo=http://ic.sanitas.dom/git/entrega-continua/clientes-medicos"$api"&gitbranch="$branchAux"&notif_emails=abernal@sanitas.es" --user $jnkUser:$jnkPassword
curl -X POST "http://ic.sanitas.dom/jenkins/view/dominios/job/clientes/view/clientes-api-"$branchAux2"/job/clientes-perfil-api-"$branch"/buildWithParameters?gitrepo=http://ic.sanitas.dom/git/entrega-continua/clientes-perfil"$api"&gitbranch="$branchAux"&notif_emails=abernal@sanitas.es" --user $jnkUser:$jnkPassword
curl -X POST "http://ic.sanitas.dom/jenkins/view/dominios/job/clientes/view/clientes-api-"$branchAux2"/job/clientes-permisos-api-"$branch"/buildWithParameters?gitrepo=http://ic.sanitas.dom/git/entrega-continua/clientes-permisos"$api"&gitbranch="$branchAux"&notif_emails=abernal@sanitas.es" --user $jnkUser:$jnkPassword
curl -X POST "http://ic.sanitas.dom/jenkins/view/dominios/job/clientes/view/clientes-api-"$branchAux2"/job/clientes-privado-api-"$branch"/buildWithParameters?gitrepo=http://ic.sanitas.dom/git/entrega-continua/clientes-privado"$api"&gitbranch="$branchAux"&notif_emails=abernal@sanitas.es" --user $jnkUser:$jnkPassword
curl -X POST "http://ic.sanitas.dom/jenkins/view/dominios/job/clientes/view/clientes-api-"$branchAux2"/job/clientes-publico-api-"$branch"/buildWithParameters?gitrepo=http://ic.sanitas.dom/git/entrega-continua/clientes-publico"$api"&gitbranch="$branchAux"&notif_emails=abernal@sanitas.es" --user $jnkUser:$jnkPassword
curl -X POST "http://ic.sanitas.dom/jenkins/view/dominios/job/clientes/view/clientes-api-"$branchAux2"/job/clientes-reembolsos-api-"$branch"/buildWithParameters?gitrepo=http://ic.sanitas.dom/git/entrega-continua/clientes-reembolsos"$api"&gitbranch="$branchAux"&notif_emails=abernal@sanitas.es" --user $jnkUser:$jnkPassword


echo " Finish "$branch" Jobs "

done
