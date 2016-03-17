#!/usr/bin/Rscript

library(ggplot2)

theme_white <- theme(axis.text=element_text(color='#eeeeee',size=14),axis.title=element_text(color='#eeeeee',size=18),axis.ticks=element_line(color='#eeeeee'),axis.line=element_line(color='#eeeeee'),legend.text=element_text(color='#eeeeee',size=12),legend.title=element_text(color='#eeeeee',size=14),panel.border=element_rect(color='#eeeeee'),plot.title=element_text(color='#eeeeee',size=24),panel.background=element_blank(),plot.background=element_blank(),legend.background=element_blank(),panel.grid=element_blank())
x_blank <- theme(axis.ticks=element_blank(),axis.text.x=element_blank())

samples <- structure(list(Sample = c("Tx01H", "Tx02H", "Tx03H", "Tx04H", "Tx05H", "Tx06H", 
"Tx07H", "Tx08H", "Tx09H", "Tx10H", "Chiou-14-001H", "Chiou-14-002", 
"Chiou-14-003", "Chiou-14-004", "Chiou-14-006", "Chiou-14-007", 
"Chiou-14-008", "Chiou-14-029", "Chiou-14-030H", "Chiou-14-031", 
"Chiou-14-032", "Chiou-14-033", "Chiou-14-034", "Chiou-14-044", 
"Chiou-14-046H", "Chiou-14-047", "Chiou-14-048", "Chiou-14-050H", 
"Chiou-14-065H", "Chiou-14-066", "Chiou-14-067H", "Chiou-14-069H", 
"Chiou-14-070", "Chiou-14-071", "BZ06-051H", "BZ06-053H", "BZ06-066H", 
"BZ06-068", "BZ06-147H", "BZ06-148H", "Tx01H", "Tx02H", "Tx03H", "Tx04H", "Tx05H", 
"Tx06H", "Tx07H", "Tx08H", "Tx09H", "Tx10H", "Chiou-14-001H", 
"Chiou-14-002", "Chiou-14-003", "Chiou-14-004", "Chiou-14-006", 
"Chiou-14-007", "Chiou-14-008", "Chiou-14-029", "Chiou-14-030H", 
"Chiou-14-031", "Chiou-14-032", "Chiou-14-033", "Chiou-14-034", 
"Chiou-14-044", "Chiou-14-046H", "Chiou-14-047", "Chiou-14-048", 
"Chiou-14-050H", "Chiou-14-065H", "Chiou-14-066", "Chiou-14-067H", 
"Chiou-14-069H", "Chiou-14-070", "Chiou-14-071", "BZ06-051H", 
"BZ06-053H", "BZ06-066H", "BZ06-068", "BZ06-147H", "BZ06-148H"
), Percentage = c(3.55, 0.15,0,0, 4.4, 0.63, 0, 12.91, 13.59, 9.87, 
0.02, 0, 0.07, 0.09, 0.25, 0, 0, 0.16, 1.24, 0.1, 0.02, 0.03, 
0.3, 0.03, 0.01, 0.02, 0, 2.4, 0.76, 0.09, 0.04, 0.45, 0.03, 
0, 1.59, 1.14, 4.85, 1.59, 0.05, 0.68, 96.45, 99.85, 100,100,95.6, 99.37, 
100, 87.09, 86.41, 90.13, 99.98, 100, 99.93, 99.91, 99.75, 100, 
100, 99.84, 98.76, 99.9, 99.98, 99.97, 99.7, 99.97, 99.99, 99.98, 
100, 97.6, 99.24, 99.91, 99.96, 99.55, 99.97, 100, 98.41, 98.86, 
95.15, 98.41, 99.95, 99.32), Origin = c("Captive", "Captive", "Captive", "Captive", 
"Captive", "Captive", "Captive", "Captive", "Captive", "Captive", 
"Wild", "Wild", "Wild", "Wild", "Wild", "Wild", "Wild", "Wild", 
"Wild", "Wild", "Wild", "Wild", "Wild", "Wild", "Wild", "Wild", 
"Wild", "Wild", "Wild", "Wild", "Wild", "Wild", "Wild", "Wild", 
"Wild", "Wild", "Wild", "Wild", "Wild", "Wild", "Captive", "Captive", 
"Captive", "Captive", "Captive", "Captive", "Captive", "Captive","Captive", "Captive", 
"Wild", "Wild", "Wild", "Wild", "Wild", "Wild", "Wild", "Wild", 
"Wild", "Wild", "Wild", "Wild", "Wild", "Wild", "Wild", "Wild", 
"Wild", "Wild", "Wild", "Wild", "Wild", "Wild", "Wild", "Wild", 
"Wild", "Wild", "Wild", "Wild", "Wild", "Wild"), Fraction = c("endogenous", 
"endogenous", "endogenous", "endogenous", "endogenous", "endogenous", 
"endogenous", "endogenous", "endogenous", "endogenous", "endogenous", 
"endogenous", "endogenous", "endogenous", "endogenous", "endogenous", 
"endogenous", "endogenous", "endogenous", "endogenous", "endogenous", 
"endogenous", "endogenous", "endogenous", "endogenous", "endogenous", 
"endogenous", "endogenous", "endogenous", "endogenous", "endogenous","endogenous", "endogenous", 
"endogenous", "endogenous", "endogenous", "endogenous", "endogenous", 
"endogenous", "endogenous", "exogenous", "exogenous", "exogenous", 
"exogenous", "exogenous", "exogenous", "exogenous", "exogenous", 
"exogenous", "exogenous", "exogenous", "exogenous", "exogenous", 
"exogenous", "exogenous", "exogenous", "exogenous", "exogenous", "exogenous", "exogenous", 
"exogenous", "exogenous", "exogenous", "exogenous", "exogenous", 
"exogenous", "exogenous", "exogenous", "exogenous", "exogenous", 
"exogenous", "exogenous", "exogenous", "exogenous", "exogenous", 
"exogenous", "exogenous", "exogenous", "exogenous", "exogenous"
)), .Names = c("Sample", "Percentage", "Origin", "Fraction"), row.names = c(NA, 
80L), class = "data.frame")

