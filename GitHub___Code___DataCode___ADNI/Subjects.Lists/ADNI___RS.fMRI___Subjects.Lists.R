##############################################################################################
# 0. Loading functions
##############################################################################################
# rm(list=ls())
#=============================================================================================
# Mac
#=============================================================================================
# path_OS = "/Users/Ido/"
#============================================================================================
# Windows
#============================================================================================
# path_OS = "C:/Users/lleii/"
#============================================================================================
install_packages = function(packages, load=TRUE) {
  # load : load the packages after installation?
  for(pkg in packages) {
    if (!require(pkg, character.only = TRUE)) {
      install.packages(pkg)
    }
    
    if(load){
      library(pkg, character.only = TRUE)
    }
  }
}
install_packages(c("tidyverse", "dplyr", "clipr", "fda", "tidyr", "stringr", "readr"))
#=============================================================================================
path_Dropbox = paste0(path_OS, "Dropbox")
path_GitHub = list.files(path_Dropbox, pattern = "Github", full.names = T)
path_Rpkgs = list.files(path_GitHub, pattern = "Rpkgs", full.names = T)
Rpkgs = c("ADNIprep", "StatsR", "refineR")
Load = sapply(Rpkgs, function(y){
  list.files(paste0(path_Rpkgs, "/", y, "/R"), full.names = T) %>% walk(source) 
})
#=============================================================================================
path_Data = paste0(path_Dropbox, "/Data")
#---------------
# ADNI
#---------------
path_ADNI = list.files(path_Data, full.names = T, pattern = "ADNI")
path_ADNI_SubjectsList = path_ADNI %>% list.files(full.names=T, pattern = "Subjects")
path_ADNI_SubjectsList_Downloaded = path_ADNI_SubjectsList %>% list.files(full.names = T, pattern = "Downloaded")
path_Subjects = list.files(path_ADNI, full.names = TRUE, pattern = "Subjects.Lists") %>% 
  list.files(., full.names = TRUE) %>%
  grep("Subjects_Lists_Exported$", ., value = TRUE) %>% 
  list.files(., full.names = TRUE) %>% 
  grep("Final$", ., value = TRUE) %>% 
  list.files(., full.names = TRUE) %>% 
  grep("list.csv$", ., value  =TRUE)
# FDA
path_FD = list.files(path_ADNI, full.names = T, pattern = "Functional.Data")
path_Euclidean = list.files(path_FD, pattern = "Euclidean", full.names=TRUE)
path_FPCA = list.files(path_Euclidean, pattern = "FPCA", full.names=TRUE)
path_Combined = path_Euclidean %>% list.files(., pattern = "Combined", full.names = T)
#=============================================================================================














#=============================================================================================
# Arguements Setting
#=============================================================================================
# Error Image ID
Error_ImageID_0 = c("I952527", "I952530","I1173062", "I971099", "I1021034", "I1606245", "I1329385", "I1557905", "I1567175", "I1628478", "I1173060", "I971096", "I1021033", "I1606240", "I1329390", "I1557901", "I1567174", "I1628474")
Error_ImageID_1 = c("I1051713","I1051710","I928485","I928482","I882170","I882167","I1020140","I1020137","I996381","I996377","I1158788","I1158785","I1010737","I1010734","I1604231","I1604220","I879211","I879209","I1116736","I1116728","I994534","I994530","I1516267","I1516264","I1444304","I1444291","I992637","I992628","I1003966","I1003961","I1170567","I1170562","I1157074","I1157071","I998811","I998806")
Error_ImageID_2 = c("I1667466", "I1667469")
Exclude_ImageID = c(Error_ImageID_0, Error_ImageID_1, Error_ImageID_2)







#=============================================================================================
# Data Selection
#=============================================================================================
RS.fMRI_1.(path_Subjects.Lists_Downloaded = path_Subjects.Lists_Downloaded,
           path_Export_Subjects.Lists = NULL,
            path_Export_Rda      = path_Export_Rda,
            Subjects_QC_ADNI2GO  = Subjects_QC_ADNI2GO,
            Subjects_QC_ADNI3    = Subjects_QC_ADNI3,
            Subjects_NFQ         = Subjects_NFQ,
            Subjects_search      = Subjects_search,
            what.date            = 1,
            Include_RID        = NULL, 
            Include_ImageID    = NULL, 
            Exclude_RID          = NULL, 
            Exclude_ImageID      = Exclude_ImageID, 
            Exclude_Comments     = NULL)

































