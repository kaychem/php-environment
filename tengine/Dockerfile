
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
COPY nginx.conf /etc/nginx/nginx.conf
COPY nginx.vh.default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
