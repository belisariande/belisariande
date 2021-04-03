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
%#   File: omna-html.t
%#
%# Author: $author$
%#   Date: 3/31/2021
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
%%(%
%%include(%Include_path%/html.t)%%
%)%)%