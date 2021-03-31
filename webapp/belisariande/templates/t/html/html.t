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
%#   File: html.t
%#
%# Author: $author$
%#   Date: 3/28/2021
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
%is_group,%(%else-then(%is_group%,%(%is_Group%)%)%)%,%
%group,%(%else-then(%if-no(%is_group%,,%(%group%)%)%,%(%if-no(%is_group%,,%()%)%)%)%)%,%
%Group,%(%else-then(%if-no(%is_group%,,%(%Group%)%)%,%(%if-no(%is_group%,,%(%group%)%)%)%)%)%,%
%GROUP,%(%else-then(%GROUP%,%(%toupper(%Group%)%)%)%)%,%
%group,%(%else-then(%_group%,%(%tolower(%Group%)%)%)%)%,%
%is_applicationgroup,%(%else-then(%is_applicationgroup%,%(%is_ApplicationGroup%)%)%)%,%
%applicationgroup,%(%else-then(%if-no(%is_applicationgroup%,,%(%applicationgroup%)%)%,%(%if-no(%is_applicationgroup%,,%(%Application%%then-if(%Group%,-)%)%)%)%)%)%,%
%ApplicationGroup,%(%else-then(%if-no(%is_applicationgroup%,,%(%ApplicationGroup%)%)%,%(%if-no(%is_applicationgroup%,,%(%applicationgroup%)%)%)%)%)%,%
%APPLICATIONGROUP,%(%else-then(%APPLICATIONGROUP%,%(%toupper(%ApplicationGroup%)%)%)%)%,%
%applicationgroup,%(%else-then(%_applicationgroup%,%(%tolower(%ApplicationGroup%)%)%)%)%,%
%is_page,%(%else-then(%is_page%,%(%is_Page%)%)%)%,%
%page,%(%else-then(%if-no(%is_page%,,%(%page%)%)%,%(%if-no(%is_page%,,%(Home)%)%)%)%)%,%
%Page,%(%else-then(%if-no(%is_page%,,%(%Page%)%)%,%(%if-no(%is_page%,,%(%page%)%)%)%)%)%,%
%PAGE,%(%else-then(%PAGE%,%(%toupper(%Page%)%)%)%)%,%
%page,%(%else-then(%_page%,%(%tolower(%Page%)%)%)%)%,%
%is_name,%(%else-then(%is_name%,%(%is_Name%)%)%)%,%
%name,%(%else-then(%if-no(%is_name%,,%(%name%)%)%,%(%if-no(%is_name%,,%(%ApplicationGroup%-%parse(%page%, ,,-)%)%)%)%)%)%,%
%Name,%(%else-then(%if-no(%is_name%,,%(%Name%)%)%,%(%if-no(%is_name%,,%(%name%)%)%)%)%)%,%
%NAME,%(%else-then(%NAME%,%(%toupper(%Name%)%)%)%)%,%
%name,%(%else-then(%_name%,%(%tolower(%Name%)%)%)%)%,%
%is_applicationpage,%(%else-then(%is_applicationpage%,%(%is_ApplicationPage%)%)%)%,%
%applicationpage,%(%else-then(%if-no(%is_applicationpage%,,%(%applicationpage%)%)%,%(%if-no(%is_applicationpage%,,%(%Application%%then-if(%Page%,%( - )%)%)%)%)%)%)%,%
%ApplicationPage,%(%else-then(%if-no(%is_applicationpage%,,%(%ApplicationPage%)%)%,%(%if-no(%is_applicationpage%,,%(%applicationpage%)%)%)%)%)%,%
%APPLICATIONPAGE,%(%else-then(%APPLICATIONPAGE%,%(%toupper(%ApplicationPage%)%)%)%)%,%
%applicationpage,%(%else-then(%_applicationpage%,%(%tolower(%ApplicationPage%)%)%)%)%,%
%is_parent,%(%else-then(%is_parent%,%(%is_Parent%)%)%)%,%
%parent,%(%else-then(%if-no(%is_parent%,,%(%parent%)%)%,%(%if-no(%is_parent%,,%()%)%)%)%)%,%
%Parent,%(%else-then(%if-no(%is_parent%,,%(%Parent%)%)%,%(%if-no(%is_parent%,,%(%parent%)%)%)%)%)%,%
%PARENT,%(%else-then(%PARENT%,%(%toupper(%Parent%)%)%)%)%,%
%parent,%(%else-then(%_parent%,%(%tolower(%Parent%)%)%)%)%,%
%is_self,%(%else-then(%is_self%,%(%is_Self%)%)%)%,%
%self,%(%else-then(%if-no(%is_self%,,%(%self%)%)%,%(%if-no(%is_self%,,%(%parse(%page%, ,,-)%)%)%)%)%)%,%
%Self,%(%else-then(%if-no(%is_self%,,%(%Self%)%)%,%(%if-no(%is_self%,,%(%self%)%)%)%)%)%,%
%SELF,%(%else-then(%SELF%,%(%toupper(%Self%)%)%)%)%,%
%self,%(%else-then(%_self%,%(%tolower(%Self%)%)%)%)%,%
%is_parent_location,%(%else-then(%is_parent_location%,%(%is_Parent_location%)%)%)%,%
%parent_location,%(%else-then(%if-no(%is_parent_location%,,%(%parent_location%)%)%,%(%if-no(%is_parent_location%,,%(%ApplicationGroup%%then-if(%Parent%,-)%.html)%)%)%)%)%,%
%Parent_location,%(%else-then(%if-no(%is_parent_location%,,%(%Parent_location%)%)%,%(%if-no(%is_parent_location%,,%(%parent_location%)%)%)%)%)%,%
%PARENT_LOCATION,%(%else-then(%PARENT_LOCATION%,%(%toupper(%Parent_location%)%)%)%)%,%
%parent_location,%(%else-then(%_parent_location%,%(%tolower(%Parent_location%)%)%)%)%,%
%is_self_location,%(%else-then(%is_self_location%,%(%is_Self_location%)%)%)%,%
%self_location,%(%else-then(%if-no(%is_self_location%,,%(%self_location%)%)%,%(%if-no(%is_self_location%,,%(%ApplicationGroup%%then-if(%Self%,-)%.html)%)%)%)%)%,%
%Self_location,%(%else-then(%if-no(%is_self_location%,,%(%Self_location%)%)%,%(%if-no(%is_self_location%,,%(%self_location%)%)%)%)%)%,%
%SELF_LOCATION,%(%else-then(%SELF_LOCATION%,%(%toupper(%Self_location%)%)%)%)%,%
%self_location,%(%else-then(%_self_location%,%(%tolower(%Self_location%)%)%)%)%,%
%is_style_type,%(%else-then(%is_style_type%,%(%is_Style_type%)%)%)%,%
%style_type,%(%else-then(%if-no(%is_style_type%,,%(%style_type%)%)%,%(%if-no(%is_style_type%,,%(text/css)%)%)%)%)%,%
%Style_type,%(%else-then(%if-no(%is_style_type%,,%(%Style_type%)%)%,%(%if-no(%is_style_type%,,%(%style_type%)%)%)%)%)%,%
%STYLE_TYPE,%(%else-then(%STYLE_TYPE%,%(%toupper(%Style_type%)%)%)%)%,%
%style_type,%(%else-then(%_style_type%,%(%tolower(%Style_type%)%)%)%)%,%
%is_script_type,%(%else-then(%is_script_type%,%(%is_Script_type%)%)%)%,%
%script_type,%(%else-then(%if-no(%is_script_type%,,%(%script_type%)%)%,%(%if-no(%is_script_type%,,%(text/javascript)%)%)%)%)%,%
%Script_type,%(%else-then(%if-no(%is_script_type%,,%(%Script_type%)%)%,%(%if-no(%is_script_type%,,%(%script_type%)%)%)%)%)%,%
%SCRIPT_TYPE,%(%else-then(%SCRIPT_TYPE%,%(%toupper(%Script_type%)%)%)%)%,%
%script_type,%(%else-then(%_script_type%,%(%tolower(%Script_type%)%)%)%)%,%
%is_script_path,%(%else-then(%is_script_path%,%(%is_Script_path%)%)%)%,%
%script_path,%(%else-then(%if-no(%is_script_path%,,%(%script_path%)%)%,%(%if-no(%is_script_path%,,%(../js)%)%)%)%)%,%
%Script_path,%(%else-then(%if-no(%is_script_path%,,%(%Script_path%)%)%,%(%if-no(%is_script_path%,,%(%script_path%)%)%)%)%)%,%
%SCRIPT_PATH,%(%else-then(%SCRIPT_PATH%,%(%toupper(%Script_path%)%)%)%)%,%
%script_path,%(%else-then(%_script_path%,%(%tolower(%Script_path%)%)%)%)%,%
%is_script_extension,%(%else-then(%is_script_extension%,%(%is_Script_extension%)%)%)%,%
%script_extension,%(%else-then(%if-no(%is_script_extension%,,%(%script_extension%)%)%,%(%if-no(%is_script_extension%,,%(js)%)%)%)%)%,%
%Script_extension,%(%else-then(%if-no(%is_script_extension%,,%(%Script_extension%)%)%,%(%if-no(%is_script_extension%,,%(%script_extension%)%)%)%)%)%,%
%SCRIPT_EXTENSION,%(%else-then(%SCRIPT_EXTENSION%,%(%toupper(%Script_extension%)%)%)%)%,%
%script_extension,%(%else-then(%_script_extension%,%(%tolower(%Script_extension%)%)%)%)%,%
%is_script_source,%(%else-then(%is_script_source%,%(%is_Script_source%)%)%)%,%
%script_source,%(%else-then(%if-no(%is_script_source%,,%(%script_source%)%)%,%(%if-no(%is_script_source%,,%(%
%%Application%%
%)%)%)%)%)%,%
%Script_source,%(%else-then(%if-no(%is_script_source%,,%(%Script_source%)%)%,%(%if-no(%is_script_source%,,%(%script_source%)%)%)%)%)%,%
%SCRIPT_SOURCE,%(%else-then(%SCRIPT_SOURCE%,%(%toupper(%Script_source%)%)%)%)%,%
%script_source,%(%else-then(%_script_source%,%(%tolower(%Script_source%)%)%)%)%,%
%is_script_src,%(%else-then(%is_script_src%,%(%is_Script_src%)%)%)%,%
%script_src,%(%else-then(%if-no(%is_script_src%,,%(%script_src%)%)%,%(%if-no(%is_script_src%,,%(%Script_path%/%Script_source%.%Script_extension%)%)%)%)%)%,%
%Script_src,%(%else-then(%if-no(%is_script_src%,,%(%Script_src%)%)%,%(%if-no(%is_script_src%,,%(%script_src%)%)%)%)%)%,%
%SCRIPT_SRC,%(%else-then(%SCRIPT_SRC%,%(%toupper(%Script_src%)%)%)%)%,%
%script_src,%(%else-then(%_script_src%,%(%tolower(%Script_src%)%)%)%)%,%
%is_script_body,%(%else-then(%is_script_body%,%(%is_Script_body%)%)%)%,%
%script_body,%(%else-then(%if-no(%is_script_body%,,%(%script_body%)%)%,%(%if-no(%is_script_body%,,%(
            onLocationInit('%Parent_location%', '%Self_location%');)%)%)%)%)%,%
