-define(TLVC_TABLE, tlvc).

-record(cachekey, {exchange, routing_key}).
-record(cached, {key, exchange, content}).


