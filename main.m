function main(len,quantity)
  st = zeros(1,len);
  for i = 1:len
    st(i) = trnd(10);
  end
  result = []
  q = 1;
  noneed = 0;
  for i = 1 : len
    if st(i) > -20 && st(i) < 20
      result(q) = st(i);
      q += 1;
    else 
      noneed += 1;
    end
  end 
  myHist(result,quantity,noneed);
  hold on;
  x = linspace(-20,20,quantity);
  plot(x,tpdf(x,10),"r")
  hold off;
  
endfunction