libraries <- structure(list(NGS.ID = c("fecalRAD-BC1-BC1", "fecalRAD-BC1-BC2", 
"fecalRAD-BC1-BC3", "fecalRAD-BC2-BC4", "fecalRAD-BC2-BC5", "fecalRAD-BC2-BC6", 
"fecalRAD-BC3-BC7", "fecalRAD-BC3-BC8", "fecalRAD-BC4-BC1", "fecalRAD-BC4-BC2", 
"fecalRAD-BC9-BC1", "fecalRAD-BC9-BC2", "fecalRAD-BC9-BC3", "fecalRAD-BC9-BC4", 
"fecalRAD-BC9-BC5", "fecalRAD-BC9-BC6", "fecalRAD-BC9-BC7", "fecalRAD-BC9-BC8", 
"fecalRAD-BC9-BC9", "fecalRAD-BC9-BC10", "fecalRAD-BC9-BC11", 
"fecalRAD-BC9-BC12", "fecalRAD-BC10-BC1", "fecalRAD-BC10-BC2", 
"fecalRAD-BC10-BC3", "fecalRAD-BC10-BC4", "fecalRAD-BC10-BC5", 
"fecalRAD-BC10-BC6", "fecalRAD-BC10-BC7", "fecalRAD-BC10-BC8", 
"fecalRAD-BC10-BC9", "fecalRAD-BC10-BC10", "fecalRAD-BC10-BC11", 
"fecalRAD-BC10-BC12"), PCR.index = c(1L, 1L, 1L, 2L, 2L, 2L, 
3L, 3L, 4L, 4L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 
1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L), Adaptor.barcode = c(1L, 
2L, 3L, 4L, 5L, 6L, 7L, 8L, 1L, 2L, 1L, 2L, 3L, 4L, 5L, 6L, 7L, 
8L, 9L, 10L, 11L, 12L, 1L, 2L, 3L, 4L, 5L, 6L, 7L, 8L, 9L, 10L, 
11L, 12L), Sample.ID = c("A01F.T002", "A02F.T005", "A03F.T007", 
"A04F.T009", "A05F.B051", "A06F.B053", "A07B.T002", "A08B.T005", 
"A09B.T007", "A10B.T009", "B01F.T001", "B02F.T002", "B03F.T007", 
"B04F.T010", "B05F.C030", "B06F.C050", "B07F.C065", "B08F.C069", 
"B09F.B066", "B10F.B148", "B11B.T001", "B12B.T010", "C01F.T001", 
"C02F.T002", "C03F.T005", "C04D.T002", "C05F.T009", "C06F.T010", 
"C07F.C050", "C08D.C050", "C09F.B051", "C10F.T005", "C11D.C069", 
"C12D.B051"), Individual.ID = c("SNPRC-14068", "SNPRC-25567", 
"SNPRC-27278", "SNPRC-27958", "BZ06-051", "BZ06-053", "SNPRC-14068", 
"SNPRC-25567", "SNPRC-27278", "SNPRC-27958", "SNPRC-13245", "SNPRC-14068", 
"SNPRC-27278", "SNPRC-28064", "Chiou-14-030", "Chiou-14-050", 
"Chiou-14-065", "Chiou-14-069", "BZ06-066", "BZ06-148", "SNPRC-13245", 
"SNPRC-28064", "SNPRC-13245", "SNPRC-14068", "SNPRC-25567", "SNPRC-14068", 
"SNPRC-27958", "SNPRC-28064", "Chiou-14-050", "Chiou-14-050", 
"BZ06-051", "SNPRC-25567", "Chiou-14-069", "BZ06-051"), Sample.type = c("feces", 
"feces", "feces", "feces", "feces", "feces", "blood", "blood", 
"blood", "blood", "feces", "feces", "feces", "feces", "feces", 
"feces", "feces", "feces", "feces", "feces", "blood", "blood", 
"feces", "feces", "feces", "feces", "feces", "feces", "feces", 
"feces", "feces", "feces", "feces", "feces"), Num.enrichment.steps = c(1L, 
1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 
1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 1L, 1L, 1L, 2L, 1L, 1L, 2L, 
2L), Run = c(1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 
2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 3L, 3L, 3L, 3L, 3L, 3L, 
3L, 3L, 3L, 3L, 3L, 3L), Pool.ID = c("1A", "1A", "1A", "1B", 
"1B", "1B", "1C", "1C", "1D", "1D", "2A", "2A", "2A", "2A", "2A", 
"2A", "2A", "2A", "2A", "2A", "2B", "2B", "3A", "3B", "3A", "3E", 
"3A", "3A", "3B", "3F", "3B", "3A", "3G", "3H"), Num.in.pool = c(3L, 
3L, 3L, 3L, 3L, 3L, 2L, 2L, 2L, 2L, 10L, 10L, 10L, 10L, 10L, 
10L, 10L, 10L, 10L, 10L, 2L, 2L, 5L, 3L, 5L, 1L, 5L, 5L, 3L, 
1L, 3L, 5L, 1L, 1L), Extraction.perc.cmyc = c(0.0015, 0.044, 
0, 0.0583, 0.0159, 0.0114, NA, NA, NA, NA, 0.0355, 0.0015, 0, 
0.0987, 0.0124, 0.024, 0.0076, 0.0045, 0.0485, 0.0068, NA, NA, 
0.0433, 0.0112, 0.0838, 1e-04, 0.174, 0.044, 0.0299, 0.0082, 
0.0333, 0.1283, 0, 0.0036), Enrichment.perc.cmyc = c(0.0679, 
0.509, 0.0638, 0.475, NA, NA, NA, NA, NA, NA, 0.1945, 0.0834, 
0.1268, 1.2538, 0.1431, 0.1081, 0.2544, 0.1788, 0.3872, 0.0907, 
NA, NA, 0.65, 0.0641, 1.7096, 0, 1.5222, 1.3862, 0.1405, 0, 0.4945, 
2.2102, 0.2447, 0.1476), Extraction.conc.16s = c(NA, NA, NA, 
NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, 
NA, NA, NA, 0.0189, 0.0163, 0.0664, 0.0084, 0.0525, 0.017, 0.0145, 
0.0013, 0.0021, 0.0166, 0.0011, 0.001), Enrichment.conc.16s = c(NA, 
NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, 
NA, NA, NA, NA, NA, 0.01, 0.0016, 0.0104, 3e-04, 0.004, 9e-04, 
0.0018, 1e-04, 8e-04, 0.0016, 2e-04, 5e-04), Enrichment.conc = c(NA, 
NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, 
NA, NA, NA, NA, NA, 0.52, 0.17, 0.737, 0.131, 0.9, 0.378, 0.131, 
0.0256, 0.073, 0.352, 0.019, 0.0296), Total.reads = c(264632L, 
2607006L, 2040002L, 4104470L, 916680L, 591734L, 2683338L, 745504L, 
2129924L, 1189390L, 4888668L, 2507424L, 2461390L, 5444582L, 619862L, 
2146392L, 1186788L, 1159910L, 1563428L, 501188L, 2216126L, 2092674L,
1781998L, 1290954L, 1871866L, 1841544L, 3116284L, 1469340L, 3570764L,
2059648L, 1816340L, 2068476L, 1541970L, 1896288L), Reads.mapped = c(9777L, 
1845690L, 14779L, 3255884L, 250325L, 141772L, 2311962L, 661916L, 
1832592L, 1058474L, 1620630L, 108815L, 26607L, 3120235L, 33908L, 
570377L, 43028L, 22910L, 566153L, 56129L, 1774660L, 1739188L, 
1167630L, 327317L, 1290396L, 159753L, 2302806L, 947423L, 1803348L, 719958L,
897355L, 1442504L, 204344L, 1008863L), Perc.mapped = c(0.0369456452734363, 0.707973054147171, 0.00724460074058751, 
0.793253209305952, 0.27307784614042, 0.239587382168339, 0.861599246908142, 
0.887877194488561, 0.860402530794526, 0.889930132252667, 0.331507478110602, 
0.0433971278890208, 0.0108097457127883, 0.573089908463129, 0.0547024982980083, 
0.265737572633517, 0.0362558435036418, 0.0197515324464829, 0.362122847998117, 
0.111991907228425, 0.800793817680042, 0.831084058004257, 0.655236425630107, 
0.253546601970326, 0.689363448024591, 0.0867494884727164, 0.7389589652291, 
0.644794941946724, 0.505031416245935, 0.349553904356473, 0.494045718312651, 
0.697375265654521, 0.13252138498155, 0.532019925243423), N.fold.enrichment = c("24.63", "16.09", "#DIV/0!", "5.84", 
"17.17", "21.02", NA, NA, NA, NA, "9.34", "28.93", "#DIV/0!", 
"5.81", "4.41", "11.07", "4.77", "4.39", "7.47", "16.47", NA, 
NA, "14.26", "19.91", "8.44", "940.00", "4.17", "15.39", "15.41", 
"43.33", "14.40", "5.45", "3,186.44", "148.13"), Notes = c("", 
"", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", 
"", "", "", "", "", "", "", "", "", "", "", "", "", "", "Enriched with intentional excess of sample material with low quantity of MBD probes", 
"", "")), .Names = c("NGS.ID", "PCR.index", "Adaptor.barcode", 
"Sample.ID", "Individual.ID", "Sample.type", "Num.enrichment.steps", 
"Run", "Pool.ID", "Num.in.pool", "Extraction.perc.cmyc", "Enrichment.perc.cmyc", 
"Extraction.conc.16s", "Enrichment.conc.16s", "Enrichment.conc", 
"Total.reads", "Reads.mapped", "Perc.mapped", "N.fold.enrichment", 
"Notes"), row.names = c(NA, -34L), class = "data.frame")

