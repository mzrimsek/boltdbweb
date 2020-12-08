FROM golang:1.14

LABEL org.opencontainers.image.source https://github.com/mzrimsek/boltdbweb

RUN go get github.com/mzrimsek/boltdbweb

EXPOSE 8080

CMD boltdbweb --db-name=/database.db
