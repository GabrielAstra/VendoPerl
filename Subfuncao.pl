use strict;
use warnings;

sub saudacao {
    my $nome = shift;
    print "Olá, $nome!\n";
}

saudacao("Alice");
saudacao("Bob");
