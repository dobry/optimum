%% funkcja pomocnicza dla tworzenia ograniczen nieliniowych

function [Cc,Ceq] = conditions(x)
    global GLOBAL_C
    global GLOBAL_Ceq
    
    Cc = GLOBAL_C(x);
    Ceq = GLOBAL_Ceq(x);
end