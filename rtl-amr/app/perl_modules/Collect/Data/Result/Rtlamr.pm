use utf8;
package Collect::Data::Result::Rtlamr;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Collect::Data::Result::Rtlamr

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<rtlamr>

=cut

__PACKAGE__->table("rtlamr");

=head1 ACCESSORS

=head2 time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 offset

  data_type: 'integer'
  is_nullable: 1

=head2 length

  data_type: 'integer'
  is_nullable: 1

=head2 id

  data_type: 'integer'
  is_nullable: 1

=head2 type

  data_type: 'integer'
  is_nullable: 1

=head2 tamperphy

  data_type: 'integer'
  is_nullable: 1

=head2 tamperenc

  data_type: 'integer'
  is_nullable: 1

=head2 consumption

  data_type: 'integer'
  is_nullable: 1

=head2 rtlamr_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 collection_device

  data_type: 'enum'
  default_value: 'james_home'
  extra: {list => ["james_home","james_work"]}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "offset",
  { data_type => "integer", is_nullable => 1 },
  "length",
  { data_type => "integer", is_nullable => 1 },
  "id",
  { data_type => "integer", is_nullable => 1 },
  "type",
  { data_type => "integer", is_nullable => 1 },
  "tamperphy",
  { data_type => "integer", is_nullable => 1 },
  "tamperenc",
  { data_type => "integer", is_nullable => 1 },
  "consumption",
  { data_type => "integer", is_nullable => 1 },
  "rtlamr_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "collection_device",
  {
    data_type => "enum",
    default_value => "james_home",
    extra => { list => ["james_home", "james_work"] },
    is_nullable => 1,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</rtlamr_id>

=back

=cut

__PACKAGE__->set_primary_key("rtlamr_id");


# Created by DBIx::Class::Schema::Loader v0.07043 @ 2015-10-02 08:44:59
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:48HCNt/zdrCVFNnCVh5ZJw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
