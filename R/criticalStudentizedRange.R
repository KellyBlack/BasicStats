


printTable = function(df1,dVals,significance,fileName)
  {
    lupe = 1
    for (d1 in df1) {

      row <- sprintf("%3d",d1)
      for (d2 in dVals) {
        f   <- sprintf('%05.4f',qtukey(1-significance, d2, df=d1))
        row <- paste(row,'&',f);
      }
      lupe <- lupe + 1
      if(lupe == length(dVals)){
           cat(paste(row,"\\\\[12pt] \\arrayrulecolor{light-gray}\\hline\\arrayrulecolor{black} "),"\n",file=fileName,append=T);
         } else {
           cat(paste(row,"\\\\[5pt] \\arrayrulecolor{light-gray}\\hline\\arrayrulecolor{black} "),"\n",file=fileName,append=T);
         }
    }
  }

fileName <- "criticalStudentizedRange.tex"

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
    "\\begin{document}\n"
    ,file=fileName,append=F)

for(significance in c(0.10,0.05,0.02,0.01))
    {
        cat("Approximation of the critical values for the Studentized Range distribution for $\\alpha=$",
            significance,
            ". \n",
            "\\includegraphics[height=3.0cm]{../img/StudentizedDistribution}\n\n",
            "{\\fontencoding{T1}\n",
            "\\fontfamily{pcr}\n",
            "\\fontseries{m}\n",
            "\\fontshape{n}\n",
            "\\fontsize{6pt}{6pt}\n",
            "\\selectfont\n"
            ,file=fileName,append=T)


        df1 <- c(2:10,12,15,20) 
        df2 <- c(2:30,40,60,120)
        row <- paste(rep("l",length(df1)),collapse="",sep="")
        row <- paste("\\begin{tabular}{l|",row,"}",collapse='',sep="")
        cat(row,"\n",file=fileName,append=T);

        row <- "df2  & df1 "
        for (degree in df1) {
            row <- paste(row,sprintf('%5.0f',degree)," & ")
        }
        row <- gsub("& $","",row,perl=TRUE)

        cat(row,"\\\\","\n",file=fileName,append=T);
        for (df in 1:8)
            {
                if(5*df-4 == 1)
                    {
                        printTable((5*df-3):(5*df),df1,significance,fileName)
                    }
                else
                    {
                        printTable((5*df-4):(5*df),df1,significance,fileName)
                    }
                cat("\\\\","\n",file=fileName,append=T);
            }
        printTable(c(50,60,70,80,90),df1,significance,fileName)
        cat("\\\\","\n",file=fileName,append=T);
        printTable(c(100,200,300,400,1000),df1,significance,fileName)
                                        #row = "$\\infty$ "
                                        #for (p in df1) {
                                        #  z = sprintf('%05.4f',-qnorm(p))
                                        #  row = paste(row,'&',z);
                                        #}
                                        #cat(paste(row,"\\\\[5pt] \\arrayrulecolor{light-gray}\\hline\\arrayrulecolor{black} "),"\n",file=fileName,append=T);
        cat("\\end{tabular}}\n",file=fileName,append=T);
        cat("\\clearpage\n",file=fileName,append=T);
    }
cat("\\end{document}\n",file=fileName,append=T)
