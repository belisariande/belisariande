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
%#   File: QtCreator-file-pri.t
%#
%# Author: $author$
%#   Date: 4/21/2021, 7/13/2021
%########################################################################
%with(%
%is_year,%(%else-then(%is_year%,%(%is_Year%)%)%)%,%
%year,%(%else-then(%if-no(%is_year%,,%(%year%)%)%,%(%if-no(%is_year%,,%(%year()%)%)%)%)%)%,%
%Year,%(%else-then(%if-no(%is_year%,,%(%Year%)%)%,%(%if-no(%is_year%,,%(%year%)%)%)%)%)%,%
%YEAR,%(%else-then(%YEAR%,%(%toupper(%Year%)%)%)%)%,%
%year,%(%else-then(%_year%,%(%tolower(%Year%)%)%)%)%,%
%is_month,%(%else-then(%is_month%,%(%is_Month%)%)%)%,%
%month,%(%else-then(%if-no(%is_month%,,%(%month%)%)%,%(%if-no(%is_month%,,%(%month()%)%)%)%)%)%,%
%Month,%(%else-then(%if-no(%is_month%,,%(%Month%)%)%,%(%if-no(%is_month%,,%(%month%)%)%)%)%)%,%
%MONTH,%(%else-then(%MONTH%,%(%toupper(%Month%)%)%)%)%,%
%month,%(%else-then(%_month%,%(%tolower(%Month%)%)%)%)%,%
%is_day,%(%else-then(%is_day%,%(%is_Day%)%)%)%,%
%day,%(%else-then(%if-no(%is_day%,,%(%day%)%)%,%(%if-no(%is_day%,,%(%day()%)%)%)%)%)%,%
%Day,%(%else-then(%if-no(%is_day%,,%(%Day%)%)%,%(%if-no(%is_day%,,%(%day%)%)%)%)%)%,%
%DAY,%(%else-then(%DAY%,%(%toupper(%Day%)%)%)%)%,%
%day,%(%else-then(%_day%,%(%tolower(%Day%)%)%)%)%,%
%is_date,%(%else-then(%is_date%,%(%is_Date%)%)%)%,%
%date,%(%else-then(%if-no(%is_date%,,%(%date%)%)%,%(%if-no(%is_date%,,%(%date()%)%)%)%)%)%,%
%Date,%(%else-then(%if-no(%is_date%,,%(%Date%)%)%,%(%if-no(%is_date%,,%(%date%)%)%)%)%)%,%
%DATE,%(%else-then(%DATE%,%(%toupper(%Date%)%)%)%)%,%
%date,%(%else-then(%_date%,%(%tolower(%Date%)%)%)%)%,%
%is_organization,%(%else-then(%is_organization%,%(%is_Organization%)%)%)%,%
%organization,%(%else-then(%if-no(%is_organization%,,%(%organization%)%)%,%(%if-no(%is_organization%,,%($organization$)%)%)%)%)%,%
%Organization,%(%else-then(%if-no(%is_organization%,,%(%Organization%)%)%,%(%if-no(%is_organization%,,%(%organization%)%)%)%)%)%,%
%ORGANIZATION,%(%else-then(%ORGANIZATION%,%(%toupper(%Organization%)%)%)%)%,%
%organization,%(%else-then(%_organization%,%(%tolower(%Organization%)%)%)%)%,%
%is_author,%(%else-then(%is_author%,%(%is_Author%)%)%)%,%
%author,%(%else-then(%if-no(%is_author%,,%(%author%)%)%,%(%if-no(%is_author%,,%($author$)%)%)%)%)%,%
%Author,%(%else-then(%if-no(%is_author%,,%(%Author%)%)%,%(%if-no(%is_author%,,%(%author%)%)%)%)%)%,%
%AUTHOR,%(%else-then(%AUTHOR%,%(%toupper(%Author%)%)%)%)%,%
%author,%(%else-then(%_author%,%(%tolower(%Author%)%)%)%)%,%
%is_filetypeextension,%(%else-then(%is_filetypeextension%,%(%is_FileTypeExtension%)%)%)%,%
%filetypeextension,%(%else-then(%if-no(%is_filetypeextension%,,%(%filetypeextension%)%)%,%(%if-no(%is_filetypeextension%,,%(pri)%)%)%)%)%,%
%FileTypeExtension,%(%else-then(%if-no(%is_filetypeextension%,,%(%FileTypeExtension%)%)%,%(%if-no(%is_filetypeextension%,,%(%filetypeextension%)%)%)%)%)%,%
%FILETYPEEXTENSION,%(%else-then(%FILETYPEEXTENSION%,%(%toupper(%FileTypeExtension%)%)%)%)%,%
%filetypeextension,%(%else-then(%_filetypeextension%,%(%tolower(%FileTypeExtension%)%)%)%)%,%
%is_framework,%(%else-then(%is_framework%,%(%is_Framework%)%)%)%,%
%framework,%(%else-then(%if-no(%is_framework%,,%(%framework%)%)%,%(%if-no(%is_framework%,,%(Framework)%)%)%)%)%,%
%Framework,%(%else-then(%if-no(%is_framework%,,%(%Framework%)%)%,%(%if-no(%is_framework%,,%(%framework%)%)%)%)%)%,%
%FRAMEWORK,%(%else-then(%FRAMEWORK%,%(%toupper(%Framework%)%)%)%)%,%
%framework,%(%else-then(%_framework%,%(%tolower(%Framework%)%)%)%)%,%
%is_project,%(%else-then(%is_project%,%(%is_Project%)%)%)%,%
%project,%(%else-then(%if-no(%is_project%,,%(%project%)%)%,%(%if-no(%is_project%,,%(Project)%)%)%)%)%,%
%Project,%(%else-then(%if-no(%is_project%,,%(%Project%)%)%,%(%if-no(%is_project%,,%(%project%)%)%)%)%)%,%
%PROJECT,%(%else-then(%PROJECT%,%(%toupper(%Project%)%)%)%)%,%
%project,%(%else-then(%_project%,%(%tolower(%Project%)%)%)%)%,%
%is_target,%(%else-then(%is_target%,%(%is_Target%)%)%)%,%
%target,%(%else-then(%if-no(%is_target%,,%(%target%)%)%,%(%if-no(%is_target%,,%(%Framework%)%)%)%)%)%,%
%Target,%(%else-then(%if-no(%is_target%,,%(%Target%)%)%,%(%if-no(%is_target%,,%(%target%)%)%)%)%)%,%
%TARGET,%(%else-then(%TARGET%,%(%toupper(%Target%)%)%)%)%,%
%target,%(%else-then(%_target%,%(%tolower(%Target%)%)%)%)%,%
%is_name,%(%else-then(%is_name%,%(%is_Name%)%)%)%,%
%name,%(%else-then(%if-no(%is_name%,,%(%name%)%)%,%(%if-no(%is_name%,,%(%Lib%%Target%)%)%)%)%)%,%
%Name,%(%else-then(%if-no(%is_name%,,%(%Name%)%)%,%(%if-no(%is_name%,,%(%name%)%)%)%)%)%,%
%NAME,%(%else-then(%NAME%,%(%toupper(%Name%)%)%)%)%,%
%name,%(%else-then(%_name%,%(%tolower(%Name%)%)%)%)%,%
%is_file,%(%else-then(%is_file%,%(%is_File%)%)%)%,%
%file,%(%else-then(%if-no(%is_file%,,%(%file%)%)%,%(%if-no(%is_file%,,%(%else-then(%File%,%Name%)%)%)%)%)%)%,%
%File,%(%else-then(%if-no(%is_file%,,%(%File%)%)%,%(%if-no(%is_file%,,%(%file%)%)%)%)%)%,%
%FILE,%(%else-then(%FILE%,%(%toupper(%File%)%)%)%)%,%
%file,%(%else-then(%_file%,%(%tolower(%File%)%)%)%)%,%
%is_base,%(%else-then(%is_base%,%(%is_Base%)%)%)%,%
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(%else-then(%filebase(%File%)%,%(%File%)%)%)%)%)%)%)%,%
%Base,%(%else-then(%if-no(%is_base%,,%(%Base%)%)%,%(%if-no(%is_base%,,%(%base%)%)%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_base%,%(%tolower(%Base%)%)%)%)%,%
%is_extension,%(%else-then(%is_extension%,%(%is_Extension%)%)%)%,%
%extension,%(%else-then(%if-no(%is_extension%,,%(%extension%)%)%,%(%if-no(%is_extension%,,%(%else-then(%fileextension(%File%)%,%(%FileTypeExtension%)%)%)%)%)%)%)%,%
%Extension,%(%else-then(%if-no(%is_extension%,,%(%Extension%)%)%,%(%if-no(%is_extension%,,%(%extension%)%)%)%)%)%,%
%EXTENSION,%(%else-then(%EXTENSION%,%(%toupper(%Extension%)%)%)%)%,%
%extension,%(%else-then(%_extension%,%(%tolower(%Extension%)%)%)%)%,%
%is_baseextension,%(%else-then(%is_baseextension%,%(%is_BaseExtension%)%)%)%,%
%baseextension,%(%else-then(%if-no(%is_baseextension%,,%(%baseextension%)%)%,%(%if-no(%is_baseextension%,,%(%Base%%then-if(%Extension%,%(.)%)%)%)%)%)%)%,%
%BaseExtension,%(%else-then(%if-no(%is_baseextension%,,%(%BaseExtension%)%)%,%(%if-no(%is_baseextension%,,%(%baseextension%)%)%)%)%)%,%
%BASEEXTENSION,%(%else-then(%BASEEXTENSION%,%(%toupper(%BaseExtension%)%)%)%)%,%
%baseextension,%(%else-then(%_baseextension%,%(%tolower(%BaseExtension%)%)%)%)%,%
%is_specific,%(%else-then(%is_specific%,%(%is_Specific%)%)%)%,%
%specific,%(%else-then(%if-no(%is_specific%,,%(%specific%)%)%,%(%if-no(%is_specific%,,%()%)%)%)%)%,%
%Specific,%(%else-then(%if-no(%is_specific%,,%(%Specific%)%)%,%(%if-no(%is_specific%,,%(%specific%)%)%)%)%)%,%
%SPECIFIC,%(%else-then(%SPECIFIC%,%(%toupper(%Specific%)%)%)%)%,%
%specific,%(%else-then(%_specific%,%(%tolower(%Specific%)%)%)%)%,%
%is_qtcreator,%(%else-then(%is_qtcreator%,%(%is_QtCreator%)%)%)%,%
%qtcreator,%(%else-then(%if-no(%is_qtcreator%,,%(%qtcreator%)%)%,%(%if-no(%is_qtcreator%,,%(QtCreator)%)%)%)%)%,%
%QtCreator,%(%else-then(%if-no(%is_qtcreator%,,%(%QtCreator%)%)%,%(%if-no(%is_qtcreator%,,%(%qtcreator%)%)%)%)%)%,%
%QTCREATOR,%(%else-then(%QTCREATOR%,%(%toupper(%QtCreator%)%)%)%)%,%
%qtcreator,%(%else-then(%_qtcreator%,%(%tolower(%QtCreator%)%)%)%)%,%
%is_library,%(%else-then(%is_library%,%(%is_Library%)%)%)%,%
%library,%(%else-then(%if-no(%is_library%,,%(%library%)%)%,%(%if-no(%is_library%,,%()%)%)%)%)%,%
%Library,%(%else-then(%if-no(%is_library%,,%(%Library%)%)%,%(%if-no(%is_library%,,%(%library%)%)%)%)%)%,%
%LIBRARY,%(%else-then(%LIBRARY%,%(%toupper(%Library%)%)%)%)%,%
%library,%(%else-then(%_library%,%(%tolower(%Library%)%)%)%)%,%
%is_module,%(%else-then(%is_module%,%(%is_Module%)%)%)%,%
%module,%(%else-then(%if-no(%is_module%,,%(%module%)%)%,%(%if-no(%is_module%,,%(%if(%equal(lib,%Library%)%,%(Static Library)%,%(%if(%equal(slib,%Library%)%,%(Shared Library)%,%(%if(%equal(exe,%Library%)%,%(Executable)%,%()%)%)%)%)%)%)%)%)%)%)%,%
%Module,%(%else-then(%if-no(%is_module%,,%(%Module%)%)%,%(%if-no(%is_module%,,%(%module%)%)%)%)%)%,%
%MODULE,%(%else-then(%MODULE%,%(%toupper(%Module%)%)%)%)%,%
%module,%(%else-then(%_module%,%(%tolower(%Module%)%)%)%)%,%
%is_title,%(%else-then(%is_title%,%(%is_Title%)%)%)%,%
%title,%(%else-then(%if-no(%is_title%,,%(%title%)%)%,%(%if-no(%is_title%,,%(%if-then(%Specific%, specific )%%QtCreator%%then-if(%Extension%, .)%%then-if(%then-if(%Framework%%then-if(%Module%, )%%then-if(%Lib%%Target%, )%,framework )%, for )%)%)%)%)%)%,%
%Title,%(%else-then(%if-no(%is_title%,,%(%Title%)%)%,%(%if-no(%is_title%,,%(%title%)%)%)%)%)%,%
%TITLE,%(%else-then(%TITLE%,%(%toupper(%Title%)%)%)%)%,%
%title,%(%else-then(%_title%,%(%tolower(%Title%)%)%)%)%,%
%%(%
%########################################################################
# Copyright (c) 1988-%Year% %Organization%
#
# This software is provided by the author and contributors ``as is''
# and any express or implied warranties, including, but not limited to,
# the implied warranties of merchantability and fitness for a particular
# purpose are disclaimed. In no event shall the author or contributors
# be liable for any direct, indirect, incidental, special, exemplary,
# or consequential damages (including, but not limited to, procurement
# of substitute goods or services; loss of use, data, or profits; or
# business interruption) however caused and on any theory of liability,
# whether in contract, strict liability, or tort (including negligence
# or otherwise) arising in any way out of the use of this software,
# even if advised of the possibility of such damage.
#
#   File: %BaseExtension%
#
# Author: %Author%
#   Date: %Date%%then-if(%Title%,%(
#
# )%)%
########################################################################
%
%)%)%