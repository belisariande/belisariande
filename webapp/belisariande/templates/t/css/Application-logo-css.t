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
%#   File: Application-logo-css.t
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
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(%Application%-logo)%)%)%)%)%,%
%Base,%(%else-then(%if-no(%is_base%,,%(%Base%)%)%,%(%if-no(%is_base%,,%(%base%)%)%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_base%,%(%tolower(%Base%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-css.t)%%
%
/*
** logo
** ...
*/
.logo-body {
    width: 100%%;
    height: 100%%;
    margin: auto;
    background-color: transparent;
    padding: 0px 0px 0px 0px;
    border-spacing: 0px 0px 0px 0px;
    position: absolute;
    z-index: 0;
}
.body-logo {
    width: 360px;
    height: 360px;
    margin: auto;
    padding: 0px 0px 0px 0px;
    border-spacing: 0px 0px 0px 0px;
    position: relative;
}
.logo {
    width: 360px;
    height: 360px;
    margin: auto;
    padding: 0px 0px 0px 0px;
    border-spacing: 0px 0px 0px 0px;
    position: absolute;
    top: 50%%;
    left: 50%%;
    transform: translate(-50%%, -50%%);
    z-index: 0;
}
.logo-ring { 
    width: 360px;
    height: 360px;
    margin: auto;
    background-color: gray;
    padding: 0px 0px 0px 0px;
    border-spacing: 0px 0px 0px 0px;
    border-radius: 330px;
    cursor: pointer;
}
.logo-ring:hover {
    background-color: BlueViolet;
}

.logo-circle { 
    width: 330px;
    height: 330px;
    margin: auto;
    background-color: black;
    padding: 0px 0px 0px 0px;
    border-spacing: 0px 0px 0px 0px;
    border-radius: 165px;
}
.logo-background { 
    vertical-align: center;
}
.logo-background-background { 
    width: 290px;
    height: 290px;
    margin: auto;
    background-color: black;
    padding: 0px 0px 0px 0px;
    border-spacing: 0px 0px 0px 0px;
    border-radius: 145px;
}
.logo-icon {
    height: 250px;
    vertical-align: bottom;
}
.logo-icon-icon { 
    width: 240px;
    height: 240px;
    margin: auto;
    background-color: black;
    padding: 0px 0px 0px 0px;
    border-spacing: 0px 0px 0px 0px;
    border-radius: 90px;
}
.logo-icon-image {
    background-image: url('../images/%Application%.png');
    background-repeat: no-repeat;
    background-position: bottom;
    background-size: 100%%;
    border-radius: 90px 90px 40px 60px;
}
.logo-label {
    vertical-align: top;
}
.logo-label-label { 
    width: 100%%;
    height: 100%%;
    margin: auto;
    padding: 0px 0px 0px 0px;
    border-spacing: 0px 0px 0px 0px;
}
.logo-label-text {
    font-size: 30px;
    font-weight: bold;
    text-align: center;
    color: gray;
    opacity: 0;
    transition: .5s ease;                
}
.logo-label-text b {
    color: lightgray;
}
.logo-ring:hover .logo-label-text b {
    text-decoration: none;
}
.logo-ring:hover .logo-label-text {
    text-decoration: none;
    opacity: 1;
}
/*
** ...
** logo
*/

%
%)%)%