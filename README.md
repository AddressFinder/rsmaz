# rsmaz

*   https://github.com/AddressFinder/rsmaz (this fork)
*   http://github.com/peterc/rsmaz/tree/master (original Ruby version)
*   http://github.com/antirez/smaz/tree/master (original C version)


## DESCRIPTION:

Short String Compression for Ruby. (This fork was made to get the parent rsmaz
gem working on Ruby 3.2.1, more specifically to handle the deprecation of the
Fixnum class)

RSmaz is a pure-Ruby port of the Smaz short string compression algorithm by
Salvatore Sanfilippo and released as a C library at:
http://github.com/antirez/smaz/tree/master

I've done some initial cleanup of a pure Ruby->C port, but this is not yet
complete. It does pass the specs, however! Feel free to clean it up as it's a
bit memory inefficient right now... :)

## REQUIREMENTS:

*   Ruby 3.2.1 or higher and MiniTest


## INSTALLATION:

Add the following line to your Gemfile:
  
`gem 'rsmaz', git: 'https://github.com/AddressFinder/rsmaz'`

Then run: `bundle install`

## USAGE:

    require 'rsmaz'
    r = RSmaz.compress("whatever")
    puts RSmaz.decompress(r)

### Ruby 1.9 and encodings

RSmaz.compress always returns a string with the binary encoding. The input can
be any encoding, it will internally force it to binary and compress
byte-by-byte.

RSmaz.decompress also always returns a string with the binary encoding. You
must manually force the encoding back to the right one because RSmaz does not
store information about the original encoding.

## RSMAZ LICENSE:

Copyright (c) 2009-2011 Peter Cooper, Salvatore Sanfilippo, Hongli Lai

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the 'Software'), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

## SMAZ LICENSE:

Copyright (c) 2006-2009, Salvatore Sanfilippo All rights reserved.

Redistribution and use in source and binary forms, with or without 
modification, are permitted provided that the following conditions are met:

    * Redistributions of source code must retain the above copyright 
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright 
      notice, this list of conditions and the following disclaimer in the 
      documentation and/or other materials provided with the distribution.
    * Neither the name of Smaz nor the names of its contributors may be 
      used to endorse or promote products derived from this software without 
      specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
