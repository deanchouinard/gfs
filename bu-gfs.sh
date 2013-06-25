BUCKET=gfs-bu

LDATA=/home/dean/bu

FNAME=gfs-$(date +%Y%m%d).sql
INAME=images-gfs-$(date +%Y%m%d).tar.gz
echo $FNAME
echo $INAME

cd $LDATA

pg_dump -U dean gfs -f $FNAME

tar -caf $INAME /home/spree/gfs/shared/spree/products

~/bin/aws put $BUCKET/$FNAME $FNAME

~/bin/aws put $BUCKET/$INAME $INAME