synthetic <- structure(list(Capture.ID=c("X001","X002","X003","X004","X005","X006","X007","X008","X009","X010","X011","X012","X013","X014","X015","X016","X017","X018","X019","X020","X021","X022","X023","X024","X025","X026","X027","X028","X029","X030","X031","X032","X033","X034","X035","X036","X037","X038","X039","X040","X041","X042","X043","X044","X045","X046","X047","X048","X049","X050","X051","X052","X053","X054","X055","X056","X057","X058","X059","X060","X061","X062","X063","X064","X065","X066","X067","X068","X069","X070","X071","X072","X073","X074","X075","X076","X077","X078","X079","X080","X081","X082","X083","X084","X085","X086","X087","X088","X089","X090","X091","X092","X093","X094","X095","X096","X097","X098","X099","X100","X101","X102","X103","X104","X105","X106","X107","X108","X109","X110","X111","X112","X113","X114","X115","X116","X117","X118","X119","X120"),Experiment.Set.ID=c("S01","S01","S01","S01","S01","S01","S02","S02","S02","S02","S02","S02","S03","S03","S03","S03","S04","S04","S04","S04","S05","S05","S05","S05","S06","S06","S06","S06","S07","S07","S07","S07","S08","S08","S08","S08","S08","S08","S09","S09","S10","S10","S11","S11","S11","S11","S11","S11","S12","S12","S12","S12","S13","S13","S14","S14","S14","S14","S15","S15","S16","S16","S16","S16","S16","S16","S17","S17","S17","S17","S17","S17","S18","S18","S18","S19","S19","S19","S20","S20","S20","S20","S21","S21","S21","S21","S21","S21","S22","S22","S22","S22","S23","S23","S23","S23","S24","S24","S24","S24","S25","S25","S25","S25","S25","S25","S26","S26","S26","S27","S27","S27","S27","S27","S27","S28","S28","S28","S28","S28"),gDNA.Sample.ID=c("AF01_14068B/NEB-K12","AF01_14068B/NEB-K12","AF02_14068B/NEB-K12","AF01_14068B/NEB-K12","AF01_14068B/NEB-K12","AF01_14068B/NEB-K12","NEB-K12","AF01_14068B/NEB-K12","AF03_14068B/NEB-K12","AF03_14068B/NEB-K12","AF03_14068B/NEB-K12","AF03_14068B/NEB-K12","NEB-K12","NEB-K12","NEB-K12","NEB-K12","AF04_14068B/NEB-K12","NEB-K12","NEB-K12","AF05_25567B/NEB-K12","AF04_14068B/NEB-K12","AF04_14068B/NEB-K12","X001","X006","AF04_14068B/NEB-K12","AF06_25567B/NEB-K12","AF07_25567B/NEB-K12","AF04_14068B/NEB-K12","AF04_14068B/NEB-K12","AF04_14068B/NEB-K12","AF04_14068B/NEB-K12","AF04_14068B/NEB-K12","AF08_25567B/ATCC-11303","AF08_25567B/ATCC-11303","AF08_25567B/ATCC-11303","AF08_25567B/ATCC-11303","ATCC-11303","25567B","AF08_25567B/ATCC-11303","AF08_25567B/ATCC-11303","AF09_19334L/ATCC-11303","AF09_19334L/ATCC-11303","19334L","19334L","19334L","19334L","19334L","19334L","19334L","19334L","19334L","19334L","ATCC-11303","AF10_19334L/ATCC-11303","ATCC-11303","AF11_19334L/ATCC-11303","AF12_19334L/ATCC-11303","AF13_19334L/ATCC-11303","ATCC-11303","19334L","AF14_19334L/ATCC-11303","AF14_19334L/ATCC-11303","AF14_19334L/ATCC-11303","AF14_19334L/ATCC-11303","AF14_19334L/ATCC-11303","AF14_19334L/ATCC-11303","AF14_19334L/ATCC-11303","AF14_19334L/ATCC-11303","AF14_19334L/ATCC-11303","AF14_19334L/ATCC-11303","AF14_19334L/ATCC-11303","AF14_19334L/ATCC-11303","AF14_19334L/ATCC-11303","AF14_19334L/ATCC-11303","AF14_19334L/ATCC-11303","AF15_19334L/ATCC-11303","AF15_19334L/ATCC-11303","AF15_19334L/ATCC-11303","AF15_19334L/ATCC-11303","AF15_19334L/ATCC-11303","AF15_19334L/ATCC-11303","ATCC-11303","AF14_19334L/ATCC-11303","AF14_19334L/ATCC-11303","AF14_19334L/ATCC-11303","AF15_19334L/ATCC-11303","AF15_19334L/ATCC-11303","ATCC-11303","AF15_19334L/ATCC-11303","AF15_19334L/ATCC-11303","AF14_19334L/ATCC-11303","ATCC-11303","AF15_19334L/ATCC-11303","AF15_19334L/ATCC-11303","AF15_19334L/ATCC-11303","AF15_19334L/ATCC-11303","AF15_19334L/ATCC-11303","AF15_19334L/ATCC-11303","AF16_19334L/ATCC-11303","AF17_19334L/ATCC-11303","AF15_19334L/ATCC-11303","AF16_19334L/ATCC-11303","AF17_19334L/ATCC-11303","AF15_19334L/ATCC-11303","AF16_19334L/ATCC-11303","AF15_19334L/ATCC-11303","AF15_19334L/ATCC-11303","AF15_19334L/ATCC-11303","AF15_19334L/ATCC-11303","AF17_19334L/ATCC-11303","AF17_19334L/ATCC-11303","AF17_19334L/ATCC-11303","AF17_19334L/ATCC-11303","AF17_19334L/ATCC-11303","AF16_19334L/ATCC-11303","AF18_19334L/ATCC-11303","AF18_19334L/ATCC-11303","AF18_19334L/ATCC-11303","AF18_19334L/ATCC-11303","X107"),Percent.Endogenous=c(2,2,0.2,2,2,2,0,2,50,50,50,50,0,0,0,0,2,0,0,50,2,2,51,44.1,2,5,10,2,2,2,2,2,2,2,2,2,0,100,2,2,2,2,100,100,100,100,100,100,100,100,100,100,0,50,0,0.5,2,5,0,100,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0.5,0.5,0.5,0.5,0.5,0.5,0,2,2,2,0.5,0.5,0,0.5,0.5,2,0,0.5,0.5,0.5,0.5,0.5,0.5,2,5,0.5,2,5,0.5,2,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,2,0.5,0.5,0.5,0.5,27),Amount.DNA=c("1,000.00","2,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","40.00","40.00","40.00","40.00","1,000.00","1,000.00","200.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","29.16","21.48","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","980.00","20.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","2,000.00","1,000.00","1,000.00","1,000.00","1,000.00","112.00","112.00","112.00","112.00","1,000.00","2,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","250.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","2,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","1,000.00","4,000.00","1,000.00","1,000.0","1,000.0","1,000.0","1,000.0","2.4"),Spike.in=c(NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,"CD01_cl857",NA,NA,"CD02_cl857","CD01_cl857",NA,NA,"CD01_cl857",NA,NA,NA,NA,NA,NA,"CD03_cl857","CD03_cl857","CD04_cl857","CD04_cl857",NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,"CD05_cl857","CD05_cl857","CD05_cl857","CD05_cl857",NA,NA,NA,NA,"CD06_cl857","CD06_cl857",NA,NA,NA,NA,NA,NA,NA,"CD06_cl857",NA,NA,NA,NA,NA,NA,NA,NA,"CD06_cl857","CD06_cl857",NA,NA,NA,NA,"CD07_cl857","CD07_cl857",NA,"CD07_cl857","CD07_cl857","CD07_cl857",NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA),Spike.in.amount=c("0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","500.00","0.00","0.00","500.00","2,500.00","0.00","0.00","500.00","0.00","0.00","0.00","0.00","0.00","0.00","1,000.00","500.00","500.00","500.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","1,000.00","0.00","1,000.00","1,000.00","1,000.00","1,000.00","0.00","0.00","0.00","0.00","1,000.00","1,000.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","1,000.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","40.00","40.00","0.00","0.00","0.00","0.00","20.00","20.00","0.00","20.00","20.00","20.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00","0.00"),Vol.beads=c(160,160,160,320,80,40,160,16,80,40,16,8,160,40,40,40,1,40,40,40,40,40,40,40,40,40,40,40,40,1,1,1,8,4,2,0.5,1,1,40,40,40,16,1,1,2,4,8,16,1,1,1,1,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,2.5,40,40,2.5,10,25,2.5,3.2,0.8,2.5,0.8,2.5,0.8,0.8,0.8,0.8,3.2,3.2,0.8,0.8,0.8,0.8,1.3),Vol.protein=c(16,16,16,32,8,4,16,1.6,8,4,1.6,0.8,0,0,0,32,0.1,4,4,4,4,4,4,4,4,4,4,4,4,0.1,0.1,0.1,0.8,0.4,0.2,0.05,0.1,0.1,4,4,4,1.6,0.1,0.1,0.2,0.4,0.8,1.6,0.1,0.1,0.1,0.1,4,4,4,4,4,4,4,4,4,1,4,4,4,4,4,4,0.25,0.25,0.25,0.25,1,1,1,1,1,1,1,1,1,1,1,1,4,4,4,4,1,1,1,1,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,1,2.5,0.25,0.32,0.08,0.25,0.08,0.25,0.08,0.08,0.08,0.08,0.32,0.32,0.08,0.08,0.08,0.08,0.13),Conc.NaCl=c(150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,300L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,200L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L),Total.vol=c(166.2,172.4,164,326.2,86.2,46.2,163.6,22.2,130,90,66,58,163.6,47.2,47.2,47.2,7.2,43.6,58.2,105.8,46.2,46.2,78.6,78.4,48.9,49.9,56.1,48.7,58.7,7.2,100,9.7,13,9,7,6,7.2,7.2,56.3,50.6,80,32,12.13,23.36,13.13,15.13,19.13,27.13,2.25,2.25,2.25,2.25,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,80,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40),Num.washes=c(0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,0L,6L,6L,0L,0L,0L,0L,0L,1L,0L,0L,0L,1L,1L,1L,1L,1L,1L,1L,2L,3L,1L,1L,1L,1L,1L,1L,1L,1L,1L,1L,1L,1L,1L,1L,1L,2L,3L,4L,1L,1L,1L,1L,1L,1L,1L,1L,1L,1L,1L,1L,1L,1L,1L,1L,1L,1L,1L,1L,1L,1L,1L,1L),Wash.NaCl=c(NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,150L,150L,NA,NA,NA,NA,NA,200L,NA,NA,NA,150L,200L,200L,150L,200L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,150L,200L,350L,450L,150L,150L,150L,200L,350L,450L,150L),Vol.wash=c(NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,80L,80L,NA,NA,NA,NA,NA,200L,NA,NA,NA,100L,100L,100L,100L,100L,100L,100L,100L,100L,80L,40L,80L,80L,80L,200L,80L,80L,80L,80L,80L,80L,80L,80L,100L,100L,100L,100L,100L,100L,100L,100L,100L,100L,100L,40L,100L,100L,100L,100L,100L,100L,100L,100L,100L,100L,100L,100L,100L,100L,100L,100L),Elution.method = c("150 µl 1x TE + 15 µl proK", "150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","40 µl 1x TE + 4 µl proK","150 µl 1x TE + 15 µl proK","60 µl 1x TE + 6 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","150 µl 1x TE + 15 µl proK","serial elutions","serial elutions","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","150 µl 1x TE + 15 µl proK","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl","2 M NaCl"), Misc.notes = c("","","","","","","","","","","","","","","","","","","Capture reaction tuned to 2x bind/wash buffer using 5x bind/wash buffer","","","","Serial enrichment","Serial enrichment","","","","Spike-in DNA pre-incubated with MBD2-Fc beads for 10 minutes at room temperature with rotation.","","","","","","","","","","","","","","","","","","","","","","","Capture reaction allowed to incubate for 90 min.","Capture reaction allowed to incubate for 90 min.","","","","","","","","","","","","Spike-in DNA pre-incubated with MBD2-Fc beads for 10 minutes at room temperature with rotation.","","","","","","","","","","","","","","","","","","","","","1x bind/wash buffer kept on ice during wash step","","","","","","","","","","","","","","","","","","","","","","","","1x bind/wash buffer kept on ice during wash step","","","","","","","","","","","Serial enrichment"),qpcr.cmyc=c(50.98,42.23,5.1,45.1,60.54,44.13,2.72,51.49,120.19,132,154.86,140.93,NA,NA,NA,NA,60.02,NA,NA,86.25,58.69,41.37,29.76,2.19,11.68,70,98.29,46.22,3.9,47.61,40.93,47.85,45.76,39.32,74.85,60,0,115.83,7.9,10.89,7.67,35.24,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,0.88,5.32,12.17,NA,NA,60.57,83.19,2.1,1.97,58.82,101.43,55.65,65.89,78.68,128.57,114.15,28.33,144.68,133.61,137.91,237.32,357.5,270.16,234.81,257.07,20.03,0,240,243.69,233.55,227.66,43.31,0,224.26,46.2,68.14,0,86.44,73.31,106.31,114.75,127.97,130.9,106.34,135.67,49.11,83.82,96.18,91.02,74.2,NA,139.38,101.79,124.12,98.3,138.57,128.51,137.04,113.78,141.15,60.37,92.22,68.13,77.34,170.44),qpcr.16s=c(56.74,49.32,101.77,62.7,46.75,45.74,110.93,51.28,6.43,3.18,1.86,1.76,NA,NA,NA,NA,3.18,NA,NA,0.48,29.84,56.03,15.36,8.89,10.47,18.42,9.19,37.09,3.26,4.07,11.19,1.96,41.1,28.48,13.87,16.84,73.67,0.01,6.71,10.28,9.32,38.99,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,2.59,2.19,10.08,6.01,3.21,2.88,NA,NA,19.32,12.39,0.25,0.3,18.97,5.27,16.44,21.69,17.98,3.58,2.56,0.82,4.86,4.28,6.36,30.14,24.5,17.74,33.86,44.62,2.15,3.59,8.42,10.49,20.94,66.81,12.76,14.38,45.29,8.26,3.79,7.89,7.81,4.84,3.65,3.6,40.42,28.13,8.35,5.32,40.65,8.76,13.18,50.19,6.46,NA,72.94,46.19,45.74,32.05,21.16,40,83.33,21.12,2.73,53.6,45.12,30.86,66.41,3.55),capture.yield=c(38.88,73.6,20.32,39.2,32.64,28.64,38.24,28.2,17.24,19,11.52,14.12,4.28,5.28,2.84,44.8,16.36,18.56,9.68,464,24.4,23.88,0.5,0.56,114,54.4,93.6,35.48,346.8,24.28,23.6,25.12,24.04,18.12,15.04,12.8,2.56,12.76,158.8,98.8,232.8,41.6,38.4,42.4,78.8,141.6,282.4,456,17.52,14.64,1.89,3.19,347.2,496,206.4,220.4,204.4,222.4,NA,NA,18.36,14.4,680,656,16.32,9.76,16.28,17.24,12.76,6.44,6.36,26.12,8.64,7.2,15.88,2.84,2.4,2.48,3.16,3.68,29.16,26.76,9,8.24,9.36,3.76,16.44,14.28,2.72,16.32,19.4,15.56,2.64,2.36,1.74,1.42,2.36,2.88,13.56,17.44,2.48,13.6,20.4,2.16,12.56,NA,3.2,2.68,2.72,2.24,1.96,1.48,1.08,7.84,10.4,2.72,2.42,1.78,2.05,0.55),endogenous.yield=c(19.82,31.08,1.04,17.68,19.76,12.64,1.04,14.52,20.72,25.08,17.84,19.9,NA,NA,NA,NA,9.82,NA,NA,400.2,14.32,9.88,0.15,0.01,13.32,38.08,92,16.4,13.53,11.56,9.66,12.02,11,7.12,11.26,7.68,0,14.78,12.54,10.76,17.86,14.66,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,1.95,10.88,27.06,NA,NA,11.12,11.98,14.28,12.92,9.6,9.9,9.06,11.36,10.04,8.28,7.26,7.4,12.5,9.62,21.9,6.74,8.58,6.7,7.42,9.46,5.84,0,21.6,20.08,21.86,8.56,7.12,0,6.1,7.54,13.22,0,2.28,1.73,1.85,1.63,3.02,3.77,14.42,23.66,1.22,11.4,19.62,1.97,9.32,NA,4.46,2.73,3.38,2.2,2.72,1.9,1.48,8.92,14.68,1.64,2.23,1.21,1.59,0.94),exogenous.yield=c(22.06,36.3,20.68,24.58,15.26,13.1,42.42,14.46,1.11,0.6,0.21,0.25,NA,NA,NA,NA,0.52,NA,NA,2.23,7.28,13.38,0.08,0.05,11.94,10.02,8.6,13.16,11.31,0.99,2.64,0.49,9.88,5.16,2.09,2.16,1.89,0,10.66,10.16,21.7,16.22,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,9,10.86,20.8,13.24,6.56,6.4,NA,NA,3.55,1.78,1.7,1.97,3.1,0.51,2.68,3.74,2.29,0.23,0.16,0.21,0.42,0.31,1.01,0.86,0.59,0.44,1.07,1.64,0.63,0.96,0.76,0.86,1.96,2.51,2.1,2.05,1.23,1.35,0.74,1.23,0.21,0.11,0.06,0.05,0.95,0.81,1.13,0.93,1.01,1.19,2.69,1.08,0.81,NA,2.33,1.24,1.24,0.72,0.41,0.59,0.9,1.66,0.28,1.46,1.09,0.55,1.36,0.02)),.Names=c("Capture.ID","Experiment.Set.ID","gDNA.Sample.ID","Percent.Endogenous","Amount.DNA","Spike.in","Spike.in.amount","Vol.beads","Vol.protein","Conc.NaCl","Total.vol","Num.washes","Wash.NaCl","Vol.wash","Elution.method","Misc.notes","qpcr.cmyc","qpcr.16s","capture.yield","endogenous.yield","exogenous.yield"),row.names=c(NA,-120L),class="data.frame")

