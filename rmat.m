function rmat()
k=10.0;n0=64;n1=64;rad=3.0;
fid=fopen("test-a.dat");
[nn,ix1,ix2,a]=rsm(fid);
fclose(fid);
sa=crs(ix1,ix2,a,nn(1));
fid=fopen("test-b.dat");
[nn,ix1,ix2,a]=rsm(fid);
fclose(fid);
sb=crs(ix1,ix2,a,nn(1));
c=sa-(k*k)*sb;
spy(sb);
axis("equal");
end
