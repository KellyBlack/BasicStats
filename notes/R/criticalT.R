


printTable = function(criticalP,dVals,fileName)
  {
    lupe = 1
    for (d in dVals) {

      row = sprintf("%3d",d)
      for (p in criticalP) {
        t = sprintf('%05.4f',-qt(p,df=d))
        row = paste(row,'&',t);
      }
      lupe = lupe + 1
      if(lupe == length(dVals)){
           cat(paste(row,"\\\\[12pt] \\arrayrulecolor{light-gray}\\hline\\arrayrulecolor{black} "),"\n",file=fileName,append=T);
         } else {
           cat(paste(row,"\\\\[5pt] \\arrayrulecolor{light-gray}\\hline\\arrayrulecolor{black} "),"\n",file=fileName,append=T);
         }
    }
  }


fileName = "criticalT.tex"
cat("\\documentclass{article}\n",
    "\\usepackage[table]{xcolor}\n",
    "\\usepackage{graphicx}\n",
    "\\usepackage{colortbl}\n",
    "\\oddsidemargin=-0.5in\n",
    "\\evensidemargin=-0.5in\n",
    "\\textwidth=7.5in\n",
    "\\topmargin=-1.2in\n",
    "\\textheight=10.0in\n",
    "\\definecolor{light-gray}{gray}{0.7}",
    "\\begin{document}\n",
    "Approximation of the critical values for the $t$-distribution. \n",
    "\\includegraphics[height=3.0cm]{tcummulativeDist}\n\n",
    "\\fontencoding{T1}\n",
    "\\fontfamily{pcr}\n",
    "\\fontseries{m}\n",
    "\\fontshape{n}\n",
    "\\fontsize{7pt}{7pt}\n",
    "\\selectfont\n"
    ,file=fileName,append=F)


criticalP = c(0.25,0.20,0.15,0.1,0.05,0.025,0.020,0.01,0.005,0.0025,0.001,5e-04)
row = paste(rep("l",length(criticalP)),collapse="",sep="")
row = paste("\\begin{tabular}{l|",row,"}",collapse='',sep="")
cat(row,"\n",file=fileName,append=T);

row = "df  & p="
for (p in criticalP) {
  row = paste(row,sprintf('%05.4f',p)," & ")
}
row = gsub("& $","",row,perl=TRUE)

cat(row,"\\\\\\hline","\n",file=fileName,append=T);
for (df in 1:7)
  {
    printTable(criticalP,(5*df-4):(5*df),fileName)
  }
printTable(criticalP,c(40,50,60,80,120),fileName)
row = "$\\infty$ "
for (p in criticalP) {
  z = sprintf('%05.4f',-qnorm(p))
  row = paste(row,'&',z);
}
cat(paste(row,"\\\\[5pt] \\arrayrulecolor{light-gray}\\hline\\arrayrulecolor{black} "),"\n",file=fileName,append=T);
cat("\\end{tabular}\n",file=fileName,append=T);

cat("\\end{document}\n",file=fileName,append=T)
