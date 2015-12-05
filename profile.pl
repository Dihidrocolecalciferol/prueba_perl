$|=1;

use strict;
use warnings;

sub profile {
    my ($t, $k, @motifs)=@_;
    my %tabla=();
    
    foreach my $base ('A','C','T','G'){
        my @lista = ();
        for (my $i = 0; $i <= $k; $i++){
            $lista[$i] = 0;
                       
        }
        $tabla{$base}=\@lista;
    }
    #Actualizar los contadores
    #Para trabajar con una lista que tenemos como referencia --> @otra = @{$tabla{'A'}}
}