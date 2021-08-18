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
%#   File: os-QtCreator-pri.t
%#
%# Author: $author$
%#   Date: 4/22/2021, 7/12/2021
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
%is_os1,%(%else-then(%is_os1%,%(%is_Os1%)%)%)%,%
%os1,%(%else-then(%if-no(%is_os1%,,%(%os1%)%)%,%(%if-no(%is_os1%,,%(Os)%)%)%)%)%,%
%Os1,%(%else-then(%if-no(%is_os1%,,%(%Os1%)%)%,%(%if-no(%is_os1%,,%(%os1%)%)%)%)%)%,%
%OS1,%(%else-then(%OS1%,%(%toupper(%Os1%)%)%)%)%,%
%os1,%(%else-then(%_os1%,%(%tolower(%Os1%)%)%)%)%,%
%is_os,%(%else-then(%is_os%,%(%is_Os%)%)%)%,%
%os,%(%else-then(%if-no(%is_os%,,%(%os%)%)%,%(%if-no(%is_os%,,%(%Os1%)%)%)%)%)%,%
%Os,%(%else-then(%if-no(%is_os%,,%(%Os%)%)%,%(%if-no(%is_os%,,%(%os%)%)%)%)%)%,%
%OS,%(%else-then(%OS%,%(%toupper(%Os%)%)%)%)%,%
%os,%(%else-then(%_os%,%(%tolower(%Os%)%)%)%)%,%
%is_uname,%(%else-then(%is_uname%,%(%is_Uname%)%)%)%,%
%is_uname1,%(%else-then(%is_uname1%,%(%is_Uname1%)%)%)%,%
%uname1,%(%else-then(%if-no(%is_uname1%,,%(%uname1%)%)%,%(%if-no(%is_uname1%,,%($$system%(()%uname%())%)%)%)%)%)%,%
%Uname1,%(%else-then(%if-no(%is_uname1%,,%(%Uname1%)%)%,%(%if-no(%is_uname1%,,%(%uname1%)%)%)%)%)%,%
%UNAME1,%(%else-then(%UNAME1%,%(%toupper(%Uname1%)%)%)%)%,%
%uname1,%(%else-then(%_uname1%,%(%tolower(%Uname1%)%)%)%)%,%
%uname,%(%else-then(%if-no(%is_uname%,,%(%uname%)%)%,%(%if-no(%is_uname%,,%(%Uname1%)%)%)%)%)%,%
%Uname,%(%else-then(%if-no(%is_uname%,,%(%Uname%)%)%,%(%if-no(%is_uname%,,%(%uname%)%)%)%)%)%,%
%UNAME,%(%else-then(%UNAME%,%(%toupper(%Uname%)%)%)%)%,%
%uname,%(%else-then(%_uname%,%(%tolower(%Uname%)%)%)%)%,%
%is_specific,%(%else-then(%is_specific%,%(%is_Specific%)%)%)%,%
%specific,%(%else-then(%if-no(%is_specific%,,%(%specific%)%)%,%(%if-no(%is_specific%,,%(%Os%)%)%)%)%)%,%
%Specific,%(%else-then(%if-no(%is_specific%,,%(%Specific%)%)%,%(%if-no(%is_specific%,,%(%specific%)%)%)%)%)%,%
%SPECIFIC,%(%else-then(%SPECIFIC%,%(%toupper(%Specific%)%)%)%)%,%
%specific,%(%else-then(%_specific%,%(%tolower(%Specific%)%)%)%)%,%
%%(%
%%include(%Include_path%/QtCreator-file-pri.t)%%
%%if-then(%then-if(%Depends%,%(# DEPENDS = )%)%,%(

)%)%%
%%FRAMEWORK%_UNAME = %Uname%
%if(%equal(os,%os%)%,%(
contains(%FRAMEWORK%_UNAME,Darwin) {
%FRAMEWORK%_OS = macosx
} else {
contains(%FRAMEWORK%_UNAME,Linux) {
%FRAMEWORK%_OS = linux
} else {
%FRAMEWORK%_OS = windows
} # contains(%FRAMEWORK%_UNAME,Linux)
} # contains(%FRAMEWORK%_UNAME,Darwin)
)%,%(%FRAMEWORK%_OS = %os%
)%)%%
%
contains(BUILD_OS,%FRAMEWORK%_OS) {
%FRAMEWORK%_BUILD = $${%FRAMEWORK%_OS}
} else {
%FRAMEWORK%_BUILD = $${BUILD_OS}
} # contains(BUILD_OS,%FRAMEWORK%_OS)

contains(BUILD_CPP_VERSION,10) {
CONFIG += c++0x
} else {
contains(BUILD_CPP_VERSION,98|03|11|14|17) {
CONFIG += c++$${BUILD_CPP_VERSION}
} else {
} # contains(BUILD_CPP_VERSION,98|03|11|14|17)
} # contains(BUILD_CPP_VERSION,10)

contains(%FRAMEWORK%_OS,macosx) {
} else {
contains(%FRAMEWORK%_OS,linux) {
QMAKE_CXXFLAGS += -fpermissive
} else {
contains(%FRAMEWORK%_OS,windows) {
} else {
} # contains(%FRAMEWORK%_OS,windows)
} # contains(%FRAMEWORK%_OS,linux)
} # contains(%FRAMEWORK%_OS,macosx)
%
%%include(%Include_path%/os-QtCreator-pri-depends.t)%%
%########################################################################
# %Framework%

# %Framework% INCLUDEPATH
#
%Framework%_INCLUDEPATH += \

# %Framework% DEFINES
#
%Framework%_DEFINES += \

# os %Framework% LIBS
#
contains(%FRAMEWORK%_OS,macosx|linux) {
os_%Framework%_LIBS += \
-lpthread \
-ldl
} else {
} # contains(%FRAMEWORK%_OS,macosx|linux)

contains(%FRAMEWORK%_OS,linux) {
os_%Framework%_LIBS += \
-lrt
} else {
} # contains(%FRAMEWORK%_OS,linux)

# %Framework% LIBS
#
%Framework%_LIBS += \
%reverse-parse(%Depends%,;,,,,%(%
%%with(%
%DEPENDS,%(%else-then(%_DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%%($${%Depends%_LIBS} \
)%)%%
%)%,Depends)%%
%$${build_%Framework%_LIBS} \
%
%$${os_%Framework%_LIBS} \

########################################################################
%
%)%)%