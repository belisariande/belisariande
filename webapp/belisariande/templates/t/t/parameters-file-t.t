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
%#   File: parameters-file-t.t
%#
%# Author: $author$
%#   Date: 3/30/2021
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_filetypeextension,%(%else-then(%is_filetypeextension%,%(%is_FileTypeExtension%)%)%)%,%
%filetypeextension,%(%else-then(%if-no(%is_filetypeextension%,,%(%filetypeextension%)%)%,%(%if-no(%is_filetypeextension%,,%(t)%)%)%)%)%,%
%FileTypeExtension,%(%else-then(%if-no(%is_filetypeextension%,,%(%FileTypeExtension%)%)%,%(%if-no(%is_filetypeextension%,,%(%filetypeextension%)%)%)%)%)%,%
%FILETYPEEXTENSION,%(%else-then(%FILETYPEEXTENSION%,%(%toupper(%FileTypeExtension%)%)%)%)%,%
%filetypeextension,%(%else-then(%_filetypeextension%,%(%tolower(%FileTypeExtension%)%)%)%)%,%
%is_Parameters,%(%else-then(%is_Parameters%,%(%is_parameters%)%)%)%,%
%Parameters,%(%else-then(%if-no(%is_Parameters%,,%(%Parameters%)%)%,%(%if-no(%is_Parameters%,,%
%%(Year=%%year%(()%%())%%%;Date=%%date%(()%%())%%%;Organization=$organization$;Author=$author$;FileTypeExtension=%FileTypeExtension%;Name=%%FileTypeExtension%%%
%;File=%%else-then%(()%%%File%%%(,)%%%Name%%%())%%%%
%;Base=%%else-then%(()%%%filebase%(()%%%File%%%())%%%%(,)%%%%(()%%%File%%%())%%%%())%%%%
%;Extension=%%else-then%(()%%%fileextension%(()%%%File%%%())%%%%(,)%%%%(()%%%FileTypeExtension%%%())%%%%())%%%%
%;BaseExtension=%%Base%%%%then-if%(()%%%Extension%%%(,)%%%%(()%.%())%%%%())%%%%
%)%%
%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-t.t)%%
%%%with%(()%%%
%
%%if(%if-no(%is_Include%,,%(yes)%)%,%(%
%%with(Parameters,%(Include_path=%%filepath%(()%%%input%%%())%%%)%,%
%%(%include(%include_path%/parameters-t.t)%)%)%%
%)%)%%
%%include(%Include_path%/parameters-t.t)%%
%%%%%%(()%%%
%
%%if(%if-no(%is_Include%,,%(%Include%)%)%,%(%%%%include%(()%%%Include_path%%%then-if(%Include%,/)%%())%%%%%
)%)%%
%%%%())%%%%())%%%%
%)%)%