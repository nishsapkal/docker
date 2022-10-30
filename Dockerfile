FROM nishsapkal/microservices:barebonespringboot as builder
ENTRYPOINT ["java","-jar","/app.jar"]
