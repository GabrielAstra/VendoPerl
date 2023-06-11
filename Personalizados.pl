use strict;
use warnings;
use Video::Capture::V4l;
#Para Linux Ubuntu
# Precisa desse módulo para executar o arquvi --> Video::Capture::V4l
my $camera = Video::Capture::V4l->new();


$camera->start('/dev/video0') or die "Erro ao abrir a câmera: $!";


my $imagem = $camera->capture();


$imagem->save('imagem.jpg');

$camera->stop();

print "Imagem capturada e salva como imagem.jpg\n";
