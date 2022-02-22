%Load Current Print
%%
if( imag(I_Load1) >= 0)
    
    fprintf('I Load1 = %f + %fj A\n',real(I_Load1),imag(I_Load1));
else
    fprintf('I Load1 = %f - %fj A\n',real(I_Load1),abs(imag(I_Load1)));
end
if( imag(I_Load2) >= 0)
    
    fprintf('I Load2 = %f + %fj A\n',real(I_Load2),imag(I_Load2));
else
    fprintf('I Load2 = %f - %fj A\n',real(I_Load2),abs(imag(I_Load2)));
end
if( imag(I_Load3) >= 0)
    
    fprintf('I Load3 = %f + %fj A\n\n\n',real(I_Load3),imag(I_Load3));
else
    fprintf('I Load3 = %f - %fj A\n\n\n',real(I_Load3),abs(imag(I_Load3)));
end

%Line Current Print

if (imag(I_Line1) >= 0)
    
    fprintf('I Line1 = %f + %fj A\n',real(I_Line1),imag(I_Line1));
else
    fprintf('I Line1 = %f - %fj A\n',real(I_Line1),abs(imag(I_Line1)));
end
if (imag(I_Line2) >= 0)
    
    fprintf('I Line2 = %f + %fj A\n',real(I_Line2),imag(I_Line2));
else
    fprintf('I Line2 = %f - %fj A\n',real(I_Line2),abs(imag(I_Line2)));
end
if (imag(I_Line3) >= 0)
    
    fprintf('I Line3 = %f + %fj A\n\n\n',real(I_Line3),imag(I_Line3));
else
    fprintf('I Line3 = %f - %fj A\n\n\n',real(I_Line3),abs(imag(I_Line3)));
end


%Load Voltage Print

if( imag(V_Load1) >= 0)
    fprintf('Load Voltage1 = %f + %fi V\n',real(V_Load1),imag(V_Load1));
else
    fprintf('Load Voltage1 = %f - %fi V\n',real(V_Load1),abs(imag(V_Load1)));
end
if( imag(V_Load2) >= 0)
    fprintf('Load Voltage2 = %f + %fi V\n',real(V_Load2),imag(V_Load2));
else
    fprintf('Load Voltage2 = %f - %fi V\n',real(V_Load2),abs(imag(V_Load2)));
end
if( imag(V_Load3) >= 0)
    fprintf('Load Voltage3 = %f + %fi V\n\n\n',real(V_Load3),imag(V_Load3));
else
    fprintf('Load Voltage3 = %f - %fi V\n\n\n',real(V_Load3),abs(imag(V_Load3)));
end



%Line Voltage Calculation


fprintf('Line Voltage at Load End:\n\n');


if( imag(V_Line1) >= 0)
    fprintf('Line Voltage1 = %f + %fi V\n',real(V_Line1),imag(V_Line1));
else
    fprintf('Line Voltage1 = %f - %fi V\n',real(V_Line1),abs(imag(V_Line1)));
end
if( imag(V_Line2) >= 0)
    fprintf('Line Voltage2 = %f + %fi V\n',real(V_Line2),imag(V_Line2));
else
    fprintf('Line Voltage2 = %f - %fi V\n',real(V_Line2),abs(imag(V_Line2)));
end
if( imag(V_Line3) >= 0)
    fprintf('Line Voltage3 = %f + %fi V\n\n\n',real(V_Line3),imag(V_Line3));
else
    fprintf('Line Voltage3 = %f - %fi V\n\n\n',real(V_Line3),abs(imag(V_Line3)));
end


%Power Print


if( imag(Total_Complex_Power) >= 0)
    fprintf('Total Complex Power = %f + %fj VA\n\n\n',real(Total_Complex_Power),imag(Total_Complex_Power));
else
    fprintf('Total Complex Power = %f - %fj VA\n\n\n',real(Total_Complex_Power),abs(imag(Total_Complex_Power)));
end


fprintf('Real Power = %f W\n\n\n',Total_Real_Power);
fprintf('Reactive Power = %f VAR\n',Total_Reactive_Power);


if( Total_Reactive_Power > 0)
    fprintf('Power Factor = %f Lagging \n\n',Power_Factor);
elseif( Total_Reactive_Power = 0)
    fprintf('Power Factor = %f Unity \n\n',Power_Factor);
else
    fprintf('Power Factor = %f Leading \n\n',Power_Factor);
end