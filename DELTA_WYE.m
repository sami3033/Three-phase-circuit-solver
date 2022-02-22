function [] = deltaTowye(V_Phase1,V_Phase2,V_Phase3,Z_Line1,Z_Line2,Z_Line3,Load1,Load2,Load3)
       
        %MESH Current Calculation
        
        
        Matrix1 = [(Z_Line1 + Load1 + Load2 + Z_Line2), -(Z_Line2 + Load2);...
            -(Z_Line2 + Load2), (Z_Line2 + Load2 + Load3 + Z_Line3)];
        
        Matrix2 = [V_Phase1; V_Phase2];
        
        Current_Matrix = inv(Matrix1) * Matrix2;
        
        
        %Line Current Calculation
        
        I_Line1 = Current_Matrix(1);
        I_Line2 = (Current_Matrix(2) - Current_Matrix(1));
        I_Line3 = -Current_Matrix(2);
    
        %Load Current Calculation
        
        I_Load1 = I_Line1;
        I_Load2 = I_Line2;
        I_Load3 = I_Line3;
     
        
        %Load Voltage Calculation
        
        V_Load1 = I_Load1 * Load1;
        V_Load2 = I_Load2 * Load2;
        V_Load3 = I_Load3 * Load3;
        
        
        
        %Line Voltage Calculation
        
        V_Line1 = V_Load1 - V_Load2;
        V_Line2 = V_Load2 - V_Load3;
        V_Line3 = V_Load3 - V_Load1;
       
         
        %Power Calculation
        
        S_Load1 = ((abs(I_Load1))^2) * Load1;
        S_Load2 = ((abs(I_Load2))^2) * Load2;
        S_Load3 = ((abs(I_Load3))^2) * Load3;
       
        
        Total_Real_Power = real(Total_Complex_Power);
        
        
        Total_Reactive_Power = imag(Total_Complex_Power);
        
        
        Power_Factor = cos(atan( Total_Reactive_Power/Total_Real_Power));
            
end
        
        