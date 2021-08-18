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
%#   File: os-target-QtCreator-pro.t
%#
%# Author: $author$
%#   Date: 4/22/2021
%########################################################################
%with(%
%is_exe,%(%else-then(%is_exe%,%(%is_Exe%)%)%)%,%
%exe,%(%else-then(%if-no(%is_exe%,,%(%exe%)%)%,%(%if-no(%is_exe%,,%(%else(%Lib%%Slib%,%(%if(%equal(%Target%,%Framework%)%,_exe)%)%)%)%)%)%)%)%,%
%Exe,%(%else-then(%if-no(%is_exe%,,%(%Exe%)%)%,%(%if-no(%is_exe%,,%(%exe%)%)%)%)%)%,%
%EXE,%(%else-then(%EXE%,%(%toupper(%Exe%)%)%)%)%,%
%exe,%(%else-then(%_exe%,%(%tolower(%Exe%)%)%)%)%,%
%is_slib,%(%else-then(%is_slib%,%(%is_SLib%)%)%)%,%
%slib,%(%else-then(%if-no(%is_slib%,,%(%slib%)%)%,%(%if-no(%is_slib%,,%(%equal(slib,%Library%)%)%)%)%)%)%,%
%SLib,%(%else-then(%if-no(%is_slib%,,%(%SLib%)%)%,%(%if-no(%is_slib%,,%(%slib%)%)%)%)%)%,%
%SLIB,%(%else-then(%SLIB%,%(%toupper(%SLib%)%)%)%)%,%
%slib,%(%else-then(%_slib%,%(%tolower(%SLib%)%)%)%)%,%
%is_out,%(%else-then(%is_out%,%(%is_Out%)%)%)%,%
%out,%(%else-then(%if-no(%is_out%,,%(%out%)%)%,%(%if-no(%is_out%,,%(%if(%SLib%,%(ext)%,%(%if(%Lib%,%(lib)%,%(bin)%)%)%)%)%)%)%)%)%,%
%Out,%(%else-then(%if-no(%is_out%,,%(%Out%)%)%,%(%if-no(%is_out%,,%(%out%)%)%)%)%)%,%
%OUT,%(%else-then(%OUT%,%(%toupper(%Out%)%)%)%)%,%
%out,%(%else-then(%_out%,%(%tolower(%Out%)%)%)%)%,%
%%(%
%%if-no(%is_Include_host_build%,,%(include(../../../../../../build/QtCreator/%Framework%.pri)
)%)%%if-no(%is_Include_build%,,%(include(../../../../../build/QtCreator/%Framework%.pri)
)%)%%if-no(%is_Include_os%,,%(include(../../../../QtCreator/%Framework%.pri)
)%)%include(../../%Framework%.pri)
include(../../../../QtCreator/%out%/%lib%%Target%/%lib%%Target%.pri)

TARGET = $${%lib%%Target%%exe%_TARGET}%
%%if(%Lib%%SLib%,%(
TEMPLATE = $${%lib%%Target%_TEMPLATE}%if(%Lib%,%(
CONFIG += $${%lib%%Target%_CONFIG})%)%)%)%

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${%lib%%Target%%exe%_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${%lib%%Target%%exe%_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${%lib%%Target%%exe%_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
OBJECTIVE_SOURCES += \
$${%lib%%Target%%exe%_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${%lib%%Target%%exe%_HEADERS} \
$${%lib%%Target%%exe%_OBJECTIVE_HEADERS} \

# SOURCES
#
SOURCES += \
$${%lib%%Target%%exe%_SOURCES} \

########################################################################
%else(%equal(lib,%library%)%,%(# FRAMEWORKS
#
FRAMEWORKS += \
$${%lib%%Target%%exe%_FRAMEWORKS} \

# LIBS
#
LIBS += \
$${%lib%%Target%%exe%_LIBS} \
$${FRAMEWORKS} \
)%)%
%
%)%)%