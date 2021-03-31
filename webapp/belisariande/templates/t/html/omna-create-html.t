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
%#   File: omna-create-html.t
%#
%# Author: $author$
%#   Date: 3/29/2021
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
%is_group,%(%else-then(%is_group%,%(%is_Group%)%)%)%,%
%group,%(%else-then(%if-no(%is_group%,,%(%group%)%)%,%(%if-no(%is_group%,,%(omna)%)%)%)%)%,%
%Group,%(%else-then(%if-no(%is_group%,,%(%Group%)%)%,%(%if-no(%is_group%,,%(%group%)%)%)%)%)%,%
%GROUP,%(%else-then(%GROUP%,%(%toupper(%Group%)%)%)%)%,%
%group,%(%else-then(%_group%,%(%tolower(%Group%)%)%)%)%,%
%is_create,%(%else-then(%is_create%,%(%is_Create%)%)%)%,%
%is_applicationgroup,%(%else-then(%is_applicationgroup%,%(%is_ApplicationGroup%)%)%)%,%
%applicationgroup,%(%else-then(%if-no(%is_applicationgroup%,,%(%applicationgroup%)%)%,%(%if-no(%is_applicationgroup%,,%(%Application%%then-if(%Group%,-)%)%)%)%)%)%,%
%ApplicationGroup,%(%else-then(%if-no(%is_applicationgroup%,,%(%ApplicationGroup%)%)%,%(%if-no(%is_applicationgroup%,,%(%applicationgroup%)%)%)%)%)%,%
%APPLICATIONGROUP,%(%else-then(%APPLICATIONGROUP%,%(%toupper(%ApplicationGroup%)%)%)%)%,%
%applicationgroup,%(%else-then(%_applicationgroup%,%(%tolower(%ApplicationGroup%)%)%)%)%,%
%create,%(%else-then(%if-no(%is_create%,,%(%create%)%)%,%(%if-no(%is_create%,,%(Create)%)%)%)%)%,%
%Create,%(%else-then(%if-no(%is_create%,,%(%Create%)%)%,%(%if-no(%is_create%,,%(%create%)%)%)%)%)%,%
%CREATE,%(%else-then(%CREATE%,%(%toupper(%Create%)%)%)%)%,%
%create,%(%else-then(%_create%,%(%tolower(%Create%)%)%)%)%,%
%is_what,%(%else-then(%is_what%,%(%is_What%)%)%)%,%
%what,%(%else-then(%if-no(%is_what%,,%(%what%)%)%,%(%if-no(%is_what%,,%(html)%)%)%)%)%,%
%What,%(%else-then(%if-no(%is_what%,,%(%What%)%)%,%(%if-no(%is_what%,,%(%what%)%)%)%)%)%,%
%WHAT,%(%else-then(%WHAT%,%(%toupper(%What%)%)%)%)%,%
%what,%(%else-then(%_what%,%(%tolower(%What%)%)%)%)%,%
%is_createwhat,%(%else-then(%is_createwhat%,%(%is_CreateWhat%)%)%)%,%
%createwhat,%(%else-then(%if-no(%is_createwhat%,,%(%createwhat%)%)%,%(%if-no(%is_createwhat%,,%(%Create%%then-if(%What%,-)%)%)%)%)%)%,%
%CreateWhat,%(%else-then(%if-no(%is_createwhat%,,%(%CreateWhat%)%)%,%(%if-no(%is_createwhat%,,%(%createwhat%)%)%)%)%)%,%
%CREATEWHAT,%(%else-then(%CREATEWHAT%,%(%toupper(%CreateWhat%)%)%)%)%,%
%createwhat,%(%else-then(%_createwhat%,%(%tolower(%CreateWhat%)%)%)%)%,%
%is_page,%(%else-then(%is_page%,%(%is_Page%)%)%)%,%
%page,%(%else-then(%if-no(%is_page%,,%(%page%)%)%,%(%if-no(%is_page%,,%(%parse(%CreateWhat%,-,, )%)%)%)%)%)%,%
%Page,%(%else-then(%if-no(%is_page%,,%(%Page%)%)%,%(%if-no(%is_page%,,%(%page%)%)%)%)%)%,%
%PAGE,%(%else-then(%PAGE%,%(%toupper(%Page%)%)%)%)%,%
%page,%(%else-then(%_page%,%(%tolower(%Page%)%)%)%)%,%
%is_name,%(%else-then(%is_name%,%(%is_Name%)%)%)%,%
%name,%(%else-then(%if-no(%is_name%,,%(%name%)%)%,%(%if-no(%is_name%,,%(%ApplicationGroup%-%createwhat%)%)%)%)%)%,%
%Name,%(%else-then(%if-no(%is_name%,,%(%Name%)%)%,%(%if-no(%is_name%,,%(%name%)%)%)%)%)%,%
%NAME,%(%else-then(%NAME%,%(%toupper(%Name%)%)%)%)%,%
%name,%(%else-then(%_name%,%(%tolower(%Name%)%)%)%)%,%
%is_background,%(%else-then(%is_background%,%(%is_Background%)%)%)%,%
%background,%(%else-then(%if-no(%is_background%,,%(%background%)%)%,%(%if-no(%is_background%,,%(%if-then(%Group%,-)%background)%)%)%)%)%,%
%Background,%(%else-then(%if-no(%is_background%,,%(%Background%)%)%,%(%if-no(%is_background%,,%(%background%)%)%)%)%)%,%
%BACKGROUND,%(%else-then(%BACKGROUND%,%(%toupper(%Background%)%)%)%)%,%
%background,%(%else-then(%_background%,%(%tolower(%Background%)%)%)%)%,%
%is_image_path,%(%else-then(%is_image_path%,%(%is_Image_path%)%)%)%,%
%image_path,%(%else-then(%if-no(%is_image_path%,,%(%image_path%)%)%,%(%if-no(%is_image_path%,,%(../images)%)%)%)%)%,%
%Image_path,%(%else-then(%if-no(%is_image_path%,,%(%Image_path%)%)%,%(%if-no(%is_image_path%,,%(%image_path%)%)%)%)%)%,%
%IMAGE_PATH,%(%else-then(%IMAGE_PATH%,%(%toupper(%Image_path%)%)%)%)%,%
%image_path,%(%else-then(%_image_path%,%(%tolower(%Image_path%)%)%)%)%,%
%is_image_extension,%(%else-then(%is_image_extension%,%(%is_Image_extension%)%)%)%,%
%image_extension,%(%else-then(%if-no(%is_image_extension%,,%(%image_extension%)%)%,%(%if-no(%is_image_extension%,,%(jpg)%)%)%)%)%,%
%Image_extension,%(%else-then(%if-no(%is_image_extension%,,%(%Image_extension%)%)%,%(%if-no(%is_image_extension%,,%(%image_extension%)%)%)%)%)%,%
%IMAGE_EXTENSION,%(%else-then(%IMAGE_EXTENSION%,%(%toupper(%Image_extension%)%)%)%)%,%
%image_extension,%(%else-then(%_image_extension%,%(%tolower(%Image_extension%)%)%)%)%,%
%is_background_image,%(%else-then(%is_background_image%,%(%is_Background_image%)%)%)%,%
%background_image,%(%else-then(%if-no(%is_background_image%,,%(%background_image%)%)%,%(%if-no(%is_background_image%,,%(%then-if(%if-then(%Background%,%(%then-if(%Image_extension%,%(.)%)%)%)%,%(%Image_path%/%Application%-)%)%)%)%)%)%)%,%
%Background_image,%(%else-then(%if-no(%is_background_image%,,%(%Background_image%)%)%,%(%if-no(%is_background_image%,,%(%background_image%)%)%)%)%)%,%
%BACKGROUND_IMAGE,%(%else-then(%BACKGROUND_IMAGE%,%(%toupper(%Background_image%)%)%)%)%,%
%background_image,%(%else-then(%_background_image%,%(%tolower(%Background_image%)%)%)%)%,%
%is_body_style,%(%else-then(%is_body_style%,%(%is_Body_style%)%)%)%,%
%body_style,%(%else-then(%if-no(%is_body_style%,,%(%body_style%)%)%,%(%if-no(%is_body_style%,,%(background-image:url('%Background_image%'))%)%)%)%)%,%
%Body_style,%(%else-then(%if-no(%is_body_style%,,%(%Body_style%)%)%,%(%if-no(%is_body_style%,,%(%body_style%)%)%)%)%)%,%
%BODY_STYLE,%(%else-then(%BODY_STYLE%,%(%toupper(%Body_style%)%)%)%)%,%
%body_style,%(%else-then(%_body_style%,%(%tolower(%Body_style%)%)%)%)%,%
%is_logo,%(%else-then(%is_logo%,%(%is_Logo%)%)%)%,%
%logo,%(%else-then(%if-no(%is_logo%,,%(%logo%)%)%,%(%if-no(%is_logo%,,%(home-logo)%)%)%)%)%,%
%Logo,%(%else-then(%if-no(%is_logo%,,%(%Logo%)%)%,%(%if-no(%is_logo%,,%(%logo%)%)%)%)%)%,%
%LOGO,%(%else-then(%LOGO%,%(%toupper(%Logo%)%)%)%)%,%
%logo,%(%else-then(%_logo%,%(%tolower(%Logo%)%)%)%)%,%
%is_menubar,%(%else-then(%is_menubar%,%(%is_Menubar%)%)%)%,%
%menubar,%(%else-then(%if-no(%is_menubar%,,%(%menubar%)%)%,%(%if-no(%is_menubar%,,%(%if-then(%createwhat%,-)%menubar)%)%)%)%)%,%
%Menubar,%(%else-then(%if-no(%is_menubar%,,%(%Menubar%)%)%,%(%if-no(%is_menubar%,,%(%menubar%)%)%)%)%)%,%
%MENUBAR,%(%else-then(%MENUBAR%,%(%toupper(%Menubar%)%)%)%)%,%
%menubar,%(%else-then(%_menubar%,%(%tolower(%Menubar%)%)%)%)%,%
%is_form,%(%else-then(%is_form%,%(%is_Form%)%)%)%,%
%form,%(%else-then(%if-no(%is_form%,,%(%form%)%)%,%(%if-no(%is_form%,,%(%if-then(%createwhat%,-)%form)%)%)%)%)%,%
%Form,%(%else-then(%if-no(%is_form%,,%(%Form%)%)%,%(%if-no(%is_form%,,%(%form%)%)%)%)%)%,%
%FORM,%(%else-then(%FORM%,%(%toupper(%Form%)%)%)%)%,%
%form,%(%else-then(%_form%,%(%tolower(%Form%)%)%)%)%,%
%%(%
%%include(%Include_path%/html.t)%%
%)%)%