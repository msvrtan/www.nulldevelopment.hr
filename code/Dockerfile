FROM www_nulldevelopment_hr/release-deps:latest as builder

FROM alpine:latest
COPY --from=builder /app/ /app/

CMD ["/app/www_nulldevelopment_hr"]
