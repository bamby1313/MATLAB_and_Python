function df = table2dataframe(t)
arguments
    t table {mustBeNonempty}
end

t           = splitvars(t);
varNames    = t.Properties.VariableNames;
varClasses  = varfun(@class, t);
varClasses  = string(table2cell(varClasses));
varClasses  = unique(varClasses, "stable");
df          = py.pandas.DataFrame();

for i = 1 : numel(varClasses)
    varClass    = varClasses(i);
    subt        = t(:, vartype(varClass));
    subNames    = subt.Properties.VariableNames;
    switch varClass
        case "double"
            x = table2array(subt);
        case {"string", "char"}
            x = convertStringsToChars(subt{:, subNames});
        case "cell"
             % TO DO
            x = subt{:, subNames};
            y = cellfun(@Core_matlab2py, x, "un", 0);
        case "categorical"
            x = convertStringsToChars(string(subt{:, subNames}));
        case "logical"
            x = subt{:, subNames};
        case "table"
            % TO DO
            x  = table2dataframe(subt);
            df = py.pandas.concat({df, x}, axis = 1);
            return
        case "struct"
            % TO DO
            x = subt{:, subNames};
        otherwise
            a = 1;
    end

    x = matlab.python.matlab2py(x);

    switch varClass
        case "categorical"
            x = py.pandas.DataFrame(x, columns = subNames);
            x = x.astype('category');
        case "struct"
            x = py.pandas.DataFrame(x);
        otherwise
            x = py.pandas.DataFrame(x, columns = subNames);
    end

    df  = py.pandas.concat({df, x}, axis = 1);

end

df = df.reindex(columns=varNames);

end