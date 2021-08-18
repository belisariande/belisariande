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
%#   File: Application-create-menubar-html.t
%#
%# Author: $author$
%#   Date: 8/18/2021
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
%what,%(%else-then(%if-no(%is_what%,,%(%what%)%)%,%(%if-no(%is_what%,,%(%else-then(%right-of-left(%Page%,%( )%)%,these)%)%)%)%)%)%,%
%What,%(%else-then(%if-no(%is_what%,,%(%What%)%)%,%(%if-no(%is_what%,,%(%what%)%)%)%)%)%,%
%WHAT,%(%else-then(%WHAT%,%(%toupper(%What%)%)%)%)%,%
%what,%(%else-then(%_what%,%(%tolower(%What%)%)%)%)%,%
%is_what_extension,%(%else-then(%is_what_extension%,%(%is_What_extension%)%)%)%,%
%what_extension,%(%else-then(%if-no(%is_what_extension%,,%(%what_extension%)%)%,%(%if-no(%is_what_extension%,,%(%What%)%)%)%)%)%,%
%What_extension,%(%else-then(%if-no(%is_what_extension%,,%(%What_extension%)%)%,%(%if-no(%is_what_extension%,,%(%what_extension%)%)%)%)%)%,%
%WHAT_EXTENSION,%(%else-then(%WHAT_EXTENSION%,%(%toupper(%What_extension%)%)%)%)%,%
%what_extension,%(%else-then(%_what_extension%,%(%tolower(%What_extension%)%)%)%)%,%
%is_do,%(%else-then(%is_do%,%(%is_Do%)%)%)%,%
%do,%(%else-then(%if-no(%is_do%,,%(%do%)%)%,%(%if-no(%is_do%,,%(Create)%)%)%)%)%,%
%Do,%(%else-then(%if-no(%is_do%,,%(%Do%)%)%,%(%if-no(%is_do%,,%(%do%)%)%)%)%)%,%
%DO,%(%else-then(%DO%,%(%toupper(%Do%)%)%)%)%,%
%do,%(%else-then(%_do%,%(%tolower(%Do%)%)%)%)%,%
%is_do_what,%(%else-then(%is_do_what%,%(%is_Do_what%)%)%)%,%
%do_what,%(%else-then(%if-no(%is_do_what%,,%(%do_what%)%)%,%(%if-no(%is_do_what%,,%(%Do%%then-if(%What%,%( )%)%)%)%)%)%)%,%
%Do_what,%(%else-then(%if-no(%is_do_what%,,%(%Do_what%)%)%,%(%if-no(%is_do_what%,,%(%do_what%)%)%)%)%)%,%
%DO_WHAT,%(%else-then(%DO_WHAT%,%(%toupper(%Do_what%)%)%)%)%,%
%do_what,%(%else-then(%_do_what%,%(%tolower(%Do_what%)%)%)%)%,%
%is_page,%(%else-then(%is_page%,%(%is_Page%)%)%)%,%
%page,%(%else-then(%if-no(%is_page%,,%(%page%)%)%,%(%if-no(%is_page%,,%(%Do_what%)%)%)%)%)%,%
%Page,%(%else-then(%if-no(%is_page%,,%(%Page%)%)%,%(%if-no(%is_page%,,%(%page%)%)%)%)%)%,%
%PAGE,%(%else-then(%PAGE%,%(%toupper(%Page%)%)%)%)%,%
%page,%(%else-then(%_page%,%(%tolower(%Page%)%)%)%)%,%
%is_application_page,%(%else-then(%is_application_page%,%(%is_Application_page%)%)%)%,%
%application_page,%(%else-then(%if-no(%is_application_page%,,%(%application_page%)%)%,%(%if-no(%is_application_page%,,%(%Application%%then-if(%Page%,%( - )%)%)%)%)%)%)%,%
%Application_page,%(%else-then(%if-no(%is_application_page%,,%(%Application_page%)%)%,%(%if-no(%is_application_page%,,%(%application_page%)%)%)%)%)%,%
%APPLICATION_PAGE,%(%else-then(%APPLICATION_PAGE%,%(%toupper(%Application_page%)%)%)%)%,%
%application_page,%(%else-then(%_application_page%,%(%tolower(%Application_page%)%)%)%)%,%
%is_application_do,%(%else-then(%is_application_do%,%(%is_Application_do%)%)%)%,%
%application_do,%(%else-then(%if-no(%is_application_do%,,%(%application_do%)%)%,%(%if-no(%is_application_do%,,%(%Application%%then-if(%parse(%page%,%( )%,,-)%,-)%)%)%)%)%)%,%
%Application_do,%(%else-then(%if-no(%is_application_do%,,%(%Application_do%)%)%,%(%if-no(%is_application_do%,,%(%application_do%)%)%)%)%)%,%
%APPLICATION_DO,%(%else-then(%APPLICATION_DO%,%(%toupper(%Application_do%)%)%)%)%,%
%application_do,%(%else-then(%_application_do%,%(%tolower(%Application_do%)%)%)%)%,%
%is_base,%(%else-then(%is_base%,%(%is_Base%)%)%)%,%
%is_application_do_menubar,%(%else-then(%is_application_do_menubar%,%(%is_Application_do_menubar%)%)%)%,%
%application_do_menubar,%(%else-then(%if-no(%is_application_do_menubar%,,%(%application_do_menubar%)%)%,%(%if-no(%is_application_do_menubar%,,%(%Application_do%-menubar)%)%)%)%)%,%
%Application_do_menubar,%(%else-then(%if-no(%is_application_do_menubar%,,%(%Application_do_menubar%)%)%,%(%if-no(%is_application_do_menubar%,,%(%application_do_menubar%)%)%)%)%)%,%
%APPLICATION_DO_MENUBAR,%(%else-then(%APPLICATION_DO_MENUBAR%,%(%toupper(%Application_do_menubar%)%)%)%)%,%
%application_do_menubar,%(%else-then(%_application_do_menubar%,%(%tolower(%Application_do_menubar%)%)%)%)%,%
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(%Application_do_menubar%)%)%)%)%)%,%
%Base,%(%else-then(%if-no(%is_base%,,%(%Base%)%)%,%(%if-no(%is_base%,,%(%base%)%)%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_base%,%(%tolower(%Base%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-html.t)%%
%<ul class="menubar">
    <li class=""><div><a href="%Application_do%.html">%Do_what%</a></div></li>
    <li class="home"><div><a href="%Application%.html">home</a></div></li>
    <li class="home"><div><a href="%Application%-tools.html">tools</a></div></li>
</ul>
%
%)%)%