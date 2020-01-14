#USAGE: Input parameters: $1=year $2=selection $3region

#Here variables from specific selections
if [ "$2" == "VBFcateg1_SR_110" ] || [ "$2" == "VBFcateg2_SR_110" ]; then
   python plotter.py --dir ../Histos$1 --var EventCount    --sel  Btag4_$2_$3 --no-sr-namecompl --title ";EventCount;Events"                --log --no-data --leg-coords 0.38 0.60 0.85 0.93 --ymin 1e-1 --ymax 1e5 --quit --DataCond $1 --sigscale 10
   python plotter.py --dir ../Histos$1 --var HH_m          --sel  Btag4_$2_$3 --no-sr-namecompl --title ";HH invariant mass [GeV];Events"   --log --no-data --leg-coords 0.38 0.60 0.85 0.93 --ymin 1e-1 --ymax 1e5 --quit --DataCond $1 --sigscale 10     
   python plotter.py --dir ../Histos$1 --var JJ_m          --sel  Btag4_$2_$3 --no-sr-namecompl --title ";JJ invariant mass [GeV];Events"   --log --no-data --leg-coords 0.38 0.60 0.85 0.93 --ymin 1e-1 --ymax 1e5 --quit --DataCond $1 --sigscale 10      
   python plotter.py --dir ../Histos$1 --var j1j2_deltaEta --sel  Btag4_$2_$3 --no-sr-namecompl --title ";#Delta#eta(JJ);Events"            --log --no-data --leg-coords 0.38 0.60 0.85 0.93 --ymin 1e-1 --ymax 1e5 --quit --DataCond $1 --sigscale 10
   python plotter.py --dir ../Histos$1 --var JJ_j1_eta     --sel  Btag4_$2_$3 --no-sr-namecompl --title ";j1 #eta;Events"                   --log --no-data --leg-coords 0.38 0.60 0.85 0.93 --ymin 1e-1 --ymax 1e5 --quit --DataCond $1 --sigscale 10
   python plotter.py --dir ../Histos$1 --var JJ_j2_eta     --sel  Btag4_$2_$3 --no-sr-namecompl --title ";j2 #eta;Events"                   --log --no-data --leg-coords 0.38 0.60 0.85 0.93 --ymin 1e-1 --ymax 1e5 --quit --DataCond $1 --sigscale 10
   python plotter.py --dir ../Histos$1 --var IsolatedElectron_Multiplicity  --sel Btag4_$2_$3 --no-sr-namecompl --title ";IsolatedElectron_Multiplicity;Events" --log --no-data --leg-coords 0.38 0.60 0.85 0.93 --ymin 1  --ymax 1e7 --quit --DataCond $1 --sigscale 10
   python plotter.py --dir ../Histos$1 --var IsolatedMuon_Multiplicity      --sel Btag4_$2_$3 --no-sr-namecompl --title ";IsolatedMuon_Multiplicity;Events"     --log --no-data --leg-coords 0.38 0.60 0.85 0.93 --ymin 1  --ymax 1e7 --quit --DataCond $1 --sigscale 10
elif [ "$2" == "GGFcateg_SR_110" ]; then
   python plotter.py --dir ../Histos$1 --var EventCount   --sel  Btag4_$2_$3 --no-sr-namecompl --title ";EventCount;Events"                --log --no-data --leg-coords 0.38 0.60 0.85 0.93 --ymin 1  --ymax 1e5 --quit --DataCond $1 --sigscale 10
   python plotter.py --dir ../Histos$1 --var BDT3         --sel  Btag4_$2_$3 --no-sr-namecompl --title "; BDT ;Events"                     --log --log --blind-range 0 1 --leg-coords 0.38 0.60 0.85 0.93 --ymin 1. --ymax 1e5 --ratio --quit --DataCond $1 --sigscale 10
   python plotter.py --dir ../Histos$1 --var IsolatedElectron_Multiplicity  --sel Btag4_$2_$3 --no-sr-namecompl --title ";IsolatedElectron_Multiplicity;Events" --log --no-data --leg-coords 0.38 0.60 0.85 0.93 --ymin 1  --ymax 1e7 --quit --DataCond $1 --sigscale 10
   python plotter.py --dir ../Histos$1 --var IsolatedMuon_Multiplicity      --sel Btag4_$2_$3 --no-sr-namecompl --title ";IsolatedMuon_Multiplicity;Events"     --log --no-data --leg-coords 0.38 0.60 0.85 0.93 --ymin 1  --ymax 1e7 --quit --DataCond $1 --sigscale 10