ggplot(samples,aes(Sample,Percentage,fill=Fraction)) + geom_bar(stat='identity') + theme_bw() + theme_white + x_blank + ggtitle('Composition of fecal DNA extracts')

lib1 <- libraries[libraries$Run %in% 1,]
lib1$input <- c(1000, 2000, 1000, 2000, 1800, 1365, NA, NA, NA, NA)

ggplot(lib1,aes(Sample.ID,Perc.mapped*100,fill=Sample.type)) + geom_bar(stat='identity') + xlab('') + ylab('Percentage reads mapped') + theme_bw() + theme_white + theme(axis.text.x=element_text(hjust=0,angle=-45,size=8)) + scale_x_discrete(labels=lib1$Individual.ID) + scale_y_continuous(limits=c(0,100)) + scale_fill_manual(values=c('blood'='#E6222F','feces'='#84591D'),name='Sample type') + ggtitle('Library 1 mapping percentages')

ggplot(lib1,aes(input,Perc.mapped * 100)) + geom_point() + geom_smooth(method='lm',se=FALSE) + xlab('gDNA (µg)') + ylab('Percentage reads mapped') + theme_bw() + theme_white + scale_x_continuous(limits=c(1000,2000)) + scale_y_continuous(limits=c(0,100)) + ggtitle('Input gDNA vs. mapping percentage')


