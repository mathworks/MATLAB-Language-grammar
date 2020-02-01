classdef CircleArea % A comment
   properties  % A comment
      Radius
   end
   properties (Constant)
      P = pi
   end
   properties (Dependent) % A comment
      Area
   end
   methods
      function obj = CircleArea(r)
         if nargin > 0
            obj.Radius = r;
         end
      end
      function val = get.Area(obj)
         val = obj.P*obj.Radius^2;
      end
      function obj = set.Radius(obj,val)
         if val < 0
            error("Radius must be positive")
         end
         obj.Radius = val;
      end
      function plot(obj)
         r = obj.Radius;
         d = r*2;
         pos = [0 0 d d];
         curv = [1 1];
         rectangle('Position',pos,'Curvature',curv,...
            'FaceColor',[.9 .9 .9])
         line([0,r],[r,r])
         text(r/2,r+.5,['r = ',num2str(r)])
         title(['Area = ',num2str(obj.Area)])

         % This is an example of a command dual
         axis equal
      end
      function disp(obj)
         rad = obj.Radius;
         disp(['Circle with radius: ',num2str(rad)])
      end
   end
   methods (Static) % A comment
      function obj = createObj
         prompt = {"Enter the Radius"};
         dlgTitle = 'Radius';
         rad = inputdlg(prompt,dlgTitle);
         r = str2double(rad{:});
         obj = CircleArea(r);
      end
   end
end
