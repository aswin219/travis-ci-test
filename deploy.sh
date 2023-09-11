aws configure set aws_access_key_id $AWS_ACCESS_KEY_ID
aws configure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY
aws configure set default.region $AWS_REGION

aws eks update-kubeconfig --name ${CLUSTER_NAME} --region ${AWS_REGION}
kubectl set image deployment ${SERVICE} ${SERVICE}=${AWS_ACCOUNT}/${AWS_ECR}:${TAG} --namespace=${NAMESPACE}
kubectl --namespace=${NAMESPACE} rollout restart deployment ${SERVICE}