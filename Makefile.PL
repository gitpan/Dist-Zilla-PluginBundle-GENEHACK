
use strict;
use warnings;

use 5.006;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "BeLike::GENEHACK when you zilla your dist",
  "AUTHOR" => "John SJ Anderson <genehack\@genehack.org>",
  "BUILD_REQUIRES" => {
    "File::Find" => 0,
    "File::Temp" => 0,
    "Test::More" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Dist-Zilla-PluginBundle-GENEHACK",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Dist::Zilla::PluginBundle::GENEHACK",
  "PREREQ_PM" => {
    "Dist::Zilla" => 0,
    "Dist::Zilla::Plugin::ArchiveRelease" => 0,
    "Dist::Zilla::Plugin::Authority" => 0,
    "Dist::Zilla::Plugin::AutoPrereqs" => 0,
    "Dist::Zilla::Plugin::Bugtracker" => 0,
    "Dist::Zilla::Plugin::CheckChangesHasContent" => 0,
    "Dist::Zilla::Plugin::EOLTests" => 0,
    "Dist::Zilla::Plugin::ExtraTests" => 0,
    "Dist::Zilla::Plugin::Git::NextVersion" => 0,
    "Dist::Zilla::Plugin::GithubMeta" => 0,
    "Dist::Zilla::Plugin::Homepage" => 0,
    "Dist::Zilla::Plugin::InstallGuide" => 0,
    "Dist::Zilla::Plugin::InstallRelease" => 0,
    "Dist::Zilla::Plugin::MetaConfig" => 0,
    "Dist::Zilla::Plugin::MetaJSON" => 0,
    "Dist::Zilla::Plugin::MinimumPerl" => 0,
    "Dist::Zilla::Plugin::NextRelease" => 0,
    "Dist::Zilla::Plugin::PkgVersion" => 0,
    "Dist::Zilla::Plugin::PodCoverageTests" => 0,
    "Dist::Zilla::Plugin::PodSyntaxTests" => 0,
    "Dist::Zilla::Plugin::PodWeaver" => 0,
    "Dist::Zilla::Plugin::ReadmeFromPod" => 0,
    "Dist::Zilla::Plugin::Repository" => 0,
    "Dist::Zilla::Plugin::TaskWeaver" => 0,
    "Dist::Zilla::Plugin::Test::Compile" => 0,
    "Dist::Zilla::Plugin::Test::Kwalitee" => 0,
    "Dist::Zilla::Plugin::Twitter" => 0,
    "Dist::Zilla::PluginBundle::Basic" => 0,
    "Dist::Zilla::PluginBundle::Git" => 0,
    "Dist::Zilla::Role::PluginBundle::Easy" => 0,
    "Moose" => 0,
    "Pod::Elemental::Transformer::List" => 0,
    "namespace::autoclean" => 0
  },
  "VERSION" => "0.3",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



