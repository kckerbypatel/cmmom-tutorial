function [Z] = interpComplex(fin, Zin, fout)
%interpolates complex data (like impedance) that is dependent on a real
%variable (like frequency).
%fin and Zin should be vectors of equal length.  fout is a list of the
%desired output frequencies that can be a different length.

if ((fout >max(fin)) || (fout<min(fin)))
    error('Interpolation request outside independent variable range provided.\n')
end

Z = interp1(fin, real(Zin),  fout)...
                +j*interp1(fin,imag(Zin), fout);

end