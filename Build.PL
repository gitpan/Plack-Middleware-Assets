
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  'build_requires' => {
    'File::Find' => '0',
    'File::Temp' => '0',
    'HTTP::Request::Common' => '0',
    'Module::Build' => '0.3601',
    'Plack::Builder' => '0',
    'Plack::Test' => '0',
    'Test::More' => '0.88'
  },
  'configure_requires' => {
    'Module::Build' => '0.3601'
  },
  'dist_abstract' => 'Concatenate and minify JavaScript and CSS files',
  'dist_author' => [
    'Moritz Onken'
  ],
  'dist_name' => 'Plack-Middleware-Assets',
  'dist_version' => '0.0.1',
  'license' => 'bsd',
  'module_name' => 'Plack::Middleware::Assets',
  'recommends' => {},
  'recursive_test_files' => 1,
  'requires' => {
    'CSS::Minifier::XS' => '0',
    'Digest::MD5' => '0',
    'HTTP::Date' => '0',
    'JavaScript::Minifier::XS' => '0',
    'Plack::Middleware' => '0'
  },
  'script_files' => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
