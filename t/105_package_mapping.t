use t::lib::Test;

{
    my $d = Google::ProtocolBuffers::Dynamic->new('t/proto/mapping');

    $d->load_file("test1.proto");
    $d->map_package('test1', 'Test1');
    $d->resolve_references();

    eq_or_diff(Test1::Message1->decode("\x08\x01"), Test1::Message1->new({
        test1_message1 => 1,
    }), "simple message 2");
    eq_or_diff(Test1::Message2->decode("\x08\x01"), Test1::Message2->new({
        test1_message2 => 1,
    }), "simple message 2");
    eq_or_diff(Test1::Message3->decode("\x0a\x02\x08\x01\x12\x02\x08\x01"), Test1::Message3->new({
        test1_message3_message1 => Test1::Message1->new({
            test1_message1 => 1,
        }),
        test1_message3_message2 => Test1::Message2->new({
            test1_message2 => 1,
        }),
    }), "composite message");
    eq_or_diff(Test1::Message4->decode("\x12\x02\x08\x0f"), Test1::Message4->new({
        inner => Test1::Message4::Message5->new({
            value => 15,
        }),
    }), "inner message");

    is(Test1::Enum::VALUE1(), 2, 'enum value');
    is(Test1::Enum::VALUE2(), 7, 'enum value');
    is(Test1::Enum::VALUE3(), 12, 'enum value');

    is(Test1::Message4::Enum::VALUE1(), 3, 'inner enum value');
    is(Test1::Message4::Enum::VALUE2(), 2, 'inner enum value');
    is(Test1::Message4::Enum::VALUE3(), 1, 'inner enum value');
}

{
    my $d = Google::ProtocolBuffers::Dynamic->new('t/proto/mapping');

    $d->load_file("test1.proto");
    $d->load_file("test2.proto");
    $d->map_package('test1', 'Test2');
    $d->map_package('test2', 'Test3');
    $d->resolve_references();

    eq_or_diff(Test3::Message3->decode("\x0a\x02\x08\x01\x12\x02\x08\x01"), Test3::Message3->new({
        test1_message3_message1 => Test3::Message1->new({
            test2_message1 => 1,
        }),
        test1_message3_message2 => Test2::Message2->new({
            test1_message2 => 1,
        }),
    }), "composite message - multiple packages");
}

{
    my $d = Google::ProtocolBuffers::Dynamic->new('t/proto/mapping');

    $d->load_file("test1.proto");
    $d->load_file("test2.proto");
    $d->map_package('test1', 'Test4');

    throws_ok(
        sub { $d->map_package('test2', 'Test4') },
        qr/Package 'Test4::Message1' has already been used in a mapping/,
        "duplicated message",
    );

    lives_ok(
        sub { $d->map_package('test1', 'Test4') },
        "mapping a package multiple times is a no-op",
    );
}

done_testing();
