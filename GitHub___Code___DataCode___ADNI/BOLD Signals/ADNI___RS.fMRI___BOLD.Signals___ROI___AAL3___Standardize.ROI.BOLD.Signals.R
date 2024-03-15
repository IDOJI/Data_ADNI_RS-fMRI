##############################################################################################
# Extracting ROI BOLD signals
##############################################################################################
# Clipboard_to_path()
Pipeline = "FunImgARCWSF"
#===============================================================================
path_BOLD = paste0("D:/Data___Backup/Papers___Data/ADNI___RS.fMRI___BOLD.Signals/ROI___AAL3___", Pipeline,"___Raw")
path_Files = list.files(path_BOLD , full.names=T)
path_Export = paste0("D:/Data___Backup/Papers___Data/ADNI___RS.fMRI___BOLD.Signals/ROI___AAL3___", Pipeline, "___Z.Standardization")
dir.create(path_Export, showWarnings = F)
Results = sapply(path_Files, function(ith_path, ...){
  ith_matched_string = basename(ith_path) %>% str_extract(".*(?=___Raw)")
  tictoc::tic()
  ith_BOLD.df = RS.fMRI_5_BOLD.Signals___ROI___Standardization(path_BOLD.Signals = ith_path, method = "Z")
  saveRDS(ith_BOLD.df, file = paste0(path_Export, "/", ith_matched_string, "___Z.Standardization.rds"))
  cat("\n", crayon::yellow("Exporting Standardized BOLD is done! :"), crayon::red(str_extract(ith_matched_string, "RID_\\d+")),"\n")
  tictoc::toc()
})







##############################################################################################
# Extracting ROI BOLD signals : Global
##############################################################################################
# Clipboard_to_path()
Pipeline = "FunImgARglobalCWSF"
#===============================================================================
path_BOLD = paste0("D:/Data___Backup/Papers___Data/ADNI___RS.fMRI___BOLD.Signals/ROI___AAL3___", Pipeline,"___Raw")
path_Files = list.files(path_BOLD , full.names=T)
path_Export = paste0("D:/Data___Backup/Papers___Data/ADNI___RS.fMRI___BOLD.Signals/ROI___AAL3___", Pipeline, "___Z.Standardization")
dir.create(path_Export, showWarnings = F)
Results = sapply(path_Files, function(ith_path, ...){
  ith_matched_string = basename(ith_path) %>% str_extract(".*(?=___Raw)")
  tictoc::tic()
  ith_BOLD.df = RS.fMRI_5_BOLD.Signals___ROI___Standardization(path_BOLD.Signals = ith_path, method = "Z")
  saveRDS(ith_BOLD.df, file = paste0(path_Export, "/", ith_matched_string, "___Z.Standardization.rds"))
  cat("\n", crayon::yellow("Exporting Standardized BOLD is done! :"), crayon::red(str_extract(ith_matched_string, "RID_\\d+")),"\n")
  tictoc::toc()
})


















