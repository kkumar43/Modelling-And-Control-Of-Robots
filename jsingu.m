function jsingu(J)
    %JSINGU Show the linearly dependent joints in a Jacobian matrix
    %
    % JSINGU(J) displays the linear dependency of joints in a Jacobian matrix.
    % This dependency indicates joint axes that are aligned and causes singularity.
    %
    % See also SerialLink.jacobn.
    % convert to row-echelon form
    [R, jb] = rref(J);
    R(abs(R) < 100*eps) = 0;

    depcols = setdiff( 1:numcols(J), jb);

    fprintf('%d linearly dependent joints:\n', length(depcols));
    for d=depcols
        fprintf('  q%d depends on: ', d)
        for k=find(R(:,d))
            fprintf('q%d ', k);
        end
        fprintf('\n');
    end
end