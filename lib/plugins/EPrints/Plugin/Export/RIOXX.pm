package EPrints::Plugin::Export::RIOXX;

use base qw( EPrints::Plugin::Export::XMLFile );

use strict;

sub new
{
	my ($class, %params) = @_;

	my $self = $class->SUPER::new(%params);

	$self->{accept} = [qw( dataobj/eprint )];
	$self->{name} = 'OAI-PMH RIOXX';
	$self->{metadataPrefix} = "rioxx";
	$self->{xmlns} = "http://www.openarchives.org/OAI/2.0/oai_dc/";
	$self->{schemaLocation} = "http://www.openarchives.org/OAI/2.0/oai_dc.xsd";

	return $self;
}

1;
