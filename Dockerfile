FROM openjdk:8

RUN wget "https://github.com/google/google-java-format/releases/download/google-java-format-1.7/google-java-format-1.7-all-deps.jar"

WORKDIR /workspace

ENTRYPOINT ["/bin/bash" ,"-c","java -jar /google-java-format-1.7-all-deps.jar -r $(find /workspace -name \"*.java\" -type f)"]
