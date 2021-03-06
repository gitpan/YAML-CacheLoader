
# This file was automatically generated by Dist::Zilla::Plugin::MakeMaker v5.030.
use strict;
use warnings;



use ExtUtils::MakeMaker;



my %WriteMakefileArgs = (
  "ABSTRACT" => "load YAML from cache or disk, whichever seems better",
  "AUTHOR" => "Binary <binary\@cpan.org>",
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => 0
  },
  "DISTNAME" => "YAML-CacheLoader",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "YAML::CacheLoader",
  "PREREQ_PM" => {
    "Cache::RedisDB" => 0,
    "Path::Tiny" => 0,
    "YAML" => 0
  },
  "TEST_REQUIRES" => {
    "File::Temp" => "0.23",
    "Test::Most" => "0.34"
  },
  "VERSION" => "0.010",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Cache::RedisDB" => 0,
  "ExtUtils::MakeMaker" => 0,
  "File::Temp" => "0.23",
  "Path::Tiny" => 0,
  "Test::Most" => "0.34",
  "YAML" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



