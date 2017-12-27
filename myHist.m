function myHist(x,amountCells,out)
  min = x(1);
  max = x(1);
  for i = 1 : length(x)
    if min > x(i)
      min = x(i);
    end
    if max < x(i)
      max = x(i);
    end
  end
  fullLength = max - min;
  oneLength = fullLength/amountCells;
  arrAmount =  zeros(1,amountCells);
  for i = 1 : length(x)
    ls = floor(amountCells*(x(i) - min)/fullLength) + 1;
    if(ls > amountCells)
      ls -= 1;
    end
    arrAmount(ls) += 1;
  end
  for i = 1 : length(arrAmount)
    arrAmount(i) /= (length(x) + out)*oneLength;
  end
  arrX = linspace(min,max,amountCells);
  bar(arrX,arrAmount);
endfunction