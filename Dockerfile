# syntax=docker/dockerfile:1

FROM python:3.10

COPY . /

RUN make install

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "src/main.py"]