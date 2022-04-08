use t::lib::Test;

{
    my $d = Google::ProtocolBuffers::Dynamic->new;
    # protoc -o t/proto/person.pb t/proto/person.proto
    $d->load_serialized_string(_slurp('t/proto/person.pb'));

    $d->map({ package => 'test', prefix => 'Test' });

    my $p = Test::Person->decode("\x0a\x03foo\x10\x1f");

    eq_or_diff($p, Test::Person->new({ id => 31, name => 'foo' }));
}

# uses multiple Google::ProtocolBuffers::Dynamic instances on purpose
{
    my $d = Google::ProtocolBuffers::Dynamic->new;
    # protoc --include_imports -o t/proto/wkt/scalar.pb t/proto/wkt/scalar.proto
    $d->load_serialized_string(_slurp('t/proto/wkt/scalar.pb'));
}

# uses multiple Google::ProtocolBuffers::Dynamic instances on purpose
{
    my $d = Google::ProtocolBuffers::Dynamic->new;
    # protoc --include_imports -I t/proto -o t/proto/wkt/scalar_copies.pb t/proto/wkt/scalar_copies.proto
    $d->load_serialized_string(_slurp('t/proto/wkt/scalar_copies.pb'));
}

done_testing();

sub _slurp {
    open my $fh, '<', $_[0];
    binmode $fh;
    local $/;
    readline $fh;
}
