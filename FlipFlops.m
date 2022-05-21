display 'SR LATCH'
S=[0;0;0;1;0];
R=[0;1;0;0;0];
Qn=[1;1;0;0;1];
X=Qn&(~R);
Qn_=S|X;
a=Qn_;
b=~Qn_;
g=[S, R, a, b];
display('Qn=1')
display(' S   R   Q(n+1)   ~Q(n+1)')
disp(g);


display 'D FLIPFLOP'
clk=[1;0;0;1;0;0;1;0];
D=[0;0;1;1;1;0;0;0];
Qn=[0;0;0;0;0;0;0;0];
for i=1:8
if(clk(i)== 0)
Qn(i)=Qn(i-1);
else
Qn(i)=D(i);
end
end
FINAL=[clk,D,Qn,~Qn];
display ' Clk D Qn ~Qn'
disp(FINAL);


clk=[1 0 1 1 1 0];
J =[1 0 0 0 1 1];
K =[0 1 1 0 1 1];
Qn=[];
for i=1:6
if(clk(i)==1)
if(J(i)==0 && K(i)==1)
Qn(i)=0;
elseif(J(i)==0 && K(i)==0)
Qn(i)=Qn(i-1);
elseif(J(i)==1 && K(i)==1)
Qn(i)=~Qn(i-1);
elseif(J(i)==1 && K(i)==0)
Qn(i)=1;
end
else
Qn(i)=Qn(i-1);
end;
end;
disp(' clk J K Qn ~Qn');
disp([clk' J' K' Qn' ~Qn']);