#========================================================
# File names
#========================================================
# QC
Subjects_QC_ADNI2GO  = "MAYOADIRL_MRI_IMAGEQC_12_08_15_24Jun2023"
Subjects_QC_ADNI3    = "MAYOADIRL_MRI_QUALITY_ADNI3_24Jun2023"
# NFQ
Subjects_NFQ         = "MAYOADIRL_MRI_FMRI_NFQ_04_06_22"
# Search
Subjects_Search_FMRI      = "idaSearch_6_23_2023_fMRI"
Subjects_Search_MRI      = "idaSearch_6_23_2023_MRI"
Subjects_Search = "idaSearch_6_24_2023"
Subjects_Study.Visits.Summary = "STUDYSUM_25Jun2023"
# Registry
Subjects_Registry = "REGISTRY_23Jun2023"
# Others
Subjects_BLCHANGE    = "BLCHANGE_11Jun2023"
Subjects_DX_Summary  = "DXSUM_PDXCONV_ADNIALL_11Jun2023"
Subjects_PTDEMO = "PTDEMOG_24Jun2023"
Subjects_APOE = "APOERES_21Jun2023"
# CV
Subjects_CV_ADNI2GO = "Clinician Verification/CLIELG_24Jun2023"
Subjects_CV_ADNI3 = "Clinician Verification/CLIELG_ADNI3_24Jun2023"
# ADAS
Subjects_ADAS = "ADAS_ADNIGO23_25Jun2023"
Subjects_MMSE = "MMSE_25Jun2023"
Subjects_APOE = "APOERES_21Jun2023"
#========================================================
# Other path
#========================================================
# 외장하드
path_ADNI.Unzipped.Folders = paste0(path_External.Drive_RS.fMRI, "/ADNI")

# 전처리 완료 폴더
path_Preprocessing.Completed = paste0(path_External.Drive_RS.fMRI, "/Completed")
path_Preprocessing.Error = paste0(path_External.Drive_RS.fMRI, "/Error")

path_Normalization.Pictures = paste0(path_External.Drive_RS.fMRI, "/Completed_Normalization_Pictures")
path_Normalization.Pictures_Excluding = paste0(path_External.Drive_RS.fMRI, "/Completed_Normalization_Pictures_Excluding")

path_Completed_Voxelwise.Signals_Raw = paste0(path_External.Drive_RS.fMRI, "/Completed_Voxelwise.BOLD.Signals_Raw")
path_Completed_Voxelwise.Signals_Standardization_Zscore = paste0(path_External.Drive_RS.fMRI, "/Completed_Voxelwise.BOLD.Signals_Standardization_Zscore")


# Subject 리스트
path_Subjects.Lists_Downloaded = paste0(path_OS, "Dropbox/Github/Papers___Data/Papers___Data___ADNI___RS.fMRI___Subjects.Lists/___Subjects_Lists_Downloaded")
path_Export_Subjects.Lists = paste0(path_OS, "Dropbox/Github/Papers___Data/Papers___Data___ADNI___RS.fMRI___Subjects.Lists/TEST")
path_Export_Subjects.Lists = paste0(path_Export_Subjects.Lists, "/Final")

path_All.Subjects.EPB.List.File = paste0(path_Export_Subjects.Lists, "/0.All_Subjects/[Final_Selected]_Subjects_list_EPB_(0.All_Subjects).csv")
path_All.Subjects.MT1.List.File = paste0(path_Export_Subjects.Lists, "/0.All_Subjects/[Final_Selected]_Subjects_list_MT1_(0.All_Subjects).csv")
# path_Old.All.Subjects.List.Folder = paste0(path_OS, "Dropbox/Github/Rpkgs/ADNIprep/Subjects_Lists_Exported_1/0.All_Subjects")
# path_New.All.Subjects.List.Folder = paste0(path_OS, "Dropbox/Github/Rpkgs/ADNIprep/Subjects_Lists_Exported_3/0.All_Subjects")
# Export
# path_Export_Rda       = paste0(path_OS, "Dropbox/Github/Rpkgs/Papers___Data/Data___ADNI___RS.fMRI___Subjects.Lists")






#===============================================================================
# Selection
#===============================================================================
RS.fMRI_1_Data.Selection
# 위에 어떻게 하는지 까먹어서 ADAS는 나중 데이터로 추가






#===============================================================================
# Adding ADAS
#===============================================================================
#------------------
# Load Subjects
#------------------
Subjects = read.csv(path_Subjects)



#------------------
# ADAS path
#------------------
path_ADAS = "C:/Users/lleii/Dropbox/Data/ADNI/Subjects.Lists/Subjects_Lists_Downloaded/ADAS"
path_ADAS_Files = list.files(path_ADAS, full.names = T)
basename_sans_ext(path_ADAS_Files)




#------------------
# Load ADAS
#------------------
ADNI_1_Total = read.csv(path_ADAS_Files[1])
ADNI_1 = read.csv(path_ADAS_Files[2])
ADNI_2 = read.csv(path_ADAS_Files[3])




#------------------
# Dictionary
#------------------
# RS.fMRI_0_Data.Dictionary(colname = "TOTAL11")
# Phase  FLDNAME TBLNAME                 CRFNAME                  TEXT TYPE LENGTH  CODE UNITS status
# 1 ADNIGO TOTSCORE    ADAS ADAS-Cognitive Behavior Total Score (ADAS 11)    N     10                   
# 2  ADNI2 TOTSCORE    ADAS ADAS-Cognitive Behavior Total Score (ADAS 11)    N     10                   
# 3  ADNI3 TOTSCORE    ADAS ADAS-Cognitive Behavior Total Score (ADAS 11)    N        0..70 





