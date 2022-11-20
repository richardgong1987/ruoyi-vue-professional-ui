pnpm run build:prod

set -eu

rm -fr dist/index.html.gz

cp -fr dist/ docker/dist/

cd docker

docker-compose build

docker login --username=richardgong1987 --password-stdin  < ~/DockerPassword.txt

docker-compose push
