use dbmgerp
go


-- For Fabrics
select ItemID,Isnull(ArticleDescription,Description)+','+isnull(Width,'') Item from CmnItemMaster
where OurReferenceID=1 -- For Fabric
and isnull(IsDeleted,0)=0

-- For style
select ItemID, a.CustomCode+' - '+isnull(a.ItemName,'')+' ('+isnull(b.SeasonName,'')+')' Item from CmnItemMaster a
left join GrmSeason b on a.ItemSeasonID=b.SeasonID
where OurReferenceID=1263 -- For Style
and isnull(a.IsDeleted,0)=0


select ItemColorID,ColorName+' ('+isnull(ColorCode,'')+')' Color from CmnItemColor where isnull(IsDeleted,0)=0

select TotalReceiveQuantity,ItemStyleID,ItemID,ItemColorID,a.CreateOn
from GrmFabricMRRDetail a
left join GrmFabricMRRMaster b on a.MRRID=b.MRRID
where isnull(a.IsDeleted,0)=0 and isnull(b.IsDeleted,0)=0
and b.CompanyID=87 and b.ToCostCenterID=996 -- From MGL(MGNFL(U2))