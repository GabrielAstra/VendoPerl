use strict;
use warnings;

my $arquivo = 'exemplo.txt';

open(my $fh, '<', $arquivo) or die "Não foi possível abrir o arquivo '$arquivo': $!";
while (my $linha = <$fh>) {
    chomp $linha;
    print "$linha\n";
}
close($fh);
