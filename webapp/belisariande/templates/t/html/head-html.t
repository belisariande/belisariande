%########################################################################
%# Copyright (c) 1988-2021 $organization$
%#
%# This software is provided by the author and contributors ``as is'' 
%# and any express or implied warranties, including, but not limited to, 
%# the implied warranties of merchantability and fitness for a particular 
%# purpose are disclaimed. In no event shall the author or contributors 
%# be liable for any direct, indirect, incidental, special, exemplary, 
%# or consequential damages (including, but not limited to, procurement 
%# of substitute goods or services; loss of use, data, or profits; or 
%# business interruption) however caused and on any theory of liability, 
%# whether in contract, strict liability, or tort (including negligence 
%# or otherwise) arising in any way out of the use of this software, 
%# even if advised of the possibility of such damage.
%#
%#   File: head-html.t
%#
%# Author: $author$
%#   Date: 3/28/2021
%########################################################################
%with(%
%%(    <!--
    =====================================================================
    === head
    =====================================================================
    -->
    <head>
        <!--
        =====================================================================
        === title
        =====================================================================
        -->
        <title>%ApplicationPage%</title>

        <!--
        =====================================================================
        === style
        =====================================================================
        -->%parse(%Style_href%,;,,,,%(
        <link rel="%Link_style_rel%" type="%Style_type%" href="%Style_href%"></link>)%,Style_href)%
        <style type="%Style_type%">
        </style>

        <!--
        =====================================================================
        === script
        =====================================================================
        -->%parse(%Script_src%,;,,,,%(
        <script type="%Script_type%" src="%Script_src%"></script>)%,Script_src)%
        <script type="%Script_type%">%Script_body%
        </script>
    </head>
)%)%