
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'BeLike::GENEHACK when you zilla your dist',
  'AUTHOR' => 'John SJ Anderson <genehack@genehack.org>',
  'BUILD_REQUIRES' => {
    'English' => '0',
    'Test::More' => '0'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.31'
  },
  'DISTNAME' => 'Dist-Zilla-PluginBundle-GENEHACK',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'Dist::Zilla::PluginBundle::GENEHACK',
  'PREREQ_PM' => {
    'Dist::Zilla' => '0',
    'Dist::Zilla::Plugin::ArchiveRelease' => '0',
    'Dist::Zilla::Plugin::AutoPrereqs' => '0',
    'Dist::Zilla::Plugin::CriticTests' => '0',
    'Dist::Zilla::Plugin::ExtraTests' => '0',
    'Dist::Zilla::Plugin::Git::NextVersion' => '0',
    'Dist::Zilla::Plugin::MetaConfig' => '0',
    'Dist::Zilla::Plugin::MetaJSON' => '0',
    'Dist::Zilla::Plugin::PodCoverageTests' => '0',
    'Dist::Zilla::Plugin::PodSyntaxTests' => '0',
    'Dist::Zilla::Plugin::PodWeaver' => '0',
    'Dist::Zilla::Plugin::Repository' => '0',
    'Dist::Zilla::PluginBundle::Basic' => '0',
    'Dist::Zilla::PluginBundle::Git' => '0',
    'Dist::Zilla::Role::PluginBundle::Easy' => '0',
    'Moose' => '0',
    'namespace::autoclean' => '0'
  },
  'VERSION' => '0.02',
  'test' => {
    'TESTS' => 't/*.t'
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



