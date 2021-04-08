FROM ros:noetic-ros-base

HEALTHCHECK CMD /ros_entrypoint.sh rostopic list || exit 1

ENV COMPUTER_TOPIC /cmd_vel/computer
ENV MANUAL_TOPIC /cmd_vel/manual
ENV OUTPUT_TOPIC /cmd_vel
ENV DELAY 5
ENV X_SPEED_MULTIPLE 1.0
ENV Z_SPEED_MULTIPLE 1.0

COPY app/ /app/
WORKDIR /app

CMD python3 node.py --computer_topic $COMPUTER_TOPIC --manual_topic $MANUAL_TOPIC --output_topic $OUTPUT_TOPIC --delay $DELAY -x $X_SPEED_MULTIPLE -z $Z_SPEED_MULTIPLE
