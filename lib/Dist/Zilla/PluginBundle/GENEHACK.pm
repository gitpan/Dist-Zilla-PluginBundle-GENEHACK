package Dist::Zilla::PluginBundle::GENEHACK;

# ABSTRACT: BeLike::GENEHACK when you zilla your dist


use Moose;
use namespace::autoclean;
use Dist::Zilla;
with 'Dist::Zilla::Role::PluginBundle::Easy';

BEGIN {
  $Dist::Zilla::PluginBundle::GENEHACK::VERSION = '1.004';
}

use Dist::Zilla::PluginBundle::Basic;
use Dist::Zilla::PluginBundle::Git;

sub configure {
  my $self = shift;

  $self->add_bundle('Git');
  $self->add_plugins(
    [ 'Git::NextVersion' => { first_version => '0.01 '} ],
  );

  $self->add_bundle('Basic');
  $self->add_plugins(
    'AutoPrereqs' ,
    'CriticTests' ,
    'ExtraTests' ,
    'MetaConfig' ,
    'MetaJSON' ,
    'PodCoverageTests' ,
    'PodSyntaxTests' ,
    'PodWeaver' ,
    'Repository' ,
  )
}

1;


__END__
=pod

=head1 NAME

Dist::Zilla::PluginBundle::GENEHACK - BeLike::GENEHACK when you zilla your dist

=head1 VERSION

version 0.01

=head1 SYNOPSIS

Loads the stuff I find myself using all the time. Currently equivalent to
this:

    [@Git]
    [Git::NextVersion]
    first_version = 0.01

    [@Basic]

    [AutoPrereqs]
    [CriticTests]
    [ExtraTests]
    [PodCoverageTests]
    [PodSyntaxTests]
    [PodWeaver]

=for Pod::Coverage configure

=head1 AUTHOR

John SJ Anderson <genehack@genehack.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2010 by John SJ Anderson.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

