


printTable = function(df1,dVals,significance,fileName)
  {
    lupe = 1
    for (d1 in df1) {

      row <- sprintf("%3d",d1)
      for (d2 in dVals)
          {
              fVal <- qf(1-significance,df1=d2,df2=d1)
              if(fVal > 1000.0) {
                  f   <- sprintf('%7.1f',fVal)
              }
              else if (fVal > 100) {
                  f   <- sprintf('%6.2f',fVal)
              }
              else if (fVal > 10) {
                  f   <- sprintf('%5.3f',fVal)
              }
              else {
                  f   <- sprintf('%05.4f',fVal)
              }

              row <- paste(row,'&',f);
          }
      lupe <- lupe + 1
      if(lupe == length(dVals)){
           cat(paste(row,"\\\\[2pt] \\arrayrulecolor{light-gray}\\hline\\arrayrulecolor{black} "),"\n",file=fileName,append=T);
         } else {
           cat(paste(row,"\\\\[2pt] \\arrayrulecolor{light-gray}\\hline\\arrayrulecolor{black} "),"\n",file=fileName,append=T);
         }
    }
  }

fileName <- "criticalF.tex"

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
    "\\rowcolors{2}{gray!25}{white}\n",
    file=fileName,append=F)

for(significance in c(0.10,0.05,0.02,0.01))
    {
        cat("Approximation of the critical values for the $F$-distribution for $\\alpha=$",
            significance,
            ". \n",
            "\\includegraphics[height=2.0cm]{../img/FDistribution}\n\n",
            "{\\fontencoding{T1}\n",
            "\\fontfamily{pcr}\n",
            "\\fontseries{m}\n",
            "\\fontshape{n}\n",
            "\\fontsize{6pt}{6pt}\n",
            "\\selectfont\n"
            ,file=fileName,append=T)


        df1 <- c(1:15,20) 
        df2 <- c(1:40,10*(5:10),120)
        criticalP <- c(0.25,0.20,0.15,0.1,0.05,0.025,0.020,0.01,0.005,0.0025,0.001,5e-04)
        row <- paste("m{18pt}","*{",length(df1)-1,"}{m{18pt}}",collapse="",sep="")
        row <- paste("\\begin{tabular}{|m{8pt}|",row,"}\\hline",collapse='',sep="")
        cat(row,"\n",file=fileName,append=T);


        row <- "df2  & df1 "
        for (degree in df1) {
            row <- paste(row,sprintf('%5.0f',degree)," & ")
        }
        row <- gsub("& $","",row,perl=TRUE)

        cat(row,"\\\\","\\hline \n",file=fileName,append=T);
        df <- 1
        while(df <= length(df2))
            {
                nextdf <- min(df + 5,length(df2));
                printTable(df2[df:nextdf],df1,significance,fileName)
                df <- nextdf+1
            }
        cat("\\end{tabular}}\n",file=fileName,append=T);
        cat("\\clearpage\n",file=fileName,append=T);
    }
cat("\\end{document}\n",file=fileName,append=T)
