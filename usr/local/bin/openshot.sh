cp $1 _$1;
sed -i -- 's/\/home\//\/var\/runxx\/uploadxx\//g' _$1;
sed -i -- 's/\/usr\/share\/openshot\//\/usr\/lib\/python2.7\/site-packages\//g' _$1;
echo "https://www.offidocs.com/create-openshot.html?username=$USER";
