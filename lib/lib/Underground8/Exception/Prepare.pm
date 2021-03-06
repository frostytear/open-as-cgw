# This file is part of the Open AS Communication Gateway.
#
# The Open AS Communication Gateway is free software: you can redistribute it
# and/or modify it under theterms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the License,
# or (at your option) any later version.
#
# The Open AS Communication Gateway is distributed in the hope that it will be
# useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero
# General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License along
# with the Open AS Communication Gateway. If not, see http://www.gnu.org/licenses/.


package Underground8::Exception::Prepare;
use base Underground8::Exception;
use overload ('""' => 'stringify');

sub new
{
    my $class = shift;
    my $filename = shift;
    my $exec_exception = shift;
    my $text = "error on prepare";
    my @args = @_;

    local $Error::Depth = $Error::Depth + 1;
    local $Error::Debug = 1;  # Enables storing of stacktrace

    my $self = $class->SUPER::new($text, @args);
    $self->{'-filename'} = $filename;
    $self->{'-exec_exception'} = $exec_exception;
    $self->{'-output'} = $output;
    return $self;
}

1;