elif [ "$2" == "GGFcateg_CR_210" ] || [ "$2" == "GGFcateg_CR_110" ] || [ "$2" == "GGFcateg_SR_210" ] ; then
   python plotter.py --dir ../Histos$1 --var BDT3               --sel Btag4_$2_$3 --no-sr-namecompl --title "; BDT ;Events"                         --log --leg-coords 0.38 0.60 0.85 0.93 --ymin 1. --ymax 1e7 --quit --ratio --DataCond $1 --sigscale 10
   python plotter.py --dir ../Histos$1 --var nJet_ec            --sel Btag4_$2_$3 --no-sr-namecompl --title ";Number of jets;Events"                --log --leg-coords 0.38 0.60 0.85 0.93 --ymin 1. --ymax 1e7 --quit --ratio --DataCond $1 --sigscale 10
   python plotter.py --dir ../Histos$1 --var H1_pt              --sel Btag4_$2_$3 --no-sr-namecompl --title ";Leading Higgs P_{T} [GeV];Events"     --log --leg-coords 0.38 0.60 0.85 0.93 --ymin 1. --ymax 1e7 --quit --ratio --DataCond $1 --sigscale 10
   python plotter.py --dir ../Histos$1 --var H2_pt              --sel Btag4_$2_$3 --no-sr-namecompl --title ";Subleading Higgs P_{T} [GeV];Events"  --log --leg-coords 0.38 0.60 0.85 0.93 --ymin 1. --ymax 1e7 --quit --ratio --DataCond $1 --sigscale 10
   python plotter.py --dir ../Histos$1 --var H1_m               --sel Btag4_$2_$3 --no-sr-namecompl --title ";Leading Higgs mass [GeV];Events"      --log --leg-coords 0.38 0.60 0.85 0.93 --ymin 1. --ymax 1e7 --quit --ratio --DataCond $1 --sigscale 10
   python plotter.py --dir ../Histos$1 --var H2_m               --sel Btag4_$2_$3 --no-sr-namecompl --title ";Subleading Higgs mass [GeV];Events"   --log --leg-coords 0.38 0.60 0.85 0.93 --ymin 1. --ymax 1e7 --quit --ratio --DataCond $1 --sigscale 10
   python plotter.py --dir ../Histos$1 --var HH_m               --sel Btag4_$2_$3 --no-sr-namecompl --title ";HH invariant mass [GeV];Events"       --log --leg-coords 0.38 0.60 0.85 0.93 --ymin 1. --ymax 1e7 --quit --ratio --DataCond $1 --sigscale 10      
   python plotter.py --dir ../Histos$1 --var h1h2_deltaEta      --sel Btag4_$2_$3 --no-sr-namecompl --title ";|#Delta#eta(h1,h2)|;Events"           --log --leg-coords 0.38 0.60 0.85 0.93 --ymin 1. --ymax 1e7 --quit --ratio --DataCond $1 --sigscale 10
   python plotter.py --dir ../Histos$1 --var H1_bb_deltaR       --sel Btag4_$2_$3 --no-sr-namecompl --title ";Leading Higgs #DeltaR(bb);Events"     --log --leg-coords 0.38 0.60 0.85 0.93 --ymin 1. --ymax 1e7 --quit --ratio --DataCond $1 --sigscale 10
   python plotter.py --dir ../Histos$1 --var H2_bb_deltaR       --sel Btag4_$2_$3 --no-sr-namecompl --title ";Subleading Higgs #DeltaR(bb);Events"  --log --leg-coords 0.38 0.60 0.85 0.93 --ymin 1. --ymax 1e7 --quit --ratio --DataCond $1 --sigscale 10
   python plotter.py --dir ../Histos$1 --var HH_btag_b3_bscore  --sel Btag4_$2_$3 --no-sr-namecompl --title ";Third b-tadging score;Events   "      --log --leg-coords 0.38 0.60 0.85 0.93 --ymin 1. --ymax 1e7 --quit --ratio --DataCond $1 --sigscale 10
   python plotter.py --dir ../Histos$1 --var HH_btag_b3_bres    --sel Btag4_$2_$3 --no-sr-namecompl --title ";Third resolution score;Events   "     --log --leg-coords 0.38 0.60 0.85 0.93 --ymin 1. --ymax 1e7 --quit --ratio --DataCond $1 --sigscale 10
   python plotter.py --dir ../Histos$1 --var costh_HH_b1_ggfcm  --sel Btag4_$2_$3 --no-sr-namecompl --title ";Leading b-jet cos#theta in CM;Events" --log --leg-coords 0.38 0.60 0.85 0.93 --ymin 1. --ymax 1e7 --quit --ratio --DataCond $1 --sigscale 10
   python plotter.py --dir ../Histos$1 --var EventCount         --sel Btag4_$2_$3 --no-sr-namecompl --title ";EventCount;Events"                    --log --leg-coords 0.38 0.60 0.85 0.93 --ymin 1  --ymax 1e7 --quit --ratio --DataCond $1 --sigscale 10 --tab
   python plotter.py --dir ../Histos$1 --var IsolatedElectron_Multiplicity  --sel Btag4_$2_$3 --no-sr-namecompl --title ";IsolatedElectron_Multiplicity;Events" --log --leg-coords 0.38 0.60 0.85 0.93 --ymin 1  --ymax 1e7 --quit --ratio --DataCond $1 --sigscale 10
   python plotter.py --dir ../Histos$1 --var IsolatedMuon_Multiplicity      --sel Btag4_$2_$3 --no-sr-namecompl --title ";IsolatedMuon_Multiplicity;Events"     --log --leg-coords 0.38 0.60 0.85 0.93 --ymin 1  --ymax 1e7 --quit --ratio --DataCond $1 --sigscale 10
