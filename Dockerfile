#
# docker build . --output type=local,dest=./
#

FROM fluent/fluent-bit:1.8.13 as fluentbit

##############################################################################
#
# Build es custom plugin in current ./tmp dir
#
# docker build . --output type=local,dest=./
#
##############################################################################
FROM scratch as plugin-output
COPY --from=fluentbit /fluent-bit/bin/fluent-bit /