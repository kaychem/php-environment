
#
#--------------------------------------------------------------------------
# Image Setup
#--------------------------------------------------------------------------
#

FROM bluepolaris/tengine:v1.0.0

#
#--------------------------------------------------------------------------
# Final Touch
#--------------------------------------------------------------------------
#
ADD ngx_user.patch /

RUN cd / \
    && mv /ngx_user.patch ./ngx_user.patch \
    && patch ngx_user.c ngx_user.patch \
    && rm ngx_user.patch \

#COPY nginx.conf /usr/local/nginx/conf/nginx.conf
#COPY sites/nginx.lavarel.conf.example /usr/local/nginx/conf/conf.d/default.conf

CMD ["/usr/local/nginx/sbin/nginx", "-g", "daemon off;"]

EXPOSE 8080 443
