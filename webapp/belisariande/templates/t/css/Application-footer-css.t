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
%#   File: Application-footer-css.t
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
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(%Application%-footer)%)%)%)%)%,%
%Base,%(%else-then(%if-no(%is_base%,,%(%Base%)%)%,%(%if-no(%is_base%,,%(%base%)%)%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_base%,%(%tolower(%Base%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-css.t)%%
%
/*
** footer
** ...
*/
.footer {
    width: 100%%;
    height: 64px;
    margin: auto;
    padding: 0px;
    border: 0px;
    border-style: solid;
    border-color: black;
    border-spacing: 0px 0px;
    position: absolute;
    bottom: 5;
    z-index: 1;
}
.footer-buttons {
    width: 84px;
    height: 64px;
    margin: auto;
    padding: 0px;
    border: 0px;
    border-style: solid;
    border-color: black;
    border-spacing: 0px 0px;
    text-align: center;
    float: left;
    visibility: hidden;
}
.footer-button {
    width: 64px;
    height: 64px;
    margin: auto;
    padding: 0px;
    border: 0px;
    border-style: solid;
    border-color: black;
    border-spacing: 0px 0px;
    text-align: center;
    float: left;
}
.footer-logo {
    width: 64px;
    height: 64px;
    margin: auto;
    background-color: transparent;
    padding: 0px;
    border-spacing: 0px 0px;
    position: relative;
}
.footer-logo-ring { 
    width: 64px;
    height: 64px;
    margin: auto;
    background-color: gray;
    padding: 0px;
    border-spacing: 0px 0px;
    border-radius: 32px;
    cursor: pointer;
}
.footer-logo-ring:hover {
    background-color: BlueViolet;
}
.footer-logo-circle { 
    width: 56px;
    height: 56px;
    margin: auto;
    background-color: black;
    padding: 0px;
    border-spacing: 0px 0px;
    border-radius: 28px;
}
.footer-logo-frame { 
    width: 64px;
    height: 64px;
    margin: auto;
    background-color: black;
    padding: 0px;
    border-spacing: 0px 0px;
    border-radius: 0px;
    cursor: pointer;
}
.footer-logo-frame:hover {
    background-color: BlueViolet;
}
.footer-logo-square { 
    width: 56px;
    height: 56px;
    margin: auto;
    background-color: black;
    padding: 0px;
    border-spacing: 0px 0px;
    border-radius: 0px;
}
.footer-logo-background { 
    vertical-align: center;
}
.footer-logo-background-background { 
    width: 48px;
    height: 48px;
    margin: auto;
    padding: 0px;
    border: 0px;
    border-style: solid;
    border-color: white;
    border-spacing: 0px 0px;
    border-radius: 18px;
}
.footer-logo-icon {
    height: 40px;
    vertical-align: bottom;
}
.footer-logo-icon-icon { 
    width: 32px;
    height: 32px;
    margin: auto;
    padding: 0px;
    border: 0px;
    border-style: solid;
    border-color: white;
    border-spacing: 0px 0px;
    border-radius: 8px;
}
.footer-logo-icon-image {
    background-image: url('../images/%Application%.png');
    background-repeat: no-repeat;
    background-position: bottom;
    background-size: 100%%;
    border: 0px;
    border-style: solid;
    border-color: white;
    border-radius: 8px 8px 8px 8px;
}
.footer-logo-label-label { 
    width: 80%%;
    height: 80%%;
    margin: auto;
    padding: 0px;
    border-spacing: 0px 0px;
}
.footer-logo-label-text {
    font-size: 6px;
    font-weight: bold;
    text-align: center;
    color: gray;
    opacity: 0;
    transition: .5s ease;                
}
.footer-logo-label-text b {
    color: lightgray;
}
.footer-logo-ring:hover .footer-logo-label-text {
    opacity: 1;
}
.footer-logo-frame:hover .footer-logo-label-text {
    opacity: 1;
}

/*
** ...
** footer
*/
%
%)%)%