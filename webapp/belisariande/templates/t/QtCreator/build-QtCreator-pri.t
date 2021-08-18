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
%#   File: build-QtCreator-pri.t
%#
%# Author: $author$
%#   Date: 4/22/2021
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_framework,%(%else-then(%is_framework%,%(%is_Framework%)%)%)%,%
%framework,%(%else-then(%if-no(%is_framework%,,%(%framework%)%)%,%(%if-no(%is_framework%,,%(Framework)%)%)%)%)%,%
%Framework,%(%else-then(%if-no(%is_framework%,,%(%Framework%)%)%,%(%if-no(%is_framework%,,%(%framework%)%)%)%)%)%,%
%FRAMEWORK,%(%else-then(%FRAMEWORK%,%(%toupper(%Framework%)%)%)%)%,%
%framework,%(%else-then(%_framework%,%(%tolower(%Framework%)%)%)%)%,%
%is_specific,%(%else-then(%is_specific%,%(%is_Specific%)%)%)%,%
%specific,%(%else-then(%if-no(%is_specific%,,%(%specific%)%)%,%(%if-no(%is_specific%,,%(Build)%)%)%)%)%,%
%Specific,%(%else-then(%if-no(%is_specific%,,%(%Specific%)%)%,%(%if-no(%is_specific%,,%(%specific%)%)%)%)%)%,%
%SPECIFIC,%(%else-then(%SPECIFIC%,%(%toupper(%Specific%)%)%)%)%,%
%specific,%(%else-then(%_specific%,%(%tolower(%Specific%)%)%)%)%,%
%is_uname,%(%else-then(%is_uname%,%(%is_Uname%)%)%)%,%
%uname,%(%else-then(%if-no(%is_uname%,,%(%uname%)%)%,%(%if-no(%is_uname%,,%($$system%(()%uname%())%)%)%)%)%)%,%
%Uname,%(%else-then(%if-no(%is_uname%,,%(%Uname%)%)%,%(%if-no(%is_uname%,,%(%uname%)%)%)%)%)%,%
%UNAME,%(%else-then(%UNAME%,%(%toupper(%Uname%)%)%)%)%,%
%uname,%(%else-then(%_uname%,%(%tolower(%Uname%)%)%)%)%,%
%%(%
%%include(%Include_path%/QtCreator-file-pri.t)%%
%%if-then(%then-if(%Depends%,%(# DEPENDS = )%)%,%(

)%)%%
%contains(BUILD_OS,Uname) {
BUILD_UNAME = %Uname%

contains(BUILD_UNAME,Darwin) {
BUILD_OS = macosx
} else {
contains(BUILD_UNAME,Linux) {
BUILD_OS = linux
} else {
contains(BUILD_UNAME,Windows) {
BUILD_OS = windows
} else {
BUILD_OS = os
} # contains(BUILD_UNAME,Windows)
} # contains(BUILD_UNAME,Linux)
} # contains(BUILD_UNAME,Darwin)
} else {
contains(BUILD_OS,%FRAMEWORK%_OS) {
} else {
BUILD_OS = os
} # contains(BUILD_OS,%FRAMEWORK%_OS)
} # contains(BUILD_OS,Uname)

#BUILD_CPP_VERSION = 10
#BUILD_CPP_VERSION = 11
#BUILD_CPP_VERSION = 14
#BUILD_CPP_VERSION = 17
%
%%include(%Include_path%/build-QtCreator-pri-depends.t)%%
%
########################################################################
# %Framework%

# build %Framework% INCLUDEPATH
#
build_%Framework%_INCLUDEPATH += \
%reverse-parse(%Depends%,;,,,,%(%
%%with(%
%%($${build_%Depends%_INCLUDEPATH} \
)%)%)%,Depends)%

# build %Framework% DEFINES
#
build_%Framework%_DEFINES += \
%parse(%Depends%,;,,,,%(%
%%with(%
%%($${build_%Depends%_DEFINES} \
)%)%)%,Depends)%

# build %Framework% FRAMEWORKS
#
build_%Framework%_FRAMEWORKS += \
%reverse-parse(%Depends%,;,,,,%(%
%%with(%
%%($${build_%Depends%_FRAMEWORKS} \
)%)%)%,Depends)%

# build %Framework% LIBS
#
build_%Framework%_LIBS += \
%reverse-parse(%Depends%,;,,,,%(%
%%with(%
%%($${build_%Depends%_LIBS} \
)%)%)%,Depends)%

########################################################################
%
%)%)%