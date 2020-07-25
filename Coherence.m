%%function Y=main
classdef Coherence
    
    methods(Static)
        function C=MyCoherence(a,c)
            C=0.0;
            C=C-(a^2)*log2(a*a)-(1.0-a^2)*log2(1.0-a^2);
            C=C-((c*sqrt(1-a^2)+a*sqrt(1-c^2))^2)*log2((c*sqrt(1.0-a^2)+a*sqrt(1.0-c^2))^2);
            C=C-((c*a-sqrt(1-a^2)*sqrt(1-c^2))^2)*log2((c*a-sqrt(1.0-a^2)*sqrt(1.0-c^2))^2);
        end
        
        function [opt,MIN]=my_optimal(c)
            
            a = sqrt(1.0-c^2);
            opt = 0.0;
            var m=0.0;
            MIN=1.05;
            
            while (a < 1)
                m=Coherence.MyCoherence(a,c);
                if (m < MIN)
                    MIN = m;
                    opt = a;
                end
                a =a + 0.01;
            end
        end
        
%         N=100;
%         d=0.01;
%         c = 0.0;
%         a_i = 0.0;
%         
%         for i=0:N
%             a_i = my_optimal(c);
%             c=c+d;
%             disp(a_i);
%         end
    end
end