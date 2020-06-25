-module(rabbit_exchange_type_tlvc).
-include_lib("rabbit_common/include/rabbit.hrl").
-include("amqqueue.hrl").
-include("rabbit_tlvc_plugin.hrl").

-behaviour(rabbit_exchange_type).

-export([description/0, serialise_events/0, route/2]).
-export([validate/1, validate_binding/2,
         create/2, recover/2, delete/3, policy_changed/2,
         add_binding/3, remove_bindings/3, assert_args_equivalence/2]).
-export([info/1,info/2]).
