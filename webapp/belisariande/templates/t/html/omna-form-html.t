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
%#   File: omna-form.t
%#
%# Author: $author$
%#   Date: 3/30/2021
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_application,%(%else-then(%is_application%,%(%is_Application%)%)%)%,%
%application,%(%else-then(%if-no(%is_application%,,%(%application%)%)%,%(%if-no(%is_application%,,%(Belisariande)%)%)%)%)%,%
%Application,%(%else-then(%if-no(%is_application%,,%(%Application%)%)%,%(%if-no(%is_application%,,%(%application%)%)%)%)%)%,%
%APPLICATION,%(%else-then(%APPLICATION%,%(%toupper(%Application%)%)%)%)%,%
%application,%(%else-then(%_application%,%(%tolower(%Application%)%)%)%)%,%
%is_section,%(%else-then(%is_section%,%(%is_Section%)%)%)%,%
%section,%(%else-then(%if-no(%is_section%,,%(%section%)%)%,%(%if-no(%is_section%,,%(omna)%)%)%)%)%,%
%Section,%(%else-then(%if-no(%is_section%,,%(%Section%)%)%,%(%if-no(%is_section%,,%(%section%)%)%)%)%)%,%
%SECTION,%(%else-then(%SECTION%,%(%toupper(%Section%)%)%)%)%,%
%section,%(%else-then(%_section%,%(%tolower(%Section%)%)%)%)%,%
%is_form,%(%else-then(%is_form%,%(%is_Form%)%)%)%,%
%form,%(%else-then(%if-no(%is_form%,,%(%form%)%)%,%(%if-no(%is_form%,,%(form)%)%)%)%)%,%
%Form,%(%else-then(%if-no(%is_form%,,%(%Form%)%)%,%(%if-no(%is_form%,,%(%form%)%)%)%)%)%,%
%FORM,%(%else-then(%FORM%,%(%toupper(%Form%)%)%)%)%,%
%form,%(%else-then(%_form%,%(%tolower(%Form%)%)%)%)%,%
%is_what,%(%else-then(%is_what%,%(%is_What%)%)%)%,%
%what,%(%else-then(%if-no(%is_what%,,%(%what%)%)%,%(%if-no(%is_what%,,%(html)%)%)%)%)%,%
%What,%(%else-then(%if-no(%is_what%,,%(%What%)%)%,%(%if-no(%is_what%,,%(%what%)%)%)%)%)%,%
%WHAT,%(%else-then(%WHAT%,%(%toupper(%What%)%)%)%)%,%
%what,%(%else-then(%_what%,%(%tolower(%What%)%)%)%)%,%
%is_part,%(%else-then(%is_part%,%(%is_Part%)%)%)%,%
%part,%(%else-then(%if-no(%is_part%,,%(%part%)%)%,%(%if-no(%is_part%,,%(%Section%-%Form%)%)%)%)%)%,%
%Part,%(%else-then(%if-no(%is_part%,,%(%Part%)%)%,%(%if-no(%is_part%,,%(%part%)%)%)%)%)%,%
%PART,%(%else-then(%PART%,%(%toupper(%Part%)%)%)%)%,%
%part,%(%else-then(%_part%,%(%tolower(%Part%)%)%)%)%,%
%is_applicationpart,%(%else-then(%is_applicationpart%,%(%is_ApplicationPart%)%)%)%,%
%applicationpart,%(%else-then(%if-no(%is_applicationpart%,,%(%applicationpart%)%)%,%(%if-no(%is_applicationpart%,,%(%Application%%then-if(%Part%,-)%)%)%)%)%)%,%
%ApplicationPart,%(%else-then(%if-no(%is_applicationpart%,,%(%ApplicationPart%)%)%,%(%if-no(%is_applicationpart%,,%(%applicationpart%)%)%)%)%)%,%
%APPLICATIONPART,%(%else-then(%APPLICATIONPART%,%(%toupper(%ApplicationPart%)%)%)%)%,%
%applicationpart,%(%else-then(%_applicationpart%,%(%tolower(%ApplicationPart%)%)%)%)%,%
%is_name,%(%else-then(%is_name%,%(%is_Name%)%)%)%,%
%name,%(%else-then(%if-no(%is_name%,,%(%name%)%)%,%(%if-no(%is_name%,,%(%ApplicationPart%)%)%)%)%)%,%
%Name,%(%else-then(%if-no(%is_name%,,%(%Name%)%)%,%(%if-no(%is_name%,,%(%name%)%)%)%)%)%,%
%NAME,%(%else-then(%NAME%,%(%toupper(%Name%)%)%)%)%,%
%name,%(%else-then(%_name%,%(%tolower(%Name%)%)%)%)%,%
%is_form_name,%(%else-then(%is_form_name%,%(%is_Form_name%)%)%)%,%
%form_name,%(%else-then(%if-no(%is_form_name%,,%(%form_name%)%)%,%(%if-no(%is_form_name%,,%(Form)%)%)%)%)%,%
%Form_name,%(%else-then(%if-no(%is_form_name%,,%(%Form_name%)%)%,%(%if-no(%is_form_name%,,%(%form_name%)%)%)%)%)%,%
%FORM_NAME,%(%else-then(%FORM_NAME%,%(%toupper(%Form_name%)%)%)%)%,%
%form_name,%(%else-then(%_form_name%,%(%tolower(%Form_name%)%)%)%)%,%
%is_form_method_name,%(%else-then(%is_form_method_name%,%(%is_Form_method_name%)%)%)%,%
%form_method_name,%(%else-then(%if-no(%is_form_method_name%,,%(%form_method_name%)%)%,%(%if-no(%is_form_method_name%,,%(FormMethod)%)%)%)%)%,%
%Form_method_name,%(%else-then(%if-no(%is_form_method_name%,,%(%Form_method_name%)%)%,%(%if-no(%is_form_method_name%,,%(%form_method_name%)%)%)%)%)%,%
%FORM_METHOD_NAME,%(%else-then(%FORM_METHOD_NAME%,%(%toupper(%Form_method_name%)%)%)%)%,%
%form_method_name,%(%else-then(%_form_method_name%,%(%tolower(%Form_method_name%)%)%)%)%,%
%is_form_action_name,%(%else-then(%is_form_action_name%,%(%is_Form_action_name%)%)%)%,%
%form_action_name,%(%else-then(%if-no(%is_form_action_name%,,%(%form_action_name%)%)%,%(%if-no(%is_form_action_name%,,%(FormAction)%)%)%)%)%,%
%Form_action_name,%(%else-then(%if-no(%is_form_action_name%,,%(%Form_action_name%)%)%,%(%if-no(%is_form_action_name%,,%(%form_action_name%)%)%)%)%)%,%
%FORM_ACTION_NAME,%(%else-then(%FORM_ACTION_NAME%,%(%toupper(%Form_action_name%)%)%)%)%,%
%form_action_name,%(%else-then(%_form_action_name%,%(%tolower(%Form_action_name%)%)%)%)%,%
%is_form_template_name,%(%else-then(%is_form_template_name%,%(%is_Form_template_name%)%)%)%,%
%form_template_name,%(%else-then(%if-no(%is_form_template_name%,,%(%form_template_name%)%)%,%(%if-no(%is_form_template_name%,,%(FormTemplate)%)%)%)%)%,%
%Form_template_name,%(%else-then(%if-no(%is_form_template_name%,,%(%Form_template_name%)%)%,%(%if-no(%is_form_template_name%,,%(%form_template_name%)%)%)%)%)%,%
%FORM_TEMPLATE_NAME,%(%else-then(%FORM_TEMPLATE_NAME%,%(%toupper(%Form_template_name%)%)%)%)%,%
%form_template_name,%(%else-then(%_form_template_name%,%(%tolower(%Form_template_name%)%)%)%)%,%
%is_form_content_type_name,%(%else-then(%is_form_content_type_name%,%(%is_Form_content_type_name%)%)%)%,%
%form_content_type_name,%(%else-then(%if-no(%is_form_content_type_name%,,%(%form_content_type_name%)%)%,%(%if-no(%is_form_content_type_name%,,%(content_type)%)%)%)%)%,%
%Form_content_type_name,%(%else-then(%if-no(%is_form_content_type_name%,,%(%Form_content_type_name%)%)%,%(%if-no(%is_form_content_type_name%,,%(%form_content_type_name%)%)%)%)%)%,%
%FORM_CONTENT_TYPE_NAME,%(%else-then(%FORM_CONTENT_TYPE_NAME%,%(%toupper(%Form_content_type_name%)%)%)%)%,%
%form_content_type_name,%(%else-then(%_form_content_type_name%,%(%tolower(%Form_content_type_name%)%)%)%)%,%
%is_form_class,%(%else-then(%is_form_class%,%(%is_Form_class%)%)%)%,%
%form_class,%(%else-then(%if-no(%is_form_class%,,%(%form_class%)%)%,%(%if-no(%is_form_class%,,%(form)%)%)%)%)%,%
%Form_class,%(%else-then(%if-no(%is_form_class%,,%(%Form_class%)%)%,%(%if-no(%is_form_class%,,%(%form_class%)%)%)%)%)%,%
%FORM_CLASS,%(%else-then(%FORM_CLASS%,%(%toupper(%Form_class%)%)%)%)%,%
%form_class,%(%else-then(%_form_class%,%(%tolower(%Form_class%)%)%)%)%,%
%is_form_method,%(%else-then(%is_form_method%,%(%is_Form_method%)%)%)%,%
%form_method,%(%else-then(%if-no(%is_form_method%,,%(%form_method%)%)%,%(%if-no(%is_form_method%,,%(POST)%)%)%)%)%,%
%Form_method,%(%else-then(%if-no(%is_form_method%,,%(%Form_method%)%)%,%(%if-no(%is_form_method%,,%(%form_method%)%)%)%)%)%,%
%FORM_METHOD,%(%else-then(%FORM_METHOD%,%(%toupper(%Form_method%)%)%)%)%,%
%form_method,%(%else-then(%_form_method%,%(%tolower(%Form_method%)%)%)%)%,%
%is_form_action,%(%else-then(%is_form_action%,%(%is_Form_action%)%)%)%,%
%form_action,%(%else-then(%if-no(%is_form_action%,,%(%form_action%)%)%,%(%if-no(%is_form_action%,,%(../templates/t/%what%/%what%.t)%)%)%)%)%,%
%Form_action,%(%else-then(%if-no(%is_form_action%,,%(%Form_action%)%)%,%(%if-no(%is_form_action%,,%(%form_action%)%)%)%)%)%,%
%FORM_ACTION,%(%else-then(%FORM_ACTION%,%(%toupper(%Form_action%)%)%)%)%,%
%form_action,%(%else-then(%_form_action%,%(%tolower(%Form_action%)%)%)%)%,%
%is_form_template,%(%else-then(%is_form_template%,%(%is_Form_template%)%)%)%,%
%form_template,%(%else-then(%if-no(%is_form_template%,,%(%form_template%)%)%,%(%if-no(%is_form_template%,,%(Form_template)%)%)%)%)%,%
%Form_template,%(%else-then(%if-no(%is_form_template%,,%(%Form_template%)%)%,%(%if-no(%is_form_template%,,%(%form_template%)%)%)%)%)%,%
%FORM_TEMPLATE,%(%else-then(%FORM_TEMPLATE%,%(%toupper(%Form_template%)%)%)%)%,%
%form_template,%(%else-then(%_form_template%,%(%tolower(%Form_template%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-html.t)%%
%<!--
=====================================================================
=== form
=====================================================================
-->
<form name="%Form_name%" method="%Form_method%" action="%Form_action%"
 onSubmit="return setFormSubmit(getFormValue2('%Form_template_name%','%Form_action_name%','%Form_name%'),getFormValue('%Form_method_name%','%Form_name%'),'%Form_name%')">
    <div class="%Form_class%">

    Template: <select name="%Form_template_name%">
    <option value="%Form_action%">(%Form_action%)</option>
    <option value=""></option>
    <option value="../templates/t/t/parameters.t">t parameters</option>
    <option value="../templates/t/t/functions.t">t functions</option>
    <option value=""></option>
    <option value="/%application%-cgi/cgi">cgi parameters</option>
    <option value="/%application%-cgi/cgicatch">catch cgi parameters</option>
    </select>
    <br/>
    <br/>

    <br/>
    Content-Type: <select name="%Form_content_type_name%">
    <option value="text/plain">text</option>
    <option value="text/html">html</option>
    <option value="text/xml">xml</option>
    <option value="application/json">json</option>
    <option value="application/javascript">javascript</option>
    <option value=""></option>
    </select><br/>
    Action: <select name="%Form_action_name%">
    <option value="%Form_action%">(%Form_action%)</option>
    <option value=""></option>
    <option value="../templates/t/t/functions.t">t functions</option>
    <option value="../templates/t/t/parameters.t">t parameters</option>
    <option value=""></option>
    <option value="/%application%-cgi/cgi">cgi parameters</option>
    <option value="/%application%-cgi/cgicatch">catch cgi parameters</option>
    </select><br/>
    Method: <select name="%Form_method_name%">
    <option value="POST">POST</option>
    <option value="GET">GET</option>
    <option value=""></option>
    </select><br/><br/>
    <input type="submit" name="submit" value="submit"/><br/>
    </div>
</form>
%)%)%