#declare r=2*pi*clock;#declare h=r+sin(r)/2;#declare c=<-5*sin(h),1+1.4*cos(h),-4.25-4*cos(h)>;#macro f()fade_distance 1 fade_power 2#end camera{location c look_at 0}light_source{<-2.5,8,-6>rgb<8,9,8>*9 f()}light_source{c rgb<8,8,9>*.1 f()}#macro m(P,S)#if(vlength(P-c)<S*30)#local s=S/3;#local i=0;#while(i<27)#local X=mod(i,3)-1;#local Y=mod(div(i,3),3)-1;#local Z=mod(div(i,9),3)-1;#if((X=0)+(Y=0)+(Z=0)<2)m(P+<X,Y,Z>*s,s)#end#local i=i+1;#end#else box{-.5,.5 pigment{rgb 1}scale S translate P}#end#end m(0,3)
