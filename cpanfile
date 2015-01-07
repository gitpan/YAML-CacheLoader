requires 'Cache::RedisDB';
requires 'Path::Tiny';
requires 'YAML';

on test => sub {
    requires 'Test::Most', '0.34';
    requires 'File::Temp', '0.23';
    recommends 'Test::RedisServer', '0.14';
};
