# this prepares the tar and ships it to EOS - do not remove this line!
python scripts/submitSkimOnTier3Trigger.py --tag=$1 --xrdcp-tar-only --do-tar --do-xrdcp-tar

#############################################################################################

##Data
python scripts/submitSkimOnTier3Trigger.py --exc skim_ntuple_triggerstudies --input inputFiles/2016NonResonantDiHiggs4BDataSets/Data.txt --cfg config/skim_2016NonResonantDiHiggs4B.cfg --tag=$1  --is-data --njobs=1000 

#######Signals
python scripts/submitSkimOnTier3Trigger.py --exc skim_ntuple_triggerstudies --input=inputFiles/2016NonResonantDiHiggs4BDataSets/GluGluToHHTo4B_node_cHHH1_TuneCUETP8M1_PSWeights_13TeV-powheg-pythia8.txt                     --puWeight=weights/2016/PUweights_2016.root   --tag=$1 --cfg=config/skim_2016NonResonantDiHiggs4B.cfg --is-signal --xs=0.010517   --njobs=10  --is-nlo-sig
python scripts/submitSkimOnTier3Trigger.py --exc skim_ntuple_triggerstudies --input=inputFiles/2016NonResonantDiHiggs4BDataSets/GluGluToHHTo4B_node_cHHH0_TuneCUETP8M1_PSWeights_13TeV-powheg-pythia8.txt                     --puWeight=weights/2016/PUweights_2016.root   --tag=$1 --cfg=config/skim_2016NonResonantDiHiggs4B.cfg --is-signal --xs=0.023618   --njobs=10  --is-nlo-sig
python scripts/submitSkimOnTier3Trigger.py --exc skim_ntuple_triggerstudies --input=inputFiles/2016NonResonantDiHiggs4BDataSets/GluGluToHHTo4B_node_cHHH2p45_TuneCUETP8M1_PSWeights_13TeV-powheg-pythia8.txt                  --puWeight=weights/2016/PUweights_2016.root   --tag=$1 --cfg=config/skim_2016NonResonantDiHiggs4B.cfg --is-signal --xs=0.004455   --njobs=10  --is-nlo-sig
python scripts/submitSkimOnTier3Trigger.py --exc skim_ntuple_triggerstudies --input=inputFiles/2016NonResonantDiHiggs4BDataSets/GluGluToHHTo4B_node_cHHH5_TuneCUETP8M1_PSWeights_13TeV-powheg-pythia8.txt                     --puWeight=weights/2016/PUweights_2016.root   --tag=$1 --cfg=config/skim_2016NonResonantDiHiggs4B.cfg --is-signal --xs=0.031072   --njobs=10  --is-nlo-sig
python scripts/submitSkimOnTier3Trigger.py --exc skim_ntuple_triggerstudies --input=inputFiles/2016NonResonantDiHiggs4BDataSets/VBF_HH_CV_1_C2V_0_C3_1_dipoleRecoilOff-TuneCUETP8M1_PSweights_13TeV-madgraph-pythia8.txt      --puWeight=weights/2016/PUweights_2016.root   --tag=$1 --cfg=config/skim_2016NonResonantDiHiggs4B.cfg --is-signal --xs=0.009169   --njobs=10
python scripts/submitSkimOnTier3Trigger.py --exc skim_ntuple_triggerstudies --input=inputFiles/2016NonResonantDiHiggs4BDataSets/VBF_HH_CV_1_C2V_1_C3_1_dipoleRecoilOff-TuneCUETP8M1_PSweights_13TeV-madgraph-pythia8.txt      --puWeight=weights/2016/PUweights_2016.root   --tag=$1 --cfg=config/skim_2016NonResonantDiHiggs4B.cfg --is-signal --xs=0.000585   --njobs=10
python scripts/submitSkimOnTier3Trigger.py --exc skim_ntuple_triggerstudies --input=inputFiles/2016NonResonantDiHiggs4BDataSets/VBF_HH_CV_1_C2V_2_C3_1_dipoleRecoilOff-TuneCUETP8M1_PSweights_13TeV-madgraph-pythia8.txt      --puWeight=weights/2016/PUweights_2016.root   --tag=$1 --cfg=config/skim_2016NonResonantDiHiggs4B.cfg --is-signal --xs=0.004823   --njobs=10
python scripts/submitSkimOnTier3Trigger.py --exc skim_ntuple_triggerstudies_resonant --yMassSelection=125 --input=inputFiles/2016NonResonantDiHiggs4BDataSets/NMSSM_XYH_bbbb_MX_300.txt                                       --puWeight=weights/2016/PUweights_2016.root   --tag=$1 --cfg=config/skim_2016NonResonantDiHiggs4B.cfg --is-signal --xs=1          --njobs=10

#####Bkgs
python scripts/submitSkimOnTier3Trigger.py --exc skim_ntuple_triggerstudies --input=inputFiles/2016NonResonantDiHiggs4BDataSets/TT_TuneCUETP8M2T4_13TeV-powheg-pythia8.txt                                                    --puWeight=weights/2016/PUweights_2016.root  --tag=$1 --cfg=config/skim_2016NonResonantDiHiggs4B.cfg  --xs=831.76     --njobs=100