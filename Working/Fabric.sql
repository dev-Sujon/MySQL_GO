select distinct a.CustomCode, a.MRRID
from GrmFabricMRRMaster a
left join GrmFabricMRRDetail b on a.MRRID=b.MRRID
where a.MRRID not in(
select a.MRRID
from GrmFabricMRRDetail a
left join GrmFabricMRRMaster b on a.MRRID=b.MRRID
where isnull(a.IsDeleted,0)=0)
--and a. MRRID not in ()

select IsDeleted, * from GrmFabricMRRDetail where MRRID  in (
'592','593','594','595','656','785','4252','4287','5342','5351',
'5352','5353','5367','5571','5572','5573','5574','5578','5587',
'5589','5590','5591','5592','5593','5594','5595','5596','5597',
'5598','5599','5600','5601','5602','5603','5604','5609','5610',
'5898','5982','6163','6164','6191','6212','6247')