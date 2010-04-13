load_paths;
load_pcs;

clear_errors;

reset_weights;
calculate_errors;

%%

disp('Generating positive partial correlation chart...')
plot_error_correlation(pgp_ped_errors, pep_ped_errors, pgp_non_errors, pep_non_errors, ...
	'Positive Partial Error Correlation', 'grayscale error', 'edge error', 'data/charts/error_correlation_positive.pdf');
close;
	
disp('Generating negative correlation chart...')
plot_error_correlation(pgn_ped_errors, pen_ped_errors, pgn_non_errors, pen_non_errors, ...
	'Negative Partial Error Correlation', 'grayscale error', 'edge error', 'data/charts/error_correlation_negative.pdf');
close;

disp('Generating total correlation by type chart...');
plot_error_correlation(gray_ped_errors, edge_ped_errors, gray_non_errors, edge_non_errors, ...
	'Total Error Correlation', 'grayscale error', 'edge error', 'data/charts/error_correlation_total_by_type.pdf');
close;

%%

disp('Generating grayscale partial correlation chart...')
plot_error_correlation(pgp_ped_errors, pgn_ped_errors, pgp_non_errors, pgn_non_errors, ...
	'Grayscale Partial Error Correlation', 'positive error', 'negative error', 'data/charts/error_correlation_grayscale.pdf');
close;

disp('Generating edge partial correlation chart...')
plot_error_correlation(pep_ped_errors, pen_ped_errors, pep_non_errors, pen_non_errors, ...
	'Edge Partial Error Correlation', 'positive error', 'negative error', 'data/charts/error_correlation_edge.pdf');
close;

disp('Generating total correlation by class chart...');
plot_error_correlation(pos_ped_errors, neg_ped_errors, pos_non_errors, neg_non_errors, ...
	'Total Error Correlation', 'positive error', 'negative error', 'data/charts/error_correlation_total_by_class.pdf');
close;

%%

load_weights;
calculate_errors;

disp('Generating weighted total correlation by type chart...');
plot_error_correlation(gray_ped_errors, edge_ped_errors, gray_non_errors, edge_non_errors, ...
	'Weighted Total Error Correlation', 'grayscale error', 'edge error', 'data/charts/error_correlation_total_weighted_by_type.pdf');
close;

disp('Generating weighted total correlation by class chart...');
plot_error_correlation(pos_ped_errors, neg_ped_errors, pos_non_errors, neg_non_errors, ...
	'Weighted Total Error Correlation', 'grayscale error', 'edge error', 'data/charts/error_correlation_total_weighted_by_class.pdf');
close;