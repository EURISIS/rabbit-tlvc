-module(rabbit_exchange_type_tlvc).
-include_lib("rabbit_common/include/rabbit.hrl").
-include("amqqueue.hrl").
-include("rabbit_tlvc_plugin.hrl").

-behaviour(rabbit_exchange_type).
