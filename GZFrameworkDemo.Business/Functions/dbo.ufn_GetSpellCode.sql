SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- 功能：汉字转换成拼音首字母 首字母查
-- =============================================
CREATE FUNCTION [dbo].[ufn_GetSpellCode](@Str   varchar(500)='')  
  returns   varchar(500)  
  as 
 
  begin  
      --定义变量
      declare   @strlen   int, @return   varchar(500), @ii   int  
      declare   @n   int, @c   char(1),@chn   nchar(1)  
       --设置初始值
      select   @strlen=len(@str),@return='',@ii=0  
      set   @ii=0  
      --开始循环取出没个字符
      while   @ii<@strlen  
      begin  
          select   @ii=@ii+1,@n=63,@chn=substring(@str,@ii,1)  
          if   @chn>'z'  
          select   @n   =   @n   +1  ,@c   =   case   chn   when   @chn   then   char(@n)   else   @c   end  
          from(  
              select   top   27   *  
              from(  
                  select   chn   =   '吖'  
                  union   all   select   '八'  
                  union   all   select   '嚓'  
                  union   all   select   '咑'  
                  union   all   select   '妸'  
                  union   all   select   '发'  
                  union   all   select   '旮'  
                  union   all   select   '铪'  
                  union   all   select   '丌' --because   have   no   'i'  
                  union   all   select   '丌'  
                  union   all   select   '咔'  
                  union   all   select   '垃'  
                  union   all   select   '嘸'  
                  union   all   select   '拏'  
                  union   all   select   '噢'  
                  union   all   select   '妑'  
                  union   all   select   '七'  
                  union   all   select   '呥'  
                  union   all   select   '仨'  
                  union   all   select   '他'  
                  union   all   select   '屲' --no   'u'  
                  union   all   select   '屲' --no   'v'  
                  union   all   select   '屲'  
                  union   all   select   '夕'  
                  union   all   select   '丫'  
                  union   all   select   '帀'  
                  union   all   select   @chn
              )   as   a  
              order   by   chn   COLLATE   Chinese_PRC_CI_AS    
          )   as   b  
          else   set   @c=@chn  
          set   @return=@return+@c  
      end  
      return(@return)  
  end
GO
