system("clear");

open my($file), '<', './links.txt' 
	or die "Erreur lors de la lecture des liens ... $!\n";

my $search;

while( my $line = <$file> ) 
{
	chomp($line);
	$search = $search ." ". $line;
}

system("firefox ".$search);
