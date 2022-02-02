classdef Person
    properties
        name
        age
    end
    methods
        function obj = Person(name, age)
            %UNTITLED3 Construct an instance of this class
            %   Detailed explanation goes here
            obj.name = name;
            obj.age  = age;
        end
    end
    methods (Static)
        function obj = struct(s)
            name = s.name;
            age  = s.age;
            obj  = Person(name, age);
        end
    end
end