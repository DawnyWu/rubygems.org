StatsD.default_sample_rate = 0.1

Redis::Client.extend StatsD::Instrument
Redis::Client.statsd_measure :process, 'Redis.Client.process.measure', 0.001

Notifier.extend StatsD::Instrument
Notifier.statsd_count_success :perform, 'Webhook.perform'

Indexer.extend StatsD::Instrument
Indexer.statsd_count_success :perform, 'Indexer.perform'
Indexer.statsd_measure :perform, 'Indexer.perform'
