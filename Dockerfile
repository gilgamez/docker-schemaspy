FROM openjdk:jre-alpine

ENV SSV=6.0.0-beta.3
ENV PGV=42.0.0
RUN apk --no-cache add ca-certificates wget
RUN wget https://github.com/schemaspy/schemaspy/releases/download/v$SSV/schemaspy-$SSV.jar
RUN wget https://jdbc.postgresql.org/download/postgresql-$PGV.jar
RUN apk --no-cache add graphviz
RUN apk --no-cache add ttf-dejavu
COPY schemaspy.sh /
VOLUME /output
ENTRYPOINT ["/schemaspy.sh"]