%Script_body,%(%else-then(%if-no(%is_script_body%,,%(%Script_body%)%)%,%(%if-no(%is_script_body%,,%(%script_body%)%)%)%)%)%,%
%SCRIPT_BODY,%(%else-then(%SCRIPT_BODY%,%(%toupper(%Script_body%)%)%)%)%,%
%script_body,%(%else-then(%_script_body%,%(%tolower(%Script_body%)%)%)%)%,%
%is_link_style_rel,%(%else-then(%is_link_style_rel%,%(%is_Link_style_rel%)%)%)%,%
%link_style_rel,%(%else-then(%if-no(%is_link_style_rel%,,%(%link_style_rel%)%)%,%(%if-no(%is_link_style_rel%,,%(stylesheet)%)%)%)%)%,%
%Link_style_rel,%(%else-then(%if-no(%is_link_style_rel%,,%(%Link_style_rel%)%)%,%(%if-no(%is_link_style_rel%,,%(%link_style_rel%)%)%)%)%)%,%
%LINK_STYLE_REL,%(%else-then(%LINK_STYLE_REL%,%(%toupper(%Link_style_rel%)%)%)%)%,%
%link_style_rel,%(%else-then(%_link_style_rel%,%(%tolower(%Link_style_rel%)%)%)%)%,%
%is_style_path,%(%else-then(%is_style_path%,%(%is_Style_path%)%)%)%,%
%style_path,%(%else-then(%if-no(%is_style_path%,,%(%style_path%)%)%,%(%if-no(%is_style_path%,,%(../css)%)%)%)%)%,%
%Style_path,%(%else-then(%if-no(%is_style_path%,,%(%Style_path%)%)%,%(%if-no(%is_style_path%,,%(%style_path%)%)%)%)%)%,%
%STYLE_PATH,%(%else-then(%STYLE_PATH%,%(%toupper(%Style_path%)%)%)%)%,%
%style_path,%(%else-then(%_style_path%,%(%tolower(%Style_path%)%)%)%)%,%
%is_style_extension,%(%else-then(%is_style_extension%,%(%is_Style_extension%)%)%)%,%
%style_extension,%(%else-then(%if-no(%is_style_extension%,,%(%style_extension%)%)%,%(%if-no(%is_style_extension%,,%(css)%)%)%)%)%,%
%Style_extension,%(%else-then(%if-no(%is_style_extension%,,%(%Style_extension%)%)%,%(%if-no(%is_style_extension%,,%(%style_extension%)%)%)%)%)%,%
%STYLE_EXTENSION,%(%else-then(%STYLE_EXTENSION%,%(%toupper(%Style_extension%)%)%)%)%,%
%style_extension,%(%else-then(%_style_extension%,%(%tolower(%Style_extension%)%)%)%)%,%
%is_style_sheet,%(%else-then(%is_style_sheet%,%(%is_Style_sheet%)%)%)%,%
%style_sheet,%(%else-then(%if-no(%is_style_sheet%,,%(%style_sheet%)%)%,%(%if-no(%is_style_sheet%,,%(%
%%Application%%
%;%Application%-header;%Application%-footer%
%;%Application%-dropdown;%Application%-popdown%
%;%Application%-menubar;%Application%-logo%
%)%)%)%)%)%,%
%Style_sheet,%(%else-then(%if-no(%is_style_sheet%,,%(%Style_sheet%)%)%,%(%if-no(%is_style_sheet%,,%(%style_sheet%)%)%)%)%)%,%
%STYLE_SHEET,%(%else-then(%STYLE_SHEET%,%(%toupper(%Style_sheet%)%)%)%)%,%
%style_sheet,%(%else-then(%_style_sheet%,%(%tolower(%Style_sheet%)%)%)%)%,%
%is_style_href,%(%else-then(%is_style_href%,%(%is_Style_href%)%)%)%,%
%style_href,%(%else-then(%if-no(%is_style_href%,,%(%style_href%)%)%,%(%if-no(%is_style_href%,,%(%
%%parse(%Style_sheet%,;,,;,,%(%
%%if-then(%Style_path%,/)%%Style_sheet%%then-if(%Style_extension%,.)%%
%)%,Style_sheet)%%
%)%)%)%)%)%,%
%Style_href,%(%else-then(%if-no(%is_style_href%,,%(%Style_href%)%)%,%(%if-no(%is_style_href%,,%(%style_href%)%)%)%)%)%,%
%STYLE_HREF,%(%else-then(%STYLE_HREF%,%(%toupper(%Style_href%)%)%)%)%,%
%style_href,%(%else-then(%_style_href%,%(%tolower(%Style_href%)%)%)%)%,%
%is_body_class,%(%else-then(%is_body_class%,%(%is_Body_class%)%)%)%,%
%body_class,%(%else-then(%if-no(%is_body_class%,,%(%body_class%)%)%,%(%if-no(%is_body_class%,,%(body)%)%)%)%)%,%
%Body_class,%(%else-then(%if-no(%is_body_class%,,%(%Body_class%)%)%,%(%if-no(%is_body_class%,,%(%body_class%)%)%)%)%)%,%
%BODY_CLASS,%(%else-then(%BODY_CLASS%,%(%toupper(%Body_class%)%)%)%)%,%
%body_class,%(%else-then(%_body_class%,%(%tolower(%Body_class%)%)%)%)%,%
%is_form_class,%(%else-then(%is_form_class%,%(%is_Form_class%)%)%)%,%
%form_class,%(%else-then(%if-no(%is_form_class%,,%(%form_class%)%)%,%(%if-no(%is_form_class%,,%(form)%)%)%)%)%,%
%Form_class,%(%else-then(%if-no(%is_form_class%,,%(%Form_class%)%)%,%(%if-no(%is_form_class%,,%(%form_class%)%)%)%)%)%,%
%FORM_CLASS,%(%else-then(%FORM_CLASS%,%(%toupper(%Form_class%)%)%)%)%,%
%form_class,%(%else-then(%_form_class%,%(%tolower(%Form_class%)%)%)%)%,%
%is_logo,%(%else-then(%is_logo%,%(%is_Logo%)%)%)%,%
%logo,%(%else-then(%if-no(%is_logo%,,%(%logo%)%)%,%(%if-no(%is_logo%,,%(logo)%)%)%)%)%,%
%Logo,%(%else-then(%if-no(%is_logo%,,%(%Logo%)%)%,%(%if-no(%is_logo%,,%(%logo%)%)%)%)%)%,%
%LOGO,%(%else-then(%LOGO%,%(%toupper(%Logo%)%)%)%)%,%
%logo,%(%else-then(%_logo%,%(%tolower(%Logo%)%)%)%)%,%
%is_logo_div_id,%(%else-then(%is_logo_div_id%,%(%is_Logo_div_id%)%)%)%,%
%logo_div_id,%(%else-then(%if-no(%is_logo_div_id%,,%(%logo_div_id%)%)%,%(%if-no(%is_logo_div_id%,,%(includeLogo)%)%)%)%)%,%
%Logo_div_id,%(%else-then(%if-no(%is_logo_div_id%,,%(%Logo_div_id%)%)%,%(%if-no(%is_logo_div_id%,,%(%logo_div_id%)%)%)%)%)%,%
%LOGO_DIV_ID,%(%else-then(%LOGO_DIV_ID%,%(%toupper(%Logo_div_id%)%)%)%)%,%
%logo_div_id,%(%else-then(%_logo_div_id%,%(%tolower(%Logo_div_id%)%)%)%)%,%
%is_logo_div_include,%(%else-then(%is_logo_div_include%,%(%is_Logo_div_include%)%)%)%,%
%logo_div_include,%(%else-then(%if-no(%is_logo_div_include%,,%(%logo_div_include%)%)%,%(%if-no(%is_logo_div_include%,,%(%Application%-%logo%.html)%)%)%)%)%,%
%Logo_div_include,%(%else-then(%if-no(%is_logo_div_include%,,%(%Logo_div_include%)%)%,%(%if-no(%is_logo_div_include%,,%(%logo_div_include%)%)%)%)%)%,%
%LOGO_DIV_INCLUDE,%(%else-then(%LOGO_DIV_INCLUDE%,%(%toupper(%Logo_div_include%)%)%)%)%,%
%logo_div_include,%(%else-then(%_logo_div_include%,%(%tolower(%Logo_div_include%)%)%)%)%,%
%is_header,%(%else-then(%is_header%,%(%is_Header%)%)%)%,%
%header,%(%else-then(%if-no(%is_header%,,%(%header%)%)%,%(%if-no(%is_header%,,%(header)%)%)%)%)%,%
%Header,%(%else-then(%if-no(%is_header%,,%(%Header%)%)%,%(%if-no(%is_header%,,%(%header%)%)%)%)%)%,%
%HEADER,%(%else-then(%HEADER%,%(%toupper(%Header%)%)%)%)%,%
%header,%(%else-then(%_header%,%(%tolower(%Header%)%)%)%)%,%
%is_header_div_id,%(%else-then(%is_header_div_id%,%(%is_Header_div_id%)%)%)%,%
%header_div_id,%(%else-then(%if-no(%is_header_div_id%,,%(%header_div_id%)%)%,%(%if-no(%is_header_div_id%,,%(includeHeader)%)%)%)%)%,%
%Header_div_id,%(%else-then(%if-no(%is_header_div_id%,,%(%Header_div_id%)%)%,%(%if-no(%is_header_div_id%,,%(%header_div_id%)%)%)%)%)%,%
%HEADER_DIV_ID,%(%else-then(%HEADER_DIV_ID%,%(%toupper(%Header_div_id%)%)%)%)%,%
%header_div_id,%(%else-then(%_header_div_id%,%(%tolower(%Header_div_id%)%)%)%)%,%
%is_header_div_include,%(%else-then(%is_header_div_include%,%(%is_Header_div_include%)%)%)%,%
%header_div_include,%(%else-then(%if-no(%is_header_div_include%,,%(%header_div_include%)%)%,%(%if-no(%is_header_div_include%,,%(%Application%-%header%.html)%)%)%)%)%,%
%Header_div_include,%(%else-then(%if-no(%is_header_div_include%,,%(%Header_div_include%)%)%,%(%if-no(%is_header_div_include%,,%(%header_div_include%)%)%)%)%)%,%
%HEADER_DIV_INCLUDE,%(%else-then(%HEADER_DIV_INCLUDE%,%(%toupper(%Header_div_include%)%)%)%)%,%
%header_div_include,%(%else-then(%_header_div_include%,%(%tolower(%Header_div_include%)%)%)%)%,%
%is_body_include,%(%else-then(%is_body_include%,%(%is_Body_include%)%)%)%,%
%is_popdown_div_id,%(%else-then(%is_popdown_div_id%,%(%is_Popdown_div_id%)%)%)%,%
%popdown_div_id,%(%else-then(%if-no(%is_popdown_div_id%,,%(%popdown_div_id%)%)%,%(%if-no(%is_popdown_div_id%,,%(includePopdown)%)%)%)%)%,%
%Popdown_div_id,%(%else-then(%if-no(%is_popdown_div_id%,,%(%Popdown_div_id%)%)%,%(%if-no(%is_popdown_div_id%,,%(%popdown_div_id%)%)%)%)%)%,%
%POPDOWN_DIV_ID,%(%else-then(%POPDOWN_DIV_ID%,%(%toupper(%Popdown_div_id%)%)%)%)%,%
%popdown_div_id,%(%else-then(%_popdown_div_id%,%(%tolower(%Popdown_div_id%)%)%)%)%,%
%is_popdown_div_include,%(%else-then(%is_popdown_div_include%,%(%is_Popdown_div_include%)%)%)%,%
%popdown_div_include,%(%else-then(%if-no(%is_popdown_div_include%,,%(%popdown_div_include%)%)%,%(%if-no(%is_popdown_div_include%,,%(%Application%-popdown.html)%)%)%)%)%,%
%Popdown_div_include,%(%else-then(%if-no(%is_popdown_div_include%,,%(%Popdown_div_include%)%)%,%(%if-no(%is_popdown_div_include%,,%(%popdown_div_include%)%)%)%)%)%,%
%POPDOWN_DIV_INCLUDE,%(%else-then(%POPDOWN_DIV_INCLUDE%,%(%toupper(%Popdown_div_include%)%)%)%)%,%
%popdown_div_include,%(%else-then(%_popdown_div_include%,%(%tolower(%Popdown_div_include%)%)%)%)%,%
%is_dropdown_div_id,%(%else-then(%is_dropdown_div_id%,%(%is_Dropdown_div_id%)%)%)%,%
%dropdown_div_id,%(%else-then(%if-no(%is_dropdown_div_id%,,%(%dropdown_div_id%)%)%,%(%if-no(%is_dropdown_div_id%,,%(includeDropdown)%)%)%)%)%,%
%Dropdown_div_id,%(%else-then(%if-no(%is_dropdown_div_id%,,%(%Dropdown_div_id%)%)%,%(%if-no(%is_dropdown_div_id%,,%(%dropdown_div_id%)%)%)%)%)%,%
%DROPDOWN_DIV_ID,%(%else-then(%DROPDOWN_DIV_ID%,%(%toupper(%Dropdown_div_id%)%)%)%)%,%
%dropdown_div_id,%(%else-then(%_dropdown_div_id%,%(%tolower(%Dropdown_div_id%)%)%)%)%,%
%is_dropdown_div_include,%(%else-then(%is_dropdown_div_include%,%(%is_Dropdown_div_include%)%)%)%,%
%dropdown_div_include,%(%else-then(%if-no(%is_dropdown_div_include%,,%(%dropdown_div_include%)%)%,%(%if-no(%is_dropdown_div_include%,,%(%Application%-dropdown.html)%)%)%)%)%,%
%Dropdown_div_include,%(%else-then(%if-no(%is_dropdown_div_include%,,%(%Dropdown_div_include%)%)%,%(%if-no(%is_dropdown_div_include%,,%(%dropdown_div_include%)%)%)%)%)%,%
%DROPDOWN_DIV_INCLUDE,%(%else-then(%DROPDOWN_DIV_INCLUDE%,%(%toupper(%Dropdown_div_include%)%)%)%)%,%
%dropdown_div_include,%(%else-then(%_dropdown_div_include%,%(%tolower(%Dropdown_div_include%)%)%)%)%,%
%is_menubar,%(%else-then(%is_menubar%,%(%is_Menubar%)%)%)%,%
%menubar,%(%else-then(%if-no(%is_menubar%,,%(%menubar%)%)%,%(%if-no(%is_menubar%,,%(menubar)%)%)%)%)%,%
%Menubar,%(%else-then(%if-no(%is_menubar%,,%(%Menubar%)%)%,%(%if-no(%is_menubar%,,%(%menubar%)%)%)%)%)%,%
%MENUBAR,%(%else-then(%MENUBAR%,%(%toupper(%Menubar%)%)%)%)%,%
%menubar,%(%else-then(%_menubar%,%(%tolower(%Menubar%)%)%)%)%,%
%is_menubar_div_id,%(%else-then(%is_menubar_div_id%,%(%is_Menubar_div_id%)%)%)%,%
%menubar_div_id,%(%else-then(%if-no(%is_menubar_div_id%,,%(%menubar_div_id%)%)%,%(%if-no(%is_menubar_div_id%,,%(includeMenubar)%)%)%)%)%,%
%Menubar_div_id,%(%else-then(%if-no(%is_menubar_div_id%,,%(%Menubar_div_id%)%)%,%(%if-no(%is_menubar_div_id%,,%(%menubar_div_id%)%)%)%)%)%,%
%MENUBAR_DIV_ID,%(%else-then(%MENUBAR_DIV_ID%,%(%toupper(%Menubar_div_id%)%)%)%)%,%
%menubar_div_id,%(%else-then(%_menubar_div_id%,%(%tolower(%Menubar_div_id%)%)%)%)%,%
%is_menubar_div_include,%(%else-then(%is_menubar_div_include%,%(%is_Menubar_div_include%)%)%)%,%
%menubar_div_include,%(%else-then(%if-no(%is_menubar_div_include%,,%(%menubar_div_include%)%)%,%(%if-no(%is_menubar_div_include%,,%(%ApplicationGroup%-%menubar%.html)%)%)%)%)%,%
%Menubar_div_include,%(%else-then(%if-no(%is_menubar_div_include%,,%(%Menubar_div_include%)%)%,%(%if-no(%is_menubar_div_include%,,%(%menubar_div_include%)%)%)%)%)%,%
%MENUBAR_DIV_INCLUDE,%(%else-then(%MENUBAR_DIV_INCLUDE%,%(%toupper(%Menubar_div_include%)%)%)%)%,%
%menubar_div_include,%(%else-then(%_menubar_div_include%,%(%tolower(%Menubar_div_include%)%)%)%)%,%
%is_form,%(%else-then(%is_form%,%(%is_Form%)%)%)%,%
%form,%(%else-then(%if-no(%is_form%,,%(%form%)%)%,%(%if-no(%is_form%,,%(form)%)%)%)%)%,%
%Form,%(%else-then(%if-no(%is_form%,,%(%Form%)%)%,%(%if-no(%is_form%,,%(%form%)%)%)%)%)%,%
%FORM,%(%else-then(%FORM%,%(%toupper(%Form%)%)%)%)%,%
%form,%(%else-then(%_form%,%(%tolower(%Form%)%)%)%)%,%
%is_form_div_id,%(%else-then(%is_form_div_id%,%(%is_Form_div_id%)%)%)%,%
%form_div_id,%(%else-then(%if-no(%is_form_div_id%,,%(%form_div_id%)%)%,%(%if-no(%is_form_div_id%,,%(includeForm)%)%)%)%)%,%
%Form_div_id,%(%else-then(%if-no(%is_form_div_id%,,%(%Form_div_id%)%)%,%(%if-no(%is_form_div_id%,,%(%form_div_id%)%)%)%)%)%,%
%FORM_DIV_ID,%(%else-then(%FORM_DIV_ID%,%(%toupper(%Form_div_id%)%)%)%)%,%
%form_div_id,%(%else-then(%_form_div_id%,%(%tolower(%Form_div_id%)%)%)%)%,%
%is_form_div_include,%(%else-then(%is_form_div_include%,%(%is_Form_div_include%)%)%)%,%
%form_div_include,%(%else-then(%if-no(%is_form_div_include%,,%(%form_div_include%)%)%,%(%if-no(%is_form_div_include%,,%(%ApplicationGroup%-%form%.html)%)%)%)%)%,%
%Form_div_include,%(%else-then(%if-no(%is_form_div_include%,,%(%Form_div_include%)%)%,%(%if-no(%is_form_div_include%,,%(%form_div_include%)%)%)%)%)%,%
%FORM_DIV_INCLUDE,%(%else-then(%FORM_DIV_INCLUDE%,%(%toupper(%Form_div_include%)%)%)%)%,%
%form_div_include,%(%else-then(%_form_div_include%,%(%tolower(%Form_div_include%)%)%)%)%,%
%body_include,%(%else-then(%if-no(%is_body_include%,,%(%body_include%)%)%,%(%if-no(%is_body_include%,,%(Logo;Header;Popdown;Dropdown;Menubar;Form)%)%)%)%)%,%
%Body_include,%(%else-then(%if-no(%is_body_include%,,%(%Body_include%)%)%,%(%if-no(%is_body_include%,,%(%body_include%)%)%)%)%)%,%
%BODY_INCLUDE,%(%else-then(%BODY_INCLUDE%,%(%toupper(%Body_include%)%)%)%)%,%
%body_include,%(%else-then(%_body_include%,%(%tolower(%Body_include%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-html.t)%%
%%include(%Include_path%/begin-html.t)%%
%%include(%Include_path%/head-html.t)%%
%%include(%Include_path%/body-html.t)%%
%%include(%Include_path%/end-html.t)%%
%)%)%