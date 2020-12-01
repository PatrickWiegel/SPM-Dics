%-----------------------------------------------------------------------
% Job saved on 26-Nov-2020 14:20:23 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7771)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
matlabbatch{1}.spm.meeg.source.headmodel.D = {'/Volumes/Transcend/Matlab/2020/RL/Data/Analyses/5_final/spm_0_1.mat'};
matlabbatch{1}.spm.meeg.source.headmodel.val = 1;
matlabbatch{1}.spm.meeg.source.headmodel.comment = '';
matlabbatch{1}.spm.meeg.source.headmodel.meshing.meshes.template = 1;
matlabbatch{1}.spm.meeg.source.headmodel.meshing.meshres = 2;
matlabbatch{1}.spm.meeg.source.headmodel.coregistration.coregdefault = 1;
matlabbatch{1}.spm.meeg.source.headmodel.forward.eeg = 'EEG BEM';
matlabbatch{1}.spm.meeg.source.headmodel.forward.meg = 'Single Shell';
matlabbatch{2}.spm.tools.beamforming.data.dir = {'/Volumes/Transcend/Matlab/2020/RL/Data/Analyses/5_final'};
matlabbatch{2}.spm.tools.beamforming.data.D = {'/Volumes/Transcend/Matlab/2020/RL/Data/Analyses/5_final/spm_0_1.mat'};
matlabbatch{2}.spm.tools.beamforming.data.val = 1;
matlabbatch{2}.spm.tools.beamforming.data.gradsource = 'inv';
matlabbatch{2}.spm.tools.beamforming.data.space = 'MNI-aligned';
matlabbatch{2}.spm.tools.beamforming.data.overwrite = 0;
matlabbatch{3}.spm.tools.beamforming.sources.BF(1) = cfg_dep('Prepare data: BF.mat file', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','BF'));
matlabbatch{3}.spm.tools.beamforming.sources.reduce_rank = [2 3];
matlabbatch{3}.spm.tools.beamforming.sources.keep3d = 1;
matlabbatch{3}.spm.tools.beamforming.sources.plugin.grid.resolution = 10;
matlabbatch{3}.spm.tools.beamforming.sources.plugin.grid.space = 'MNI template';
matlabbatch{3}.spm.tools.beamforming.sources.plugin.grid.constrain = 'iskull';
matlabbatch{3}.spm.tools.beamforming.sources.visualise = 1;
matlabbatch{4}.spm.tools.beamforming.features.BF(1) = cfg_dep('Define sources: BF.mat file', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','BF'));
matlabbatch{4}.spm.tools.beamforming.features.whatconditions.all = 1;
matlabbatch{4}.spm.tools.beamforming.features.woi = [250 500];
matlabbatch{4}.spm.tools.beamforming.features.modality = {'EEG'};
matlabbatch{4}.spm.tools.beamforming.features.fuse = 'no';
matlabbatch{4}.spm.tools.beamforming.features.plugin.csd.foi = [20 40];
matlabbatch{4}.spm.tools.beamforming.features.plugin.csd.taper = 'dpss';
matlabbatch{4}.spm.tools.beamforming.features.plugin.csd.keepreal = 0;
matlabbatch{4}.spm.tools.beamforming.features.plugin.csd.hanning = 0;
matlabbatch{4}.spm.tools.beamforming.features.regularisation.manual.lambda = 5;
matlabbatch{4}.spm.tools.beamforming.features.bootstrap = false;
matlabbatch{5}.spm.tools.beamforming.inverse.BF(1) = cfg_dep('Covariance features: BF.mat file', substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','BF'));
matlabbatch{5}.spm.tools.beamforming.inverse.plugin.dics.fixedori = 'yes';
matlabbatch{6}.spm.tools.beamforming.output.BF(1) = cfg_dep('Inverse solution: BF.mat file', substruct('.','val', '{}',{5}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','BF'));
matlabbatch{6}.spm.tools.beamforming.output.plugin.image_dics.reference.power = 1;
matlabbatch{6}.spm.tools.beamforming.output.plugin.image_dics.powmethod = 'lambda1';
matlabbatch{6}.spm.tools.beamforming.output.plugin.image_dics.whatconditions.all = 1;
matlabbatch{6}.spm.tools.beamforming.output.plugin.image_dics.sametrials = false;
matlabbatch{6}.spm.tools.beamforming.output.plugin.image_dics.woi = [250 500];
matlabbatch{6}.spm.tools.beamforming.output.plugin.image_dics.contrast = 0;
matlabbatch{6}.spm.tools.beamforming.output.plugin.image_dics.logpower = false;
matlabbatch{6}.spm.tools.beamforming.output.plugin.image_dics.foi = [20 40];
matlabbatch{6}.spm.tools.beamforming.output.plugin.image_dics.taper = 'dpss';
matlabbatch{6}.spm.tools.beamforming.output.plugin.image_dics.result = 'singleimage';
matlabbatch{6}.spm.tools.beamforming.output.plugin.image_dics.scale = 'yes';
matlabbatch{6}.spm.tools.beamforming.output.plugin.image_dics.modality = 'EEG';
matlabbatch{7}.spm.tools.beamforming.write.BF(1) = cfg_dep('Output: BF.mat file', substruct('.','val', '{}',{6}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','BF'));
matlabbatch{7}.spm.tools.beamforming.write.plugin.nifti.normalise = 'no';
matlabbatch{7}.spm.tools.beamforming.write.plugin.nifti.space = 'mni';
