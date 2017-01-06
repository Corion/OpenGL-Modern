#! /usr/bin/perl

use strict;
use warnings;
use Test::More;
use OpenGL::Modern ':all';

#eval 'use Test::Pod::Coverage';
#my $xerror = Prima::XOpenDisplay;
#plan skip_all => $xerror if defined $xerror;

my $tests = 2;
plan tests => $tests;

glewCreateContext();
glewInit();

my $opengl_version = glGetString(GL_VERSION);
isn't undef, $opengl_version, "We get some OpenGL version";
isn't '', $opengl_version, "... and it isn't empty";

diag "We got OpenGL version $opengl_version";

done_testing;