$|=1;

#use warnings;
#use strict;

my @patrones = ('AGGTACTT','CCATACGT','ACGTTAGT','ACGTCCAT','CCGTACGG');
my %profile = profile(5,8,\@patrones);

    print "Matriz de resultados: \n";
    print "A --> "."@{$profile{'A'}}";
    print "\n";
    print "C --> "."@{$profile{'C'}}";
    print "\n";
    print "T --> "."@{$profile{'T'}}";
    print "\n";
    print "G --> "."@{$profile{'G'}}";
    print "\n";
   
sub profile {
    #Parametros
    my $t=$_[0];
    my $k=$_[1];
    my @motifs=@{$_[2]};
    
    #Variables locales
    my %tabla=();
    my @bases = ('A','C','T','G');
    
    #Generación de matriz de contadores nulos  
    foreach my $base (@bases){
        my @lista = ();
        
        #Generación de lista de valores nulos
        for (my $i = 0; $i < $k; $i++){#si se pone $i = 1, hay que poner $i<=$k y abajo $lista[$i-1]=0
            $lista[$i] = 0;
        }
        
        $tabla{$base}=\@lista;
    }
    
    #Actualizar los contadores
    foreach $sec (@motifs){
        
        for(my $l=0;$l<$k;$l++){
            my $nucleotido=substr ($sec, $l, 1);
            ${tabla{$nucleotido}}[$l]+=1;
            
        }
    }
    return %tabla;
}

