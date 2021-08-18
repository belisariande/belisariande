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
%#   File: QtCreator-pri-depends.t
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
%DEPENDS%_VERSION_MAJOR = 0
%DEPENDS%_VERSION_MINOR = 0
%DEPENDS%_VERSION_RELEASE = 0
%DEPENDS%_VERSION = $${%DEPENDS%_VERSION_MAJOR}.$${%DEPENDS%_VERSION_MINOR}.$${%DEPENDS%_VERSION_RELEASE}
%DEPENDS%_NAME = %Depends%
%DEPENDS%_GROUP = $${%DEPENDS%_NAME}
%DEPENDS%_SOURCE = %Source%
%DEPENDS%_DIR = $${%DEPENDS%_GROUP}/$${%DEPENDS%_NAME}-$${%DEPENDS%_VERSION}
%DEPENDS%_PKG_DIR = $${%DEPENDS%_NAME}%then-if(%Language%,/)%%then-if(%Style%,/)%
%DEPENDS%_HOME_BUILD = $${HOME}/build/$${%DEPENDS%_NAME}
%DEPENDS%_HOME_BUILD_INCLUDE = $${%DEPENDS%_HOME_BUILD}/include
%DEPENDS%_HOME_BUILD_LIB = $${%DEPENDS%_HOME_BUILD}/lib
%DEPENDS%_THIRDPARTY_PKG = $${THIRDPARTY_PKG}/$${%DEPENDS%_DIR}
%DEPENDS%_THIRDPARTY_PRJ = $${THIRDPARTY_PRJ}/$${%DEPENDS%_DIR}
%DEPENDS%_THIRDPARTY_SRC = $${THIRDPARTY_SRC}/$${%DEPENDS%_PKG_DIR}
%DEPENDS%_THIRDPARTY_SRC_GROUP = $${%DEPENDS%_NAME}
%DEPENDS%_THIRDPARTY_SRC_NAME = $${%DEPENDS%_NAME}
%DEPENDS%_THIRDPARTY_SRC_DIR = $${THIRDPARTY_SRC}/$${%DEPENDS%_THIRDPARTY_SRC_GROUP}/$${%DEPENDS%_THIRDPARTY_SRC_NAME} 
%DEPENDS%_PKG = $${OTHER_PKG}/$${%DEPENDS%_PKG_DIR}
%DEPENDS%_PRJ = $${OTHER_PRJ}/$${%DEPENDS%_PKG_DIR}
#%DEPENDS%_SRC = $${%DEPENDS%_THIRDPARTY_SRC_DIR}
#%DEPENDS%_SRC = $${%DEPENDS%_THIRDPARTY_PKG}/$${%DEPENDS%_SOURCE}
#%DEPENDS%_SRC = $${%DEPENDS%_THIRDPARTY_PRJ}/$${%DEPENDS%_SOURCE}
%DEPENDS%_SRC = $${%DEPENDS%_PKG}/$${%DEPENDS%_SOURCE}
#%DEPENDS%_SRC = $${%DEPENDS%_PRJ}/$${%DEPENDS%_SOURCE}

# %Depends% INCLUDEPATH
#
%Depends%_INCLUDEPATH += \
$${%DEPENDS%_SRC} \

# %Depends% DEFINES
#
%Depends%_DEFINES += \

)%)%%
%)%,Depends)%%
%
%)%)%