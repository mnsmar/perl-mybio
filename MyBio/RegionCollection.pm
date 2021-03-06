# POD documentation - main docs before the code

=head1 NAME

MyBio::RegionCollection - Role for a collection of MyBio::Region objects

=head1 SYNOPSIS

    # This role defines the interface for collections of L<MyBio::Region> objects
    # Cannot be initialized

=head1 DESCRIPTION

    This role defines the interface for collections of L<MyBio::Region> objects.
    All required attributes and subs must be present in classes that consume
    this role.

=cut

# Let the code begin...

package MyBio::RegionCollection;

use Moose::Role;
use namespace::autoclean;

requires qw ( 
	name
	species
	description
	extra
	longest_record
	add_record
	foreach_record_do
	records_count
	strands
	rnames_for_strand
	rnames_for_all_strands
	is_empty
	is_not_empty
	foreach_overlapping_record_do
	records_overlapping_region
);

1;
