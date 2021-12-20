DOCKERFILE_ENTRYPOINT="Dockerfile.dockerfile"
IMAGE_NAME="airlab-i3dloc"

docker build \
    --rm \
    --network=host \
    --tag $IMAGE_NAME \
    --file $DOCKERFILE_ENTRYPOINT .