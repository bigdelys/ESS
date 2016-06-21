classdef Entity < dynamicprops
    properties 
        type = 'ess:Thing';      
        id;
        dateCreated 
     %   dateModified 
    end;
    methods
        function obj = Entity
            add_ess_path_if_needed;
            obj.dateCreated = datestr8601(now,'*ymdHMS');
           % obj.dateModified = obj.dateCreated;
        end;
        
        function obj = setId(obj)
            obj.id = [obj.type '/' char(java.util.UUID.randomUUID)];
        end;
    end;
end
      