lib2 <- libraries[libraries$Run %in% 2,]

ggplot(lib2,aes(Sample.ID,Perc.mapped*100,fill=Sample.type)) + geom_bar(stat='identity') + xlab('') + ylab('Percentage reads mapped') + theme_bw() + theme_white + theme(axis.text.x=element_text(hjust=0,angle=-45,size=8)) + scale_x_discrete(labels=lib2$Individual.ID) + scale_y_continuous(limits=c(0,100)) + scale_fill_manual(values=c('blood'='#E6222F','feces'='#84591D'),name='Sample type') + ggtitle('Library 2 mapping percentages')

lib3 <- libraries[libraries$Run %in% 'Library C',]
lib3$number <- c(1, 2, 3, 9, 4, 5, 6, 10, 7, 8, 11, 12)
lib3 <- lib3[order(lib3$number),]
lib3 <- droplevels(lib3)
ggplot(lib3,aes(Sample.ID,Perc.mapped*100,fill=Sample.type)) + geom_bar(stat='identity') + xlab('') + ylab('Percentage reads mapped') + theme(axis.text.x=element_text(hjust=0,angle=-45,size=8)) + scale_x_discrete(labels=lib3$Individual.ID) + scale_y_continuous(limits=c(0,100)) + scale_fill_manual(values=c('blood'='#E6222F','feces'='#84591D'),name='Sample type') + ggtitle('Library 3 mapping percentages')



