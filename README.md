# ROS velocity muxer in Docker [![](https://img.shields.io/docker/pulls/frankjoshua/ros-vel-muxer)](https://hub.docker.com/r/frankjoshua/ros-vel-muxer) [![CI](https://github.com/frankjoshua/docker-ros-vel-muxer/workflows/CI/badge.svg)](https://github.com/frankjoshua/docker-ros-vel-muxer/actions)

## Description

Runs a ros velocity muxer in a Docker container. Probably need --network="host" because ROS uses ephemeral ports.

## Example

```
docker run -it \
    --network="host" \
    --env="ROS_IP=$ROS_IP" \
    --env="ROS_MASTER_URI=$ROS_MASTER_URI" \
    --env="COMPUTER_TOPIC=/cmd_vel/computer" \
    --env="MANUAL_TOPIC=/pocketbot/cmd_vel" \
    --env="X_SPEED_MULTIPLE=0.3" \
    --env="Z_SPEED_MULTIPLE=0.3" \
    frankjoshua/ros-vel-muxer
```

## Building

Use [build.sh](build.sh) to build the docker containers.

<br>Local builds are as follows:

```
./build.sh -t frankjoshua/ros-vel-muxer -l
```

## Testing

Github Actions expects the DOCKERHUB_USERNAME and DOCKERHUB_TOKEN variables to be set in your environment.

## License

Apache 2.0

## Author Information

Joshua Frank [@frankjoshua77](https://www.twitter.com/@frankjoshua77)
<br>
[http://roboticsascode.com](http://roboticsascode.com)
