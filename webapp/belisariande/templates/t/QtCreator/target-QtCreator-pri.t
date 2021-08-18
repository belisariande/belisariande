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
%#   File: target-QtCreator-pri.t
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
%is_logging_levels,%(%else-then(%is_logging_levels%,%(%is_Logging_levels%)%)%)%,%
%logging_levels,%(%else-then(%if-no(%is_logging_levels%,,%(%logging_levels%)%)%,%(%if-no(%is_logging_levels%,,%(ERROR)%)%)%)%)%,%
%Logging_levels,%(%else-then(%if-no(%is_logging_levels%,,%(%Logging_levels%)%)%,%(%if-no(%is_logging_levels%,,%(%logging_levels%)%)%)%)%)%,%
%LOGGING_LEVELS,%(%else-then(%LOGGING_LEVELS%,%(%toupper(%Logging_levels%)%)%)%)%,%
%logging_levels,%(%else-then(%_logging_levels%,%(%tolower(%Logging_levels%)%)%)%)%,%
%is_target_namespace,%(%else-then(%is_target_namespace%,%(%is_Target_namespace%)%)%)%,%
%target_namespace,%(%else-then(%if-no(%is_target_namespace%,,%(%target_namespace%)%)%,%(%if-no(%is_target_namespace%,,%(xos/app/console/%Target%)%)%)%)%)%,%
%Target_namespace,%(%else-then(%if-no(%is_target_namespace%,,%(%Target_namespace%)%)%,%(%if-no(%is_target_namespace%,,%(%target_namespace%)%)%)%)%)%,%
%TARGET_NAMESPACE,%(%else-then(%TARGET_NAMESPACE%,%(%toupper(%Target_namespace%)%)%)%)%,%
%target_namespace,%(%else-then(%_target_namespace%,%(%tolower(%Target_namespace%)%)%)%)%,%
%is_target_instance,%(%else-then(%is_target_instance%,%(%is_Target_instance%)%)%)%,%
%target_instance,%(%else-then(%if-no(%is_target_instance%,,%(%target_instance%)%)%,%(%if-no(%is_target_instance%,,%(%parse(%Target_namespace%,/,,_)%)%)%)%)%)%,%
%Target_instance,%(%else-then(%if-no(%is_target_instance%,,%(%Target_instance%)%)%,%(%if-no(%is_target_instance%,,%(%target_instance%)%)%)%)%)%,%
%TARGET_INSTANCE,%(%else-then(%TARGET_INSTANCE%,%(%toupper(%Target_instance%)%)%)%)%,%
%target_instance,%(%else-then(%_target_instance%,%(%tolower(%Target_instance%)%)%)%)%,%
%is_target_class,%(%else-then(%is_target_class%,%(%is_Target_class%)%)%)%,%
%target_class,%(%else-then(%if-no(%is_target_class%,,%(%target_class%)%)%,%(%if-no(%is_target_class%,,%(main)%)%)%)%)%,%
%Target_class,%(%else-then(%if-no(%is_target_class%,,%(%Target_class%)%)%,%(%if-no(%is_target_class%,,%(%target_class%)%)%)%)%)%,%
%TARGET_CLASS,%(%else-then(%TARGET_CLASS%,%(%toupper(%Target_class%)%)%)%)%,%
%target_class,%(%else-then(%_target_class%,%(%tolower(%Target_class%)%)%)%)%,%
%is_target_base,%(%else-then(%is_target_base%,%(%is_Target_base%)%)%)%,%
%target_base,%(%else-then(%if-no(%is_target_base%,,%(%target_base%)%)%,%(%if-no(%is_target_base%,,%(%Target_namespace%/%Target_class%)%)%)%)%)%,%
%Target_base,%(%else-then(%if-no(%is_target_base%,,%(%Target_base%)%)%,%(%if-no(%is_target_base%,,%(%target_base%)%)%)%)%)%,%
%TARGET_BASE,%(%else-then(%TARGET_BASE%,%(%toupper(%Target_base%)%)%)%)%,%
%target_base,%(%else-then(%_target_base%,%(%tolower(%Target_base%)%)%)%)%,%
%%(%
%
########################################################################
# %lib%%Target%

# %lib%%Target%%exe% TARGET
#
%lib%%Target%%exe%_TARGET = %Target%%
%%if(%Lib%,%(
%lib%%Target%%exe%_TEMPLATE = lib%if(%equal(lib,%library%)%,%(
%lib%%Target%%exe%_CONFIG += staticlib)%)%)%)%

# %lib%%Target%%exe% INCLUDEPATH
#
%lib%%Target%%exe%_INCLUDEPATH += \
$${%Framework%_INCLUDEPATH} \

# %lib%%Target%%exe% DEFINES
#
%lib%%Target%%exe%_DEFINES += \
$${%Framework%_DEFINES} \

#DEFAULT_LOGGING_LEVELS_%LOGGING_LEVELS% \
#%TARGET_INSTANCE%_%TARGET_CLASS%_INSTANCE \

########################################################################
# %lib%%Target%%exe% OBJECTIVE_HEADERS
#
#%lib%%Target%%exe%_OBJECTIVE_HEADERS += \
#$${%FRAMEWORK%_SRC}/%Target_base%.hh \

# %lib%%Target%%exe% OBJECTIVE_SOURCES
#
#%lib%%Target%%exe%_OBJECTIVE_SOURCES += \
#$${%FRAMEWORK%_SRC}/%Target_base%.mm \

########################################################################
# %lib%%Target%%exe% HEADERS
#
#%lib%%Target%%exe%_HEADERS += \
#$${%FRAMEWORK%_SRC}/%Target_base%.hpp \

# %lib%%Target%%exe% SOURCES
#
#%lib%%Target%%exe%_SOURCES += \
#$${%FRAMEWORK%_SRC}/%Target_base%.cpp \

########################################################################
%else(%equal(lib,%library%)%,%(# %lib%%Target%%exe% FRAMEWORKS
#
%lib%%Target%%exe%_FRAMEWORKS += \
$${%Framework%_FRAMEWORKS} \

# %lib%%Target%%exe% LIBS
#
%lib%%Target%%exe%_LIBS += \
$${%Framework%_LIBS} \
)%)%
%
%)%)%