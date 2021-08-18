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
%#   File: Application-logo-html.t
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
%is_onclicklocation,%(%else-then(%is_onclicklocation%,%(%is_OnClickLocation%)%)%)%,%
%onclicklocation,%(%else-then(%if-no(%is_onclicklocation%,,%(%onclicklocation%)%)%,%(%if-no(%is_onclicklocation%,,%(%Application%.html)%)%)%)%)%,%
%OnClickLocation,%(%else-then(%if-no(%is_onclicklocation%,,%(%OnClickLocation%)%)%,%(%if-no(%is_onclicklocation%,,%(%onclicklocation%)%)%)%)%)%,%
%ONCLICKLOCATION,%(%else-then(%ONCLICKLOCATION%,%(%toupper(%OnClickLocation%)%)%)%)%,%
%onclicklocation,%(%else-then(%_onclicklocation%,%(%tolower(%OnClickLocation%)%)%)%)%,%
%is_logolabeltext,%(%else-then(%is_logolabeltext%,%(%is_LogoLabelText%)%)%)%,%
%logolabeltext,%(%else-then(%if-no(%is_logolabeltext%,,%(%logolabeltext%)%)%,%(%if-no(%is_logolabeltext%,,%(%APPLICATION%)%)%)%)%)%,%
%LogoLabelText,%(%else-then(%if-no(%is_logolabeltext%,,%(%LogoLabelText%)%)%,%(%if-no(%is_logolabeltext%,,%(%logolabeltext%)%)%)%)%)%,%
%LOGOLABELTEXT,%(%else-then(%LOGOLABELTEXT%,%(%toupper(%LogoLabelText%)%)%)%)%,%
%logolabeltext,%(%else-then(%_logolabeltext%,%(%tolower(%LogoLabelText%)%)%)%)%,%
%is_base,%(%else-then(%is_base%,%(%is_Base%)%)%)%,%
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(%Application%-logo)%)%)%)%)%,%
%Base,%(%else-then(%if-no(%is_base%,,%(%Base%)%)%,%(%if-no(%is_base%,,%(%base%)%)%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_base%,%(%tolower(%Base%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-html.t)%%
%<table class="logo-body" border="0"><tr><td>
    <table class="body-logo" onclick="onClickLocation(event,'%OnClickLocation%')" border="0"><tr><td>
        <table class="logo-ring" border="0"><tr><td>
        <table class="logo-circle" border="0"><tr class="logo-background"><td>
            <table class="logo-background-background" border="0"><tr class="logo-icon"><td>
                <table class="logo-icon-icon" border="0"><tr><td class="logo-icon-image">
                </td></tr></table>
            </td></tr><tr><td class="logo-label">
            <table class="logo-label-label" border="0"><tr><td class="logo-label-text">%LogoLabelText%</td></tr></table>
            </td></tr></table>
        </td></tr></table>
        </td></tr></table>
    </td></tr></table>
</td></tr></table>
%
%)%)%