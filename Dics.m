% List of open inputs
nrun = 1; % enter the number of runs here
jobfile = {'/Users/patrickwiegel/Desktop/Source_Analysis_SPM/Dics_job.m'};
jobs = repmat(jobfile, 1, nrun);
inputs = cell(0, nrun);
for crun = 1:nrun
end
spm('defaults', 'EEG');
spm_jobman('run', jobs, inputs{:});