#------------------
# Select cols
#------------------
ADNI_1_New <- ADNI_1_Total %>%
  dplyr::select(RID, TOTAL11, VISCODE, EXAMDATE) %>%
  dplyr::arrange(RID, EXAMDATE) %>%
  dplyr::mutate(PHASE = "ADNI1") %>%
  dplyr::rename_with(~paste0("ADAS___", .), -c("RID")) %>%
  dplyr::mutate(ADAS___TOTAL11 = ifelse(ADAS___TOTAL11==-4, NA, ADAS___TOTAL11))






#------------------
# Checking data
#------------------
# min(ADNI_2_New$ADAS___TOTAL11, na.rm=T)
# min(ADNI_1_New$ADAS___TOTAL11, na.rm=T)
# 
# max(ADNI_2_New$ADAS___TOTAL11, na.rm=T)
# max(ADNI_1_New$ADAS___TOTAL11, na.rm=T)
# 
# hist(ADNI_2_New$ADAS___TOTAL11)
# hist(ADNI_1_New$ADAS___TOTAL11)




#------------------
# Select Cols
#------------------
ADNI_2_New = ADNI_2 %>%
  dplyr::select(RID, Phase, TOTSCORE, VISCODE, VISCODE2, VISDATE) %>%
  dplyr::arrange(RID, VISDATE) %>%
  dplyr::rename(PHASE = Phase) %>%
  dplyr::rename_with(~ paste0("ADAS___", . ), -c("RID")) %>% 
  dplyr::rename("ADAS___TOTAL11" := "ADAS___TOTSCORE")






#------------------
# Remove the former data from Subject
#------------------
Subjects$ADAS___TOTAL13 = Subjects$ADAS___TOTSCORE = NULL






#------------------
# Combine by Date
#------------------
RID = Subjects$RID
Subjects_ADAS = lapply(seq_along(RID), function(i){
  
  ith_RID = RID[i]

  # Subject
  ith_Sub = Subjects %>% dplyr::filter(RID == ith_RID)
  
  # ADNI 1
  ith_ADNI_1 = ADNI_1_New %>% dplyr::filter(RID == ith_RID)
  # ADNI GO23
  ith_ADNI_2 = ADNI_2_New %>% dplyr::filter(RID == ith_RID)
  
  
  #-----------------------------------------------------------------------------
  # ADNI1
  #-----------------------------------------------------------------------------
  # ADNI1에 존재? : VISCODE
  if(nrow(ith_ADNI_2) > 0  && ith_Sub$VISCODE %in% ith_ADNI_1$ADAS___VISCODE){
    
    ith_ADAS = ith_ADNI_1 %>% 
      dplyr::filter(ADAS___VISCODE == ith_Sub$VISCODE) %>% 
      dplyr::select(-RID)
    
  # ADNI2에 존재? : VISCODE2
  }else if(nrow(ith_ADNI_2) > 0 && ith_Sub$VISCODE2 %in% ith_ADNI_2$ADAS___VISCODE2){
    
    ith_ADAS = ith_ADNI_2 %>% 
      dplyr::filter(ADAS___VISCODE2 == ith_Sub$VISCODE2) %>% 
      dplyr::select(-RID)
    
  }else{
    
    ith_ADAS = ith_ADNI_2[1,] %>% 
      dplyr::select(-RID)
    
    ith_ADAS[1, ] = NA
    
    print(i)
    
  }
  
  
  ith_Combined = cbind(ith_ADAS, ith_Sub) %>% 
    dplyr::relocate(ends_with("VISCODE"), .after = "EXAMDATE_NEW") %>% 
    dplyr::relocate(ends_with("VISCODE2"), .after = "EXAMDATE_NEW") %>% 
    dplyr::relocate(ends_with("PHASE"), .after = "SUBJECT.ID") %>% 
    dplyr::relocate(ends_with("VISDATE"), .after = "EXAMDATE_NEW") %>%
    dplyr::relocate(ADAS___TOTAL11, .after = RID)
  
  if(nrow(ith_Combined) > 1){
    stop(paste0(i, "has more than 1 row"))
  }
  
  return(ith_Combined)  
}) %>% do.call(rbind, .)





#------------------
# Combine by Date
#------------------
names(Subjects_ADAS) %>% head
Only_SB_Selected = Subjects_ADAS %>% 
  dplyr::filter(NFQ___BAND.TYPE == "SB") %>% 
  dplyr::select(RID,
                SUBJECT.ID,
                DEMO___DIAGNOSIS_NEW,
                DEMO___SEX, 
                DEMO___AGE,
                DEMO___ADNIMERGE___APOE4, 
                DEMO___ADNIMERGE___PTEDUCAT,
                DEMO___MMSE___MMSCORE,
                PTDEMO___PTHAND,
                ADAS___TOTAL11,
                # DEMO___ADNIMERGE___PTMARRY
                # NFQ___BAND.TYPE,
                VISCODE2
                )
Only_SB_Selected %>% dplyr::filter(VISCODE2 == "sc") %>% dplyr::select(SUBJECT.ID)







