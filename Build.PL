
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "File::Temp" => 0,
    "Module::Build" => "0.3601",
    "Module::Pluggable" => 0,
    "Test::File" => 0,
    "Test::Most" => 0,
    "utf8" => 0
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "domms blogging \"engine\"",
  "dist_author" => [
    "Thomas Klausner <domm\@cpan.org>"
  ],
  "dist_name" => "Blio",
  "dist_version" => "2.002",
  "license" => "perl",
  "module_name" => "Blio",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "DateTime" => 0,
    "DateTime::Format::ISO8601" => 0,
    "DateTime::Format::RFC3339" => 0,
    "Digest::SHA1" => 0,
    "Encode" => 0,
    "File::Copy" => 0,
    "File::ShareDir" => 0,
    "Imager" => 0,
    "Markup::Unified" => 0,
    "Moose" => 0,
    "Moose::Util::TypeConstraints" => 0,
    "MooseX::Getopt" => 0,
    "MooseX::SimpleConfig" => 0,
    "MooseX::Types::Path::Class" => 0,
    "Path::Class" => 0,
    "Path::Class::Iterator" => 0,
    "Template" => 0,
    "XML::Atom::SimpleFeed" => 0,
    "namespace::autoclean" => 0,
    "perl" => "5.010",
    "strict" => 0,
    "warnings" => 0
  },
  "script_files" => [
    "bin/blio.pl"
  ],
  "share_dir" => {
    "dist" => "share"
  }
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
