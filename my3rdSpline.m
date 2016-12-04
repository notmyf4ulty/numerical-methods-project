function fi = my3rdSpline(a,i,h,x)
    if ((x >= myXi(a,i-2,h)) && (x < myXi(a,i-1,h)))
        fi = (x - myXi(a,i-2,h))^3;
    elseif ((x >= myXi(a,i-1,h)) && (x < myXi(a,i,h)))
        fi = (x - myXi(a,i-2,h))^3 - 4 * (x - myXi(a,i-1,h))^3;
    elseif ((x >= myXi(a,i,h)) && (x < myXi(a,i+1,h)))
        fi = (myXi(a,i+2,h) - x)^3  - 4 * (myXi(a,i+1,h) - x)^3;
    elseif ((x >= myXi(a,i+1,h)) && (x <= myXi(a,i+2,h)))
        fi = (myXi(a,i+2,h) - x)^3;
    else
        fi = 0;
    end
    fi = fi * (1/(h^3));
end