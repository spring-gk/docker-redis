FROM redis:3.2

# Change Timezone
ENV TIME_ZONE Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TIME_ZONE /etc/localtime && echo $TIME_ZONE > /etc/timezone

CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