input <- synthetic[synthetic$Vol.beads %in% 40 & synthetic$Vol.protein %in% 4 & synthetic$Amount.DNA %in% 1000 & synthetic$Misc.notes %in% '' & !as.logical(as.numeric((gsub(',','',synthetic$Spike.in.amount)))) & synthetic$Conc.NaCl %in% 150 & synthetic$Elution.method %in% '150 µl 1x TE + 15 µl proK' & ! synthetic$gDNA.Sample.ID %in% 'AF14_19334L/ATCC-11303',]

ggplot(input,aes(Percent.Endogenous,exogenous.yield)) + geom_point() + geom_smooth(method='loess',se=FALSE) + xlab('Endogenous percentage in fDNA') + ylab('Bacterial yield (ng)') + theme_bw() + theme_white + scale_x_continuous(limits=c(0,50)) + scale_y_continuous(limits=c(0,20)) + ggtitle('Input gDNA vs. mapping percentage')


volbeads <- synthetic[with(synthetic,Percent.Endogenous %in% .5 & Total.vol %in% c(40,80) & Amount.DNA %in% 1000 & Spike.in.amount %in% 0 & Num.washes %in% 1 & Wash.NaCl %in% 150 & Vol.wash %in% c(80,100)),]




ggplot(lib3,aes(Extraction.perc.cmyc*100,Perc.mapped*100,color=as.factor(Num.enrichment.steps))) + geom_point() + geom_smooth(method='lm',se=FALSE) + xlab('Endogenous percentage in fDNA') + ylab('Percentage reads mapped') + theme_bw() + theme_white + scale_x_continuous(limits=c(0,15)) + scale_y_continuous(limits=c(0,100)) + ggtitle('Library 3: fDNA endogenous percentage vs. mapping percentage') + scale_color_discrete(name='Number of captures')


ggplot(lib3,aes(as.factor(Num.enrichment.steps),log(N.fold.enrichment))) + geom_boxplot() + geom_jitter() + xlab('Single or serial enrichment') + ylab('log(N-fold enrichment)') + theme_bw() + theme_white + scale_y_continuous(limits=c(0,10)) + ggtitle('Library 3: Effect of serial enrichments')








ggplot(libraries[libraries$Run %in% 1:2 & libraries$Sample.type %in% 'feces',],aes(Extraction.perc.cmyc * 100,Perc.mapped * 100,color=factor(Run))) + geom_point() + geom_smooth(method='lm',se=FALSE) + xlab('Host percentage in fDNA') + ylab('Percentage reads mapped') + scale_color_discrete(name='Library')


summary(lm(Perc.mapped ~ Extraction.perc.cmyc,libraries[libraries$Run %in% 1:2 & libraries$Sample.type %in% 'feces',]))




