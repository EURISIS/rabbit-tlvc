-module(rabbit_tlvc_plugin).

-include("rabbit_tlvc_plugin.hrl").

-export([setup_schema/0]).

-rabbit_boot_step({?MODULE,
                   [{description, "last-value cache topic exchange type"},
                    {mfa, {rabbit_tlvc_plugin, setup_schema, []}},
                    {mfa, {rabbit_registry, register, [exchange, <<"x-tlvc">>, rabbit_exchange_type_tlvc]}},
                    {cleanup, {rabbit_registry, unregister, [exchange, <<"x-tlvc">>]}},
                    {requires, rabbit_registry},
                    {enables, recovery}]}).

%% private

setup_schema() ->
    case mnesia:create_table(?TLVC_TABLE,
                             [{attributes, record_info(fields, cached)},
                              {record_name, cached},
                              {type, set}]) of
        {atomic, ok} -> ok;
        {aborted, {already_exists, ?TLVC_TABLE}} -> ok
    end.
