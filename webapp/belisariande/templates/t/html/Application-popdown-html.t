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
%#   File: Application-popdown-html.t
%#
%# Author: $author$
%#   Date: 8/17/2021
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_application,%(%else-then(%is_application%,%(%is_Application%)%)%)%,%
%application,%(%else-then(%if-no(%is_application%,,%(%application%)%)%,%(%if-no(%is_application%,,%(Application)%)%)%)%)%,%
%Application,%(%else-then(%if-no(%is_application%,,%(%Application%)%)%,%(%if-no(%is_application%,,%(%application%)%)%)%)%)%,%
%APPLICATION,%(%else-then(%APPLICATION%,%(%toupper(%Application%)%)%)%)%,%
%application,%(%else-then(%_application%,%(%tolower(%Application%)%)%)%)%,%
%is_base,%(%else-then(%is_base%,%(%is_Base%)%)%)%,%
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(%Application%-popdown)%)%)%)%)%,%
%Base,%(%else-then(%if-no(%is_base%,,%(%Base%)%)%,%(%if-no(%is_base%,,%(%base%)%)%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_base%,%(%tolower(%Base%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-html.t)%%
%<div id="myPopdown" class="popdown-content">
<table class="popover" border="0">

    <!--
    =====================================================================
    === %Application%
    =====================================================================
    -->
    <!--tr><td name="myPopover" class="popover-buttons"><a href="/%application%/html/%Application%.html">
    <table class="footer-logo" border="0"><tr><td>
        <table class="footer-logo-ring" border="0"><tr><td>
            <table class="footer-logo-circle" border="0"><tr class="footer-logo-background"><td>
                <table class="footer-logo-background-background" border="0"><tr class="footer-logo-icon"><td>
                    <table class="footer-logo-icon-icon" border="0"><tr>
                    <td class="footer-logo-icon-image" style="background-image:url('/%application%/images/%Application%.png')">
                    </td></tr></table>
                </td></tr><tr><td class="footer-logo-label">
                    <table class="footer-logo-label-label" border="0"><tr>
                    <td class="footer-logo-label-text">%APPLICATION%</td></tr></table>
                </td></tr></table>
            </td></tr></table>
        </td></tr></table>
    </td></tr></table></a></td-->

    <!--
    =====================================================================
    === Aegirde
    =====================================================================
    -->
    <tr><td name="myPopover" class="popover-buttons"><a href="/aegirde/html/Aegirde.html">
    <table class="footer-logo" border="0"><tr><td>
        <table class="footer-logo-ring" border="0"><tr><td>
            <table class="footer-logo-circle" border="0"><tr class="footer-logo-background"><td>
                <table class="footer-logo-background-background" border="0"><tr class="footer-logo-icon"><td>
                    <table class="footer-logo-icon-icon" border="0"><tr>
                    <td class="footer-logo-icon-image" style="background-image:url('/belisariande/images/Aegirde.png')">
                    </td></tr></table>
                </td></tr><tr><td class="footer-logo-label">
                    <table class="footer-logo-label-label" border="0"><tr>
                    <td class="footer-logo-label-text"><b>AEGIRDE</b></td></tr></table>
                </td></tr></table>
            </td></tr></table>
        </td></tr></table>
    </td></tr></table></a></td>

    <!--
    =====================================================================
    === Xthenode
    =====================================================================
    -->
    <td name="myPopover" class="popover-buttons"><a href="/xthenode/html/Xthenode.html">
    <table class="footer-logo" border="0"><tr><td>
        <table class="footer-logo-ring" border="0"><tr><td>
            <table class="footer-logo-circle" border="0"><tr class="footer-logo-background"><td>
                <table class="footer-logo-background-background" border="0"><tr class="footer-logo-icon"><td>
                    <table class="footer-logo-icon-icon" border="0"><tr>
                    <td class="footer-logo-icon-image" style="background-image:url('/belisariande/images/Xthenode.png')">
                    </td></tr></table>
                </td></tr><tr><td class="footer-logo-label">
                    <table class="footer-logo-label-label" border="0"><tr>
                    <td class="footer-logo-label-text"><b>XTHE>NODE</b</td></tr></table>
                </td></tr></table>
            </td></tr></table>
        </td></tr></table>
    </td></tr></table></a>

    <!--
    =====================================================================
    === Sthenode
    =====================================================================
    -->
    </td><td name="myPopover" class="popover-buttons"><a href="/sthenode/html/Sthenode.html">
    <table class="footer-logo" border="0"><tr><td>
        <table class="footer-logo-ring" border="0"><tr><td>
            <table class="footer-logo-circle" border="0"><tr class="footer-logo-background"><td>
                <table class="footer-logo-background-background" border="0"><tr class="footer-logo-icon"><td>
                    <table class="footer-logo-icon-icon" border="0"><tr>
                    <td class="footer-logo-icon-image" style="background-image:url('/belisariande/images/Medusade.png')">
                    </td></tr></table>
                </td></tr><tr><td class="footer-logo-label">
                    <table class="footer-logo-label-label" border="0"><tr>
                    <td class="footer-logo-label-text"><b>STHENO>DE</b</td></tr></table>
                </td></tr></table>
            </td></tr></table>
        </td></tr></table>
    </td></tr></table></a></td>

    <!--
    =====================================================================
    === Medusade
    =====================================================================
    -->
    </tr><tr><td name="myPopover" class="popover-buttons"><a href="/medusade/html/Medusade-home.html">
    <table class="footer-logo" border="0"><tr><td>
        <table class="footer-logo-frame" border="0"><tr><td>
            <table class="footer-logo-square" border="0"><tr class="footer-logo-background"><td>
                <table class="footer-logo-background-background" border="0"><tr class="footer-logo-icon"><td>
                    <table class="footer-logo-icon-icon" border="0"><tr>
                    <td class="footer-logo-icon-image" style="background-image:url('/belisariande/images/Medusade.png')">
                    </td></tr></table>
                </td></tr><tr><td class="footer-logo-label">
                    <table class="footer-logo-label-label" border="0"><tr>
                    <td class="footer-logo-label-text"><b>MEDUSA</b></td></tr></table>
                </td></tr></table>
            </td></tr></table>
        </td></tr></table>
    </td></tr></table></a></td>

    <!--
    =====================================================================
    === Euryalede
    =====================================================================
    -->
    <td name="myPopover" class="popover-buttons"><a href="/medusade/html/Euryalede-home.html">
    <table class="footer-logo" border="0"><tr><td>
        <table class="footer-logo-frame" border="0"><tr><td>
            <table class="footer-logo-square" border="0"><tr class="footer-logo-background"><td>
                <table class="footer-logo-background-background" border="0"><tr class="footer-logo-icon"><td>
                    <table class="footer-logo-icon-icon" border="0"><tr>
                    <td class="footer-logo-icon-image" style="background-image:url('/belisariande/images/Medusade.png')">
                    </td></tr></table>
                </td></tr><tr><td class="footer-logo-label">
                    <table class="footer-logo-label-label" border="0"><tr>
                    <td class="footer-logo-label-text"><b>EURYALE</b></td></tr></table>
                </td></tr></table>
            </td></tr></table>
        </td></tr></table>
    </td></tr></table></a></td>

    <!--
    =====================================================================
    === Sthenode
    =====================================================================
    -->
    <td name="myPopover" class="popover-buttons"><a href="/medusade/html/Sthenode-home.html">
    <table class="footer-logo" border="0"><tr><td>
        <table class="footer-logo-frame" border="0"><tr><td>
            <table class="footer-logo-square" border="0"><tr class="footer-logo-background"><td>
                <table class="footer-logo-background-background" border="0"><tr class="footer-logo-icon"><td>
                    <table class="footer-logo-icon-icon" border="0"><tr>
                    <td class="footer-logo-icon-image" style="background-image:url('/belisariande/images/Medusade.png')">
                    </td></tr></table>
                </td></tr><tr><td class="footer-logo-label">
                    <table class="footer-logo-label-label" border="0"><tr>
                    <td class="footer-logo-label-text"><b>STHENO</b></td></tr></table>
                </td></tr></table>
            </td></tr></table>
        </td></tr></table>
    </td></tr></table></a></td>

    <!--
    =====================================================================
    === Medusade
    =====================================================================
    -->
    <tr><td name="myPopover" class="popover-buttons"><a href="/medusade/html/Medusade.html">
    <table class="footer-logo" border="0"><tr><td>
        <table class="footer-logo-frame" border="0"><tr><td>
            <table class="footer-logo-square" border="0"><tr class="footer-logo-background"><td>
                <table class="footer-logo-background-background" border="0"><tr class="footer-logo-icon"><td>
                    <table class="footer-logo-icon-icon" border="0"><tr>
                    <td class="footer-logo-icon-image" style="background-image:url('/belisariande/images/Medusas.png')">
                    </td></tr></table>
                </td></tr><tr><td class="footer-logo-label">
                    <table class="footer-logo-label-label" border="0"><tr>
                    <td class="footer-logo-label-text"><b>MEDUSADE</b></td></tr></table>
                </td></tr></table>
            </td></tr></table>
        </td></tr></table>
    </td></tr></table></a></td>

    <!--
    =====================================================================
    === M E D U S A
    =====================================================================
    -->
    <td name="myPopover" class="popover-buttons"><a href="/Application/html/Application.html">
    <table class="footer-logo" border="0"><tr><td>
        <table class="footer-logo-frame" border="0"><tr><td>
            <table class="footer-logo-square" border="0"><tr class="footer-logo-background"><td>
                <table class="footer-logo-background-background" border="0"><tr class="footer-logo-icon"><td>
                    <table class="footer-logo-icon-icon" border="0"><tr>
                    <td class="footer-logo-icon-image" style="background-image:url('/belisariande/images/Medusade.jpg')">
                    </td></tr></table>
                </td></tr><tr><td class="footer-logo-label">
                    <table class="footer-logo-label-label" border="0"><tr>
                    <td class="footer-logo-label-text"><b>M E D U S A</b></td></tr></table>
                </td></tr></table>
            </td></tr></table>
        </td></tr></table>
    </td></tr></table></a></td>

    <!--
    =====================================================================
    === Belisariande
    =====================================================================
    -->
    <td name="myPopover" class="popover-buttons"><a href="/belisariande/html/Belisariande.html">
    <table class="footer-logo" border="0"><tr><td>
        <table class="footer-logo-ring" border="0"><tr><td>
            <table class="footer-logo-circle" border="0"><tr class="footer-logo-background"><td>
                <table class="footer-logo-background-background" border="0"><tr class="footer-logo-icon"><td>
                    <table class="footer-logo-icon-icon" border="0"><tr>
                    <td class="footer-logo-icon-image" style="background-image:url('/belisariande/images/Belisariande.png')">
                    </td></tr></table>
                </td></tr><tr><td class="footer-logo-label">
                    <table class="footer-logo-label-label" border="0"><tr>
                    <td class="footer-logo-label-text"><b>BELISARIAN</b></td></tr></table>
                </td></tr></table>
            </td></tr></table>
        </td></tr></table>
    </td></tr></table></a></td>

</tr></table>
</div>
%
%)%)%