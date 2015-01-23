
fileName = "standardNormal.tex"
cat("\\documentclass{article}\n",
    "\\usepackage[table]{xcolor}\n",
    "\\usepackage{graphicx}\n",
    "\\usepackage{colortbl}\n",
    "\\oddsidemargin=-0.0in\n",
    "\\evensidemargin=-0.0in\n",
    "\\textwidth=6.5in\n",
    "\\topmargin=0.0in\n",
    "\\textheight=9.0in\n",
    "\\definecolor{light-gray}{gray}{0.7}",
    "\\begin{document}\n",
    "Approximation of the cumulative distribution for the standard normal distribution. \n",
    "\\includegraphics[height=3.25cm]{../img/cummulativeDist}\n\n"
    ,file=fileName,append=F)


cat("\\begin{tabular}{l|llllllllll}\n",file=fileName,append=T);
cat("     & 0.00   & 0.01   & 0.02   & 0.03   & 0.04   & 0.05   & 0.06   & 0.07   & 0.08  & 0.09 \\\\ \\hline\n",file=fileName,append=T);
for (zRow in seq(-3.4,0.0,by=0.1)) {
  st = sprintf("%3.1f",zRow);
  for (i in (0:9)) {
    p = sprintf('%05.4f',pnorm(zRow - i/100))
    st = paste(st,'&',p);
  }
  cat(paste(st,"\\\\\\arrayrulecolor{light-gray}\\hline\\arrayrulecolor{black}"),"\n",file=fileName,append=T);
}
cat("\\end{tabular}\n\n\n",file=fileName,append=T);


cat("\\clearpage\n",
    "Approximation of the cumulative distribution for the standard normal distribution. \n",
    "\\includegraphics[height=3.25cm]{../img/cummulativeDist}\n\n",
    "\\begin{tabular}{l|llllllllll}\n",file=fileName,append=T);
cat("     & 0.00   & 0.01   & 0.02   & 0.03   & 0.04   & 0.05   & 0.06   & 0.07   & 0.08  & 0.09 \\\\ \\hline\n",file=fileName,append=T);
for (zRow in seq(0.0,3.4,by=0.1)) {
  st = sprintf("%3.1f",zRow);
  for (i in (0:9)) {
    p = sprintf('%05.4f',pnorm(zRow + i/100))
    st = paste(st,'&',p);
  }
  #cat(paste(st,"\\\\"),"\n",file=fileName,append=T);
  cat(paste(st,"\\\\\\arrayrulecolor{light-gray}\\hline\\arrayrulecolor{black}"),"\n",file=fileName,append=T);
}
cat("\\end{tabular}\n",file=fileName,append=T);

cat("\\end{document}\n",file=fileName,append=T)
