##################################
###                            ###
###      Joshua G. Mausolf     ###
###    Computation Institute   ###
###    University of Chicago   ###
###                            ###
##################################


##Make Year Folders

#for year in	1941	1943	1946	1947	1948	1951	1953	1955	1957	1958	1959	1960	1962	1964	1965	1966	1967	1968	1969	1970	1971	1972	1973	1974	1975	1976	1977	1978	1979	1980	1981	1982	1983	1984	1985	1986	1987	1988	1989	1990	1991	1992	1993	1994	1995	1996	1997	1998	1999	2000	2001	2002	2003	2004	2005	2006	2007	2008	2009	2010	2011	2012	2013	2014	2015 1941-2015 time_lapse
#do
#  mkdir $year
#done


##Copy Website Assets and Master_Index HTML to Year Folders

cd ..

for year in	1970	1971	1972	1982	1983	1984	1985	1986	1987	1988	1989	1990	1991	1992	1993	1994	1995	2008	2009	time_lapse
do
  #mkdir $year
  cp	-rf	4/assets	4/master_index.html	4/$year/
done

cd 4/


##Rename Master Index in Each Year Folder


for f in	1970	1971	1972	1982	1983	1984	1985	1986	1987	1988	1989	1990	1991	1992	1993	1994	1995	2008	2009	time_lapse
do
  cd $f
  mv master_index.html index.html
  echo "Renaming master index file for year $f..."
  cd ..

done

cp -f master_index.html index.html
