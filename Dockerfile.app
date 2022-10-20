FROM 10.237.42.175:8080/stg-bayanati-core/base

USER bayauser
RUN mkdir -p /home/bayauser/app/logs
ADD --chown=bayauser:bayauser ./target/invoices-*.jar /home/bayauser/app/

WORKDIR /home/bayauser/app
EXPOSE 8089
CMD java -Dfile.encoding=utf-8 -Xms512m -Xmx512m -jar invoices-*.jar