elif [ "$2" == "VBFcateg_CR_210" ] || [ "$2" == "VBFcateg_CR_110" ] || [ "$2" == "VBFcateg1_SR_210" ] || [ "$2" == "VBFcateg2_SR_210" ] ; then
   python plotter.py --dir ../Histos$1 --var HH_m               --sel Btag4_$2_$3 --no-sr-namecompl --title ";HH invariant mass [GeV];Events"       --log --leg-coords 0.38 0.60 0.85 0.93 --ymin 1. --ymax 1e7 --quit --ratio --DataCond $1 --sigscale 10      
   python plotter.py --dir ../Histos$1 --var nJet_ec            --sel Btag4_$2_$3 --no-sr-namecompl --title ";Number of jets;Events"                --log --leg-coords 0.38 0.60 0.85 0.93 --ymin 1. --ymax 1e7 --quit --ratio --DataCond $1 --sigscale 10
   python plotter.py --dir ../Histos$1 --var JJ_m               --sel Btag4_$2_$3 --no-sr-namecompl --title ";JJ invariant mass [GeV];Events"       --log --leg-coords 0.38 0.60 0.85 0.93 --ymin 1  --ymax 1e7 --quit --ratio --DataCond $1 --sigscale 10      
   python plotter.py --dir ../Histos$1 --var j1j2_deltaEta      --sel Btag4_$2_$3 --no-sr-namecompl --title ";#Delta#eta(JJ);Events"                --log --leg-coords 0.38 0.60 0.85 0.93 --ymin 1  --ymax 1e7 --quit --ratio --DataCond $1 --sigscale 10
   python plotter.py --dir ../Histos$1 --var H1_pt              --sel Btag4_$2_$3 --no-sr-namecompl --title ";Leading Higgs P_{T} [GeV];Events"     --log --leg-coords 0.38 0.60 0.85 0.93 --ymin 1. --ymax 1e7 --quit --ratio --DataCond $1 --sigscale 10
   python plotter.py --dir ../Histos$1 --var H2_pt              --sel Btag4_$2_$3 --no-sr-namecompl --title ";Subleading Higgs P_{T} [GeV];Events"  --log --leg-coords 0.38 0.60 0.85 0.93 --ymin 1. --ymax 1e7 --quit --ratio --DataCond $1 --sigscale 10
   python plotter.py --dir ../Histos$1 --var h1h2_deltaEta      --sel Btag4_$2_$3 --no-sr-namecompl --title ";|#Delta#eta(h1,h2)|;Events"           --log --leg-coords 0.38 0.60 0.85 0.93 --ymin 1. --ymax 1e7 --quit --ratio --DataCond $1 --sigscale 10
   python plotter.py --dir ../Histos$1 --var h1h2_deltaPhi      --sel Btag4_$2_$3 --no-sr-namecompl --title ";|#Delta#phi(h1,h2)|;Events"           --log --leg-coords 0.38 0.60 0.85 0.93 --ymin 1. --ymax 1e7 --quit --ratio --DataCond $1 --sigscale 10
   python plotter.py --dir ../Histos$1 --var EventCount         --sel Btag4_$2_$3 --no-sr-namecompl --title ";EventCount;Events"                    --log --leg-coords 0.38 0.60 0.85 0.93 --ymin 1  --ymax 1e7 --quit --ratio --DataCond $1 --sigscale 10 --tab
   python plotter.py --dir ../Histos$1 --var JJ_j1_eta          --sel Btag4_$2_$3 --no-sr-namecompl --title ";j1 #eta;Events"                       --log --leg-coords 0.38 0.60 0.85 0.93 --ymin 1. --ymax 1e7 --quit --ratio --DataCond $1 --sigscale 10
   python plotter.py --dir ../Histos$1 --var JJ_j2_eta          --sel Btag4_$2_$3 --no-sr-namecompl --title ";j2 #eta;Events"                       --log --leg-coords 0.38 0.60 0.85 0.93 --ymin 1. --ymax 1e7 --quit --ratio --DataCond $1 --sigscale 10
   python plotter.py --dir ../Histos$1 --var IsolatedElectron_Multiplicity  --sel Btag4_$2_$3 --no-sr-namecompl --title ";IsolatedElectron_Multiplicity;Events" --log --leg-coords 0.38 0.60 0.85 0.93 --ymin 1  --ymax 1e7 --quit --ratio --DataCond $1 --sigscale 10
   python plotter.py --dir ../Histos$1 --var IsolatedMuon_Multiplicity      --sel Btag4_$2_$3 --no-sr-namecompl --title ";IsolatedMuon_Multiplicity;Events"     --log --leg-coords 0.38 0.60 0.85 0.93 --ymin 1  --ymax 1e7 --quit --ratio --DataCond $1 --sigscale 10
else
   python plotter.py --dir ../Histos$1 --var EventCount         --sel Btag4_$2_$3 --no-sr-namecompl --title ";EventCount;Events"                    --log --leg-coords 0.38 0.60 0.85 0.93 --ymin 1  --ymax 1e7 --quit --ratio --DataCond $1 --sigscale 10 --tab
fi