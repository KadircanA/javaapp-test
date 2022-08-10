FROM mcr.microsoft.com/java/jdk:8-zulu-alpine as s1

WORKDIR /app
COPY /source .

RUN javac uygulama.java



FROM mcr.microsoft.com/java/jre:8-zulu-alpine

WORKDIR /app
COPY --from=s1 /app ./

CMD [ "java", "uygulama" ]
