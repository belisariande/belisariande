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
%#   File: os-QtCreator-pri-depends.t
%#
%# Author: $author$
%#   Date: 4/22/2021
%########################################################################
%with(%
%is_depends,%(%else-then(%is_depends%,%(%is_Depends%)%)%)%,%
%depends,%(%else-then(%if-no(%is_depends%,,%(%depends%)%)%,%(%if-no(%is_depends%,,%(Depends)%)%)%)%)%,%
%Depends,%(%else-then(%if-no(%is_depends%,,%(%Depends%)%)%,%(%if-no(%is_depends%,,%(%depends%)%)%)%)%)%,%
%DEPENDS,%(%else-then(%DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%depends,%(%else-then(%_depends%,%(%tolower(%Depends%)%)%)%)%,%
%%(%
%%parse(%Depends%,;,,,,%(%
%%with(%
%DEPENDS,%(%else-then(%_DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%depends,%(%else-then(%_depends%,%(%tolower(%Depends%)%)%)%)%,%
%%(
########################################################################
# %Depends%
%DEPENDS%_THIRDPARTY_PKG_MAKE_BLD = $${%DEPENDS%_THIRDPARTY_PKG}/build/$${%FRAMEWORK%_BUILD}/$${BUILD_CONFIG}
%DEPENDS%_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${%DEPENDS%_THIRDPARTY_PRJ}/build/$${%FRAMEWORK%_BUILD}/$${BUILD_CONFIG}
%DEPENDS%_THIRDPARTY_PKG_BLD = $${%DEPENDS%_THIRDPARTY_PKG}/build/$${%FRAMEWORK%_BUILD}/QtCreator/$${BUILD_CONFIG}
%DEPENDS%_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${%DEPENDS%_THIRDPARTY_PRJ}/build/$${%FRAMEWORK%_BUILD}/QtCreator/$${BUILD_CONFIG}
%DEPENDS%_PKG_BLD = $${OTHER_BLD}/$${%DEPENDS%_PKG}/build/$${%FRAMEWORK%_BUILD}/QtCreator/$${BUILD_CONFIG}
%DEPENDS%_PRJ_BLD = $${OTHER_BLD}/$${%DEPENDS%_PRJ}/build/$${%FRAMEWORK%_BUILD}/QtCreator/$${BUILD_CONFIG}
#%DEPENDS%_LIB = $${%DEPENDS%_THIRDPARTY_PKG_MAKE_BLD}/lib
#%DEPENDS%_LIB = $${%DEPENDS%_THIRDPARTY_PRJ_MAKE_BLD}/lib
#%DEPENDS%_LIB = $${%DEPENDS%_THIRDPARTY_PKG_BLD}/lib
#%DEPENDS%_LIB = $${%DEPENDS%_THIRDPARTY_PRJ_BLD}/lib
%DEPENDS%_LIB = $${%DEPENDS%_PKG_BLD}/lib
#%DEPENDS%_LIB = $${%DEPENDS%_PRJ_BLD}/lib
#%DEPENDS%_LIB = $${%FRAMEWORK%_LIB}

# %Depends% LIBS
#
%Depends%_LIBS += \
-L$${%DEPENDS%_LIB}/lib$${%DEPENDS%_NAME} \
-l$${%DEPENDS%_NAME} \

)%)%)%,Depends)%%
%)%)%