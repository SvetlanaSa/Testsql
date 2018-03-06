create procedure prod
@productcolor varchar(40)
as
begin
select * from production.Product
where product.color=@productcolor 
end

exec prod 'Black' ;

create proc somelen
@num int,
@str nvarchar(10),
@Lenstr int output,
@msg nvarchar(40) output
as
set @lenstr=len(@str)*@num 
set @msg='you game me an ' +@str
return 2*@num

drop proc somelen

declare @loutplen int, @msg1 nvarchar(40), @thereturn int
exec @thereturn=somelen @num=2, @str='apple', @lenstr=@loutplen output, @msg=@msg1 output

--select @loutplen as len1,@msg1 as msg1, @thereturn as answer