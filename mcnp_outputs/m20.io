          Code Name & Version = MCNP, 6.1.1b
  
     _/      _/        _/_/_/       _/      _/       _/_/_/         _/_/_/
    _/_/  _/_/      _/             _/_/    _/       _/    _/     _/       
   _/  _/  _/      _/             _/  _/  _/       _/_/_/       _/_/_/    
  _/      _/      _/             _/    _/_/       _/           _/    _/   
 _/      _/        _/_/_/       _/      _/       _/             _/_/      
  
  +---------------------------------------------------------------------+
  | Copyright 2008. Los Alamos National Security, LLC.  All rights      |
  | reserved.                                                           |
  |   This material was produced under U.S. Government contract         |
  | DE-AC52-06NA25396 for Los Alamos National Laboratory, which is      |
  | operated by Los Alamos National Security, LLC, for the U.S.         |
  | Department of Energy. The Government is granted for itself and      |
  | others acting on its behalf a paid-up, nonexclusive, irrevocable    |
  | worldwide license in this material to reproduce, prepare derivative |
  | works, and perform publicly and display publicly. Beginning five    |
  | (5) years after 2008, subject to additional five-year worldwide     |
  | renewals, the Government is granted for itself and others acting on |
  | its behalf a paid-up, nonexclusive, irrevocable worldwide license   |
  | in this material to reproduce, prepare derivative works, distribute |
  | copies to the public, perform publicly and display publicly, and to |
  | permit others to do so. NEITHER THE UNITED STATES NOR THE UNITED    |
  | STATES DEPARTMENT OF ENERGY, NOR LOS ALAMOS NATIONAL SECURITY, LLC, |
  | NOR ANY OF THEIR EMPLOYEES, MAKES ANY WARRANTY, EXPRESS OR IMPLIED, |
  | OR ASSUMES ANY LEGAL LIABILITY OR RESPONSIBILITY FOR THE ACCURACY,  |
  | COMPLETENESS, OR USEFULNESS OF ANY INFORMATION, APPARATUS, PRODUCT, |
  | OR PROCESS DISCLOSED, OR REPRESENTS THAT ITS USE WOULD NOT INFRINGE |
  | PRIVATELY OWNED RIGHTS.                                             |
  +---------------------------------------------------------------------+
  
1mcnp     version 6     ld=06/19/14                     08/05/17 17:13:59 
 *************************************************************************                 probid =  08/05/17 17:13:59 
 n=inp wwinp=wwinp tasks 20                                                      

 
  warning.  Physics models disabled.
         1-       c //-------------------------------------------------------------------------// 
         2-       c                                                                               
         3-       c sample_cargo_container.i                                                      
         4-       c                                                                               
         5-       c This is a sample cargo container MCNP input file for the DNDO project         
         6-       c HEU detection under John Santarius and Douglass Henderson. This file is to    
         7-       c be modified using the provided translations to sample various configurations  
         8-       c of detectors and HEU locations.                                               
         9-       c                                                                               
        10-       c //-----------------//                                                         
        11-       c   Modification Log                                                            
        12-       c //-----------------//                                                         
        13-       c                                                                               
        14-       c 4/12/2017 - Eli Moll                                                          
        15-       c    + Constructed initial file for scoping of uncertainty and time requirements
        16-       c                                                                               
        17-       c //-------------------------------------------------------------------------// 
        18-       c                                                                               
        19-       c                                                                               
        20-       c //-------------------------------------------------------------------------// 
        21-       c                                                                               
        22-       c                                   CELL CARDS                                  
        23-       c                                                                               
        24-       c //-------------------------------------------------------------------------// 
        25-       c                                                                               
        26-       c                                                                               
        27-       c //--- Container Cells ---//                                                   
        28-       c                                                                               
        29-        1   1  -0.001205   -1 2 10 11 12 13 14        $ Air boundary of the system     
        30-        2   3  -8.000000   -2 3                       $ Shipping container steel walls 
        31-        3   1  -0.001205   -3 4                       $ Interior of shipping container 
        32-       c                                                                               
        33-       c                                                                               
        34-       c //--- Highly Enriched Uranium Cells ---//                                     
        35-       c                                                                               
        36-        4   4  -18.72476   -4                         $ HEU sphere (~10kg -> 5cm)      
        37-       c                                                                               
        38-       c                                                                               
        39-       c //--- Tally Cells ---//                                                       
        40-       c                                                                               
        41-        10  1  -0.001205  -10                         $ NW detector (10cm x 10cm x 10cm
        42-        11  1  -0.001205  -11                         $ NE detector (10cm x 10cm x 10cm
        43-        12  1  -0.001205  -12                         $ Central detector (10cm x 10cm x
        44-        13  1  -0.001205  -13                         $ SW detector (10cm x 10cm x 10cm
        45-        14  1  -0.001205  -14                         $ SE detector (10cm x 10cm x 10cm
        46-       c                                                                               
        47-        99  0              1                          $ Graveyard                      
        48-                                                                                       
        49-       c //-------------------------------------------------------------------------// 
        50-       c                                                                               
        51-       c                                 SURFACE CARDS                                 
        52-       c                                                                               
        53-       c //-------------------------------------------------------------------------// 
        54-       c                                                                               
        55-       c                                                                               
        56-       c //--- Container Surfaces ---//                                                
        57-       c                                                                               
        58-        1 RPP -75   75    -75   75    -75   75        $ Bounding system geometry (150cm
        59-        2 RPP -52.5 52.5  -52.5 52.5  -52.5 52.5      $ Exterior bound of cargo contain
        60-        3 RPP -50   50    -50   50    -50   50        $ Interior of cargo container (10
        61-       c                                                                               
        62-       c                                                                               
        63-       c //--- Highly Enriched Uranium Surfaces ---//                                  
        64-       c                                                                               
        65-        4 1 SPH 0 0 0  6.3                              $ 5cm radius HEU sphere ~ 10kg 
        66-       c                                                                               
        67-       c *Note: Translation 1 is used for the HEU sphere such that it can be easily    
        68-       c        moved throughout the geometry without modifying the governing surface  
        69-       c        definitions.                                                           
        70-       c                                                                               
        71-       c                                                                               
        72-       c //--- Tally Surfaces ---//                                                    
        73-       c                                                                               
        74-        10 10 RPP  -5 5 -10 10 -10 10                   $ Detector 1 - (10cm x 10cm x 1
        75-        11 11 RPP  -5 5 -10 10 -10 10                   $ Detector 2 - (10cm x 10cm x 1
        76-        12 12 RPP  -5 5 -10 10 -10 10                   $ Detector 3 - (10cm x 10cm x 1
        77-        13 13 RPP  -5 5 -10 10 -10 10                   $ Detector 4 - (10cm x 10cm x 1
        78-        14 14 RPP  -5 5 -10 10 -10 10                   $ Detector 5 - (10cm x 10cm x 1
        79-       c                                                                               
        80-       c *Note: Translations (10,11,12,13,14) are used for the detectors such that     
        81-       c        they can be moved/reoriented depending on our findings on optimal      
        82-       c        locations                                                              
        83-       c                                                                               
        84-                                                                                       
        85-       c //-------------------------------------------------------------------------// 
        86-       c                                                                               
        87-       c                                   DATA CARDS                                  
        88-       c                                                                               
        89-       c //-------------------------------------------------------------------------// 
        90-       c                                                                               
        91-       c                                                                               
        92-       c //--- Run Parameters ---//                                                    
        93-       c                                                                               
        94-        MODE N                                                                         
        95-        CTME 200000                                                                    
        96-       c                                                                               
        97-       c VOID                                                                          
        98-       c NPS 10000000                                                                  
        99-       c                                                                               
       100-        IMP:N 1 8r 0                                                                   
       101-       c                                                                               
       102-        CUT:N 2e7                                     $ Cutoff particles after two seco
       103-       c                                                                               
       104-       c                                                                               
       105-       c //--- Translations ---//                                                      
       106-       c                                                                               
       107-        TR1   0 0 0                               $ Translation for HEU sphere         
       108-       c                                                                               
       109-        TR10 57.5  35  35                             $ Translation for NW detector    
       110-        TR11 57.5 -35  35                             $ Translation for NE detector    
       111-        TR12 57.5   0   0                             $ Translation for central detecto
       112-        TR13 57.5  35 -35                             $ Translation for SW detector    
       113-        TR14 57.5 -35 -35                             $ Translation for SE detector    
       114-       c                                                                               
       115-       c                                                                               
       116-       c //--- Tallies ---//                                                           
       117-       c                                                                               
       118-       c                                                                               
       119-        T0 1e7 1.2e7 1.4e7 1.6e7 1.8e7 2.0e7                   $ Time bins for all tall
       120-       c                                                                               
       121-       c Track-Length Flux Tallies                                                     
       122-       c                                                                               
       123-        F4:N  10                                      $ Track-Length tally for NW detec
       124-        F14:N 11                                      $ Track-Length tally for NE detec
       125-        F24:N 12                                      $ Track-Length tally for central 
       126-        F34:N 13                                      $ Track-Length tally for SW detec
       127-        F44:N 14                                      $ Track-Length tally for SE detec
       128-       c                                                                               
       129-       c Point Detector Tallies                                                        
       130-       c                                                                               
       131-       c F5:N  55  35  35   5                          $ Point detector for NW detector
       132-       c F15:N 55 -35  35   5                          $ Point detector for NE detector
       133-       c F25:N 55   0   0   5                          $ Point detector for central det
       134-       c F35:N 55  35 -35   5                          $ Point detector for SW detector
       135-       c F45:N 55 -35 -35   5                          $ Point detector for SE detector
       136-       c                                                                               
       137-       c                                                                               
       138-       c Source sampling verification mesh tally                                       
       139-       c                                                                               
       140-       c FMESH4:N GEOM=XYZ ORIGIN= -56 -50 -50                                         
       141-       c           IMESH=-54  IINTS=1                                                  
       142-       c           JMESH=50   JINTS=100                                                
       143-       c           KMESH=50   KINTS=100                                                
       144-       c                                                                               
       145-       c                                                                               
       146-       c //--- Source Definition ---//                                                 
       147-       c                                                                               
       148-        SDEF  POS=D1  EXT=FPOS=D2  ERG=14.1  AXS=FPOS=D3  TME=D8                       
       149-       c                                                                               
       150-        SI1 L  -55 -27 -40     -55 -40 -27            $ Position distribution          
       151-        SP1     1               1                                                      
       152-       c * added by ADVANTG                                                            
       153-       sb1    4.74245e-01 5.25755e-01                                                  
       154-       c                                                                               
       155-        DS2 S   D4              D5                    $ Dependent extent distributions 
       156-       c                                                                               
       157-        SI4 H    0   67                               $ 67cm long source               
       158-        SP4 D  0   1                                  $   - Uniform sampling           
       159-       c                                                                               
       160-        SI5 H    0   67                               $ 67cm long source               
       161-        SP5 D  0   1                                  $   - Uniform sampling           
       162-       c                                                                               
       163-        DS3 S   D6              D7                    $ Dependent axis distributions   
       164-       c                                                                               
       165-        SI6 L  0  1  0                                $ Horizontal source axis         
       166-        SP6    1                                                                       
       167-       c                                                                               
       168-        SI7 L  0  0  1                                $ Vertical source axis           
       169-        SP7    1                                                                       
       170-       c                                                                               
       171-        SI8 H    0   1e7                              $ Time is in shakes (1e-8 sec = 1
       172-        SP8    0   1                                                                   
       173-       c                                              $ Thus 100ms = 0.1s = 1e7 shakes 
       174-       c                                                                               
       175-       c //--- Material Definitions ---//                                              
       176-       c                                                                               
       177-       c *Note: Material definitions taken from the Pacific Northwest Nuclear          
       178-       c        Laboratory (PNNL) "Compendium of Material Composition Data for         
       179-       c        Radiation Transport Modeling" - Revision 1, 2011. The file can be      
       180-       c        locatd at the following URL for reference:                             
       181-       c                                                                               
       182-       c  URL: http://www.pnnl.gov/main/publications/external/technical_reports/pnnl-15
       183-       c                                                                               
       184-       c                                                                               
       185-       c Material: Air (Dry, Sea Level)                                                
       186-       c Density:  0.001205 g/cc                                                       
       187-       c                                                                               
       188-        M1     6000   0.000150                                                         
       189-               7014   0.784431                                                         
       190-               8016   0.210748                                                         
       191-              18000   0.004671                                                         
       192-       c                                                                               
       193-       c                                                                               
       194-       c Material: Water (Light, T=293K)                                               
       195-       c Density:  0.998207 g/cc                                                       
       196-       c                                                                               
       197-        M2     1001   0.666657                                                         
  warning.  material        2 is not used in the problem.
       198-               8016   0.333343                                                         
       199-       c                                                                               
       200-       c                                                                               
       201-       c Material: Steel (Stainless 304)                                               
       202-       c Density:  8.000000 g/cc                                                       
       203-       c                                                                               
       204-        M3     6000   0.001830                                                         
       205-              14000   0.009781                                                         
       206-              15031   0.000408                                                         
       207-              16000   0.000257                                                         
       208-              24000   0.200762                                                         
       209-              25055   0.010001                                                         
       210-              26000   0.690375                                                         
       211-              28000   0.086587                                                         
       212-       c                                                                               
       213-       c                                                                               
       214-       c Material: Uranium Metal (Pure U235)                                           
       215-       c Density:  18.72476 g/cc                                                       
       216-       c                                                                               
       217-        M4    92235   1.000000                                                         
       218-       c                                                                               
       219-       c * added by ADVANTG                                                            
       220-       wwp:n 5.0 j 100 j -1 0 2.174919957e-01                                          
 
  comment.  total nubar used if fissionable isotopes are present.

 surface        2.1 and surface       10.2 are the same.       10.2 will be deleted.

 surface        2.1 and surface       11.2 are the same.       11.2 will be deleted.

 surface        2.1 and surface       12.2 are the same.       12.2 will be deleted.

 surface        2.1 and surface       13.2 are the same.       13.2 will be deleted.

 surface        2.1 and surface       14.2 are the same.       14.2 will be deleted.

 surface       10.1 and surface       11.1 are the same.       11.1 will be deleted.

 surface       10.1 and surface       12.1 are the same.       12.1 will be deleted.

 surface       10.1 and surface       13.1 are the same.       13.1 will be deleted.

 surface       10.1 and surface       14.1 are the same.       14.1 will be deleted.

 surface       10.3 and surface       13.3 are the same.       13.3 will be deleted.

 surface       10.4 and surface       13.4 are the same.       13.4 will be deleted.

 surface       10.5 and surface       11.5 are the same.       11.5 will be deleted.

 surface       10.6 and surface       11.6 are the same.       11.6 will be deleted.

 surface       11.3 and surface       14.3 are the same.       14.3 will be deleted.

 surface       11.4 and surface       14.4 are the same.       14.4 will be deleted.

 surface       13.5 and surface       14.5 are the same.       14.5 will be deleted.

 surface       13.6 and surface       14.6 are the same.       14.6 will be deleted.
 
  comment.          17 surfaces were deleted for being the same as others.

 reading mesh-based weight windows from file wwinp with probid =


 
  warning.  energy of top neutron weight-window bin set to emax.
1cells                                                                                                  print table 60

                               atom        gram                                            neutron                                     
              cell      mat   density     density     volume       mass            pieces importance                                   

        1        1        1  4.98947E-05 1.20500E-03 2.19738E+06 2.64784E+03           0  1.0000E+00                                   
        2        2        3  8.76840E-02 8.00000E+00 1.57625E+05 1.26100E+06           0  1.0000E+00                                   
        3        3        1  4.98947E-05 1.20500E-03 0.00000E+00 0.00000E+00           0  1.0000E+00                                   
        4        4        4  4.79746E-02 1.87248E+01 1.04739E+03 1.96122E+04           1  1.0000E+00                                   
        5       10        1  4.98947E-05 1.20500E-03 4.00000E+03 4.82000E+00           0  1.0000E+00                                   
        6       11        1  4.98947E-05 1.20500E-03 4.00000E+03 4.82000E+00           0  1.0000E+00                                   
        7       12        1  4.98947E-05 1.20500E-03 4.00000E+03 4.82000E+00           0  1.0000E+00                                   
        8       13        1  4.98947E-05 1.20500E-03 4.00000E+03 4.82000E+00           0  1.0000E+00                                   
        9       14        1  4.98947E-05 1.20500E-03 4.00000E+03 4.82000E+00           0  1.0000E+00                                   
       10       99        0  0.00000E+00 0.00000E+00 0.00000E+00 0.00000E+00           0  0.0000E+00                                   

 total                                               2.37605E+06 1.28328E+06

    minimum source weight = 9.5101E-01    maximum source weight = 1.0543E+00

 ***************************************************
 * Random Number Generator  =                    1 *
 * Random Number Seed       =       19073486328125 *
 * Random Number Multiplier =       19073486328125 *
 * Random Number Adder      =                    0 *
 * Random Number Bits Used  =                   48 *
 * Random Number Stride     =               152917 *
 ***************************************************

 
  comment.  threading will be used when possible in portions of mcnp6.
 
  comment.  threading will be used for n/p/e table physics.
 
  comment.  threading will generally not be used for model physics.

         3 warning messages so far.
1cross-section tables                                                                                   print table 100
     XSDIR used: /home/ecmartin3/software/mcnpdata/xsdir_mcnp6.1

     table    length

                        tables from file xdata/endf71x/C/6000.710nc                                      

   6000.80c   45022  C0 ENDF71x (jlconlin)  Ref. see jlconlin (ref 09/10/2012  10:00:53)          mat 600      12/20/12
                     Energy range:   1.00000E-11  to  1.50000E+02 MeV.
                     particle-production data for protons   being expunged from   6000.80c          
                     particle-production data for deuterons being expunged from   6000.80c          
                     particle-production data for alphas    being expunged from   6000.80c          

                        tables from file xdata/endf71x/N/7014.710nc                                      

   7014.80c   67470  N14 ENDF71x (jlconlin)  Ref. see jlconlin (ref 09/10/2012  10:00:53)         mat 725      12/16/12
                     Energy range:   1.00000E-11  to  1.50000E+02 MeV.
                     particle-production data for protons   being expunged from   7014.80c          
                     particle-production data for deuterons being expunged from   7014.80c          
                     particle-production data for alphas    being expunged from   7014.80c          

                        tables from file xdata/endf71x/O/8016.710nc                                      

   8016.80c  171194  O16 ENDF71x (jlconlin)  Ref. see jlconlin (ref 09/10/2012  10:00:53)         mat 825      12/13/12
                     Energy range:   1.00000E-11  to  1.50000E+02 MeV.
                     particle-production data for protons   being expunged from   8016.80c          
                     particle-production data for deuterons being expunged from   8016.80c          
                     particle-production data for tritons   being expunged from   8016.80c          
                     particle-production data for alphas    being expunged from   8016.80c          

                        tables from file xdata/endf60                                                    

  14000.60c   51392  14-si-nat from endf/b-vi                                                     mat1400      11/25/93
                     Energy range:   1.00000E-11  to  2.00000E+01 MeV.

                        tables from file xdata/endf71x/P/15031.710nc                                     

  15031.80c   24717  P31 ENDF71x (jlconlin)  Ref. see jlconlin (ref 09/10/2012  10:00:53)         mat1525      12/13/12
                     Energy range:   1.00000E-11  to  1.50000E+02 MeV.
                     particle-production data for protons   being expunged from  15031.80c          
                     particle-production data for deuterons being expunged from  15031.80c          
                     particle-production data for alphas    being expunged from  15031.80c          

                        tables from file xdata/actia                                                     

  16000.62c   68665  16-s-0 at 293.6K from endf/b-vi.8 njoy99.50                                  mat1600      12/06/01
                     Energy range:   1.00000E-11  to  2.00000E+01 MeV.

                        tables from file xdata/rmccsa                                                    

  18000.35c    2182      endl85                                                                   (  18)       11/01/85
                     Energy range:   1.00000E-10  to  2.00000E+01 MeV.
                     temperature = 0.0000E+00 adjusted to 2.5300E-08

                        tables from file xdata/rmccs                                                     

  24000.50c   89104  njoy                                                                       (  1324)      79/06/21.
                     Energy range:   1.00000E-11  to  2.00000E+01 MeV.
  26000.55c   84136  njoy                                                                       ( 260)       10/21/82  
                     Energy range:   1.00000E-11  to  2.00000E+01 MeV.
  28000.50c   82267  njoy                                                                       (  1328)      79/06/21.
                     Energy range:   1.00000E-11  to  2.00000E+01 MeV.

                        tables from file xdata/endf71x/Mn/25055.710nc                                    

  25055.80c  393441  Mn55 ENDF71x (jlconlin)  Ref. see jlconlin (ref 09/10/2012  10:00:53)        mat2525      12/18/12
                     Energy range:   1.00000E-11  to  6.00000E+01 MeV.
                     particle-production data for protons   being expunged from  25055.80c          
                     particle-production data for deuterons being expunged from  25055.80c          
                     particle-production data for tritons   being expunged from  25055.80c          
                     particle-production data for helions   being expunged from  25055.80c          
                     particle-production data for alphas    being expunged from  25055.80c          
                     probability tables used from 1.2500E-01 to 1.0000E+00 mev.

                        tables from file xdata/endf71x/U/92235.710nc                                     

  92235.80c  680846  U235 ENDF71x (jlconlin)  Ref. see jlconlin (ref 09/total nu 10:00:53)        mat9228      12/19/12
                     Energy range:   1.00000E-11  to  2.00000E+01 MeV.
                     probability tables used from 2.2500E-03 to 2.5000E-02 mev.

  total     1760436
 
  warning.  neutron energy cutoff is below some cross-section tables.
 
  comment.  1 cross sections modified by free gas thermal treatment.

1particles and energy limits                                                                            print table 101

                         particle      maximum       smallest      largest       always        always
                         cutoff        particle      table         table         use table     use model
   particle type         energy        energy        maximum       maximum       below         above

    1  n    neutron     0.0000E+00    1.0000E+36    2.0000E+01    1.5000E+02    1.0000E+36    1.0000E+36
 
  comment.  setting up hash-based fast table search for xsec tables

 ------------------------------------------------------------------------------------------
 =====> Set up arrays for hash-based fast table search for xsec data

    number of hash bins   =     8192
    max hash table energy =  1.00000E-11
    min hash table energy =  1.50000E+02

           nuclide      ne      emin        emax     ave_bins  min_bins  max_bins
            6000.80c    1326 1.00000E-11 1.50000E+02       1.2       1.0      12.0
            7014.80c    1826 1.00000E-11 1.50000E+02       1.2       1.0      19.0
            8016.80c    2917 1.00000E-11 1.50000E+02       1.4       1.0      34.0
           14000.60c    2824 1.00000E-11 2.00000E+01       1.3       1.0      53.0
           15031.80c     995 1.00000E-11 1.50000E+02       1.1       1.0      12.0
           16000.62c   10272 1.00000E-11 2.00000E+01       2.3       1.0     100.0
           18000.35c     259 1.00000E-10 2.00000E+01       1.0       1.0       3.0
           24000.50c   11050 1.00000E-11 2.00000E+01       2.3       1.0      98.0
           25055.80c   13802 1.00000E-11 6.00000E+01       2.7       1.0     147.0
           26000.55c    6899 1.00000E-11 2.00000E+01       1.8       1.0      23.0
           28000.50c    8927 1.00000E-11 2.00000E+01       2.1       1.0     111.0
           92235.80c   76518 1.00000E-11 2.00000E+01      10.3       1.0     200.0

 ------------------------------------------------------------------------------------------


 ***********************************************************************************************************************

 dump no.    1 on file inpr     nps =           0     coll =              0     ctm =        0.00   nrn =               
  0

         4 warning messages so far.

 ***********************************************************************************************************************

 dump no.    2 on file inpr     nps =   111626390     coll =      233764949     ctm =     1200.37   nrn =       
 3495225251

 ***********************************************************************************************************************

 dump no.    3 on file inpr     nps =   223100077     coll =      467236609     ctm =     2400.76   nrn =       
 6985883794

 ***********************************************************************************************************************

 dump no.    4 on file inpr     nps =   334997550     coll =      701642939     ctm =     3601.15   nrn =      
 10490161009

 ***********************************************************************************************************************

 dump no.    5 on file inpr     nps =   446880623     coll =      935917726     ctm =     4801.44   nrn =      
 13993096208

 ***********************************************************************************************************************

 dump no.    6 on file inpr     nps =   558757447     coll =     1170214172     ctm =     6001.70   nrn =      
 17496100408

 ***********************************************************************************************************************

 dump no.    7 on file inpr     nps =   670445026     coll =     1404144380     ctm =     7201.98   nrn =      
 20993442705

 ***********************************************************************************************************************

 dump no.    8 on file inpr     nps =   783129322     coll =     1640235297     ctm =     8402.30   nrn =      
 24522773440

 ***********************************************************************************************************************

 dump no.    9 on file inpr     nps =   895756612     coll =     1876174913     ctm =     9602.56   nrn =      
 28050059494

 ***********************************************************************************************************************

 dump no.   10 on file inpr     nps =  1008055270     coll =     2111259879     ctm =    10802.98   nrn =      
 31565282171

 ***********************************************************************************************************************

 dump no.   11 on file inpr     nps =  1120675208     coll =     2347284899     ctm =    12003.23   nrn =      
 35093341102

 ***********************************************************************************************************************

 dump no.   12 on file inpr     nps =  1233315996     coll =     2583222091     ctm =    13203.50   nrn =      
 38620659435

 ***********************************************************************************************************************

 dump no.   13 on file inpr     nps =  1345447905     coll =     2818110490     ctm =    14403.77   nrn =      
 42132223244

 ***********************************************************************************************************************

 dump no.   14 on file inpr     nps =  1458068878     coll =     3054155166     ctm =    15604.07   nrn =      
 45660518692

 ***********************************************************************************************************************

 dump no.   15 on file inpr     nps =  1570722499     coll =     3290119746     ctm =    16804.34   nrn =      
 49188303071

 ***********************************************************************************************************************

 dump no.   16 on file inpr     nps =  1683383946     coll =     3526233069     ctm =    18004.64   nrn =      
 52717598155

 ***********************************************************************************************************************

 dump no.   17 on file inpr     nps =  1795463398     coll =     3760976287     ctm =    19204.87   nrn =      
 56227231953

 ***********************************************************************************************************************

 dump no.   18 on file inpr     nps =  1908152984     coll =     3996949735     ctm =    20405.29   nrn =      
 59755383818

 ***********************************************************************************************************************

 dump no.   19 on file inpr     nps =  2020842142     coll =     4233028007     ctm =    21605.64   nrn =      
 63284692608

 ***********************************************************************************************************************

 dump no.   20 on file inpr     nps =  2133006254     coll =     4467913430     ctm =    22806.13   nrn =      
 66796527406

 ***********************************************************************************************************************

 dump no.   21 on file inpr     nps =  2245641148     coll =     4703994188     ctm =    24006.50   nrn =      
 70325275510

 ***********************************************************************************************************************

 dump no.   22 on file inpr     nps =  2358267985     coll =     4939890328     ctm =    25206.77   nrn =      
 73852120400

 ***********************************************************************************************************************

 dump no.   23 on file inpr     nps =  2470370073     coll =     5174792608     ctm =    26406.97   nrn =      
 77363640096

 ***********************************************************************************************************************

 dump no.   24 on file inpr     nps =  2582932066     coll =     5410592101     ctm =    27607.23   nrn =      
 80888741056

 ***********************************************************************************************************************

 dump no.   25 on file inpr     nps =  2695570450     coll =     5646505631     ctm =    28807.61   nrn =      
 84415905708

 ***********************************************************************************************************************

 dump no.   26 on file inpr     nps =  2808228467     coll =     5882456244     ctm =    30007.84   nrn =      
 87943442718

 ***********************************************************************************************************************

 dump no.   27 on file inpr     nps =  2920282860     coll =     6117230466     ctm =    31208.17   nrn =      
 91453222177

 ***********************************************************************************************************************

 dump no.   28 on file inpr     nps =  3032909697     coll =     6353149546     ctm =    32408.50   nrn =      
 94980312025

 ***********************************************************************************************************************

 dump no.   29 on file inpr     nps =  3145556801     coll =     6589073231     ctm =    33608.76   nrn =      
 98507554101

 ***********************************************************************************************************************

 dump no.   30 on file inpr     nps =  3257715647     coll =     6823947061     ctm =    34809.07   nrn =     
 102019441527

 ***********************************************************************************************************************

 dump no.   31 on file inpr     nps =  3300377801     coll =     6913302003     ctm =    36011.09   nrn =     
 103355316893

 ***********************************************************************************************************************

 dump no.   32 on file inpr     nps =  3343104417     coll =     7002722859     ctm =    37211.97   nrn =     
 104692423405

 ***********************************************************************************************************************

 dump no.   33 on file inpr     nps =  3442936598     coll =     7211675258     ctm =    38412.21   nrn =     
 107817095976

 ***********************************************************************************************************************

 dump no.   34 on file inpr     nps =  3555523444     coll =     7447489603     ctm =    39612.51   nrn =     
 111342631513

 ***********************************************************************************************************************

 dump no.   35 on file inpr     nps =  3668116852     coll =     7683277922     ctm =    40812.78   nrn =     
 114868005183

 ***********************************************************************************************************************

 dump no.   36 on file inpr     nps =  3780751683     coll =     7919115198     ctm =    42013.11   nrn =     
 118394209899

 ***********************************************************************************************************************

 dump no.   37 on file inpr     nps =  3892858790     coll =     8153935675     ctm =    43213.45   nrn =     
 121904862652

 ***********************************************************************************************************************

 dump no.   38 on file inpr     nps =  4005462045     coll =     8389691436     ctm =    44413.76   nrn =     
 125429998286

 ***********************************************************************************************************************

 dump no.   39 on file inpr     nps =  4118101541     coll =     8625540416     ctm =    45614.14   nrn =     
 128956864111

 ***********************************************************************************************************************

 dump no.   40 on file inpr     nps =  4230256384     coll =     8860388667     ctm =    46814.45   nrn =     
 132468150589

 ***********************************************************************************************************************

 dump no.   41 on file inpr     nps =  4342853970     coll =     9096170541     ctm =    48014.74   nrn =     
 135993380379

 ***********************************************************************************************************************

 dump no.   42 on file inpr     nps =  4455450821     coll =     9331976819     ctm =    49215.12   nrn =     
 139518911308

 ***********************************************************************************************************************

 dump no.   43 on file inpr     nps =  4567546986     coll =     9566722578     ctm =    50415.45   nrn =     
 143028806682

 ***********************************************************************************************************************

 dump no.   44 on file inpr     nps =  4680127796     coll =     9802461262     ctm =    51615.78   nrn =     
 146553488409

 ***********************************************************************************************************************

 dump no.   45 on file inpr     nps =  4792696851     coll =    10038284279     ctm =    52816.07   nrn =     
 150078988585

 ***********************************************************************************************************************

 dump no.   46 on file inpr     nps =  4905274107     coll =    10274191413     ctm =    54016.45   nrn =     
 153605342595

 ***********************************************************************************************************************

 dump no.   47 on file inpr     nps =  5017414164     coll =    10509077566     ctm =    55216.83   nrn =     
 157117004228

 ***********************************************************************************************************************

 dump no.   48 on file inpr     nps =  5129985750     coll =    10744824771     ctm =    56417.20   nrn =     
 160641705441

 ***********************************************************************************************************************

 dump no.   49 on file inpr     nps =  5242589102     coll =    10980501039     ctm =    57617.49   nrn =     
 164166011338

 ***********************************************************************************************************************

 dump no.   50 on file inpr     nps =  5354642713     coll =    11215155494     ctm =    58817.81   nrn =     
 167674571452

 ***********************************************************************************************************************

 dump no.   51 on file inpr     nps =  5467196064     coll =    11450964947     ctm =    60018.09   nrn =     
 171199729668

 ***********************************************************************************************************************

 dump no.   52 on file inpr     nps =  5579766873     coll =    11686778973     ctm =    61218.43   nrn =     
 174725176901

 ***********************************************************************************************************************

 dump no.   53 on file inpr     nps =  5691834136     coll =    11921574781     ctm =    62418.70   nrn =     
 178235278723

 ***********************************************************************************************************************

 dump no.   54 on file inpr     nps =  5804418640     coll =    12157340950     ctm =    63619.07   nrn =     
 181760304445

 ***********************************************************************************************************************

 dump no.   55 on file inpr     nps =  5916975307     coll =    12393269825     ctm =    64819.32   nrn =     
 185286786760

 ***********************************************************************************************************************

 dump no.   56 on file inpr     nps =  6029576329     coll =    12629175585     ctm =    66019.69   nrn =     
 188813397711

 ***********************************************************************************************************************

 dump no.   57 on file inpr     nps =  6141549869     coll =    12863636384     ctm =    67219.94   nrn =     
 192319034147

 ***********************************************************************************************************************

 dump no.   58 on file inpr     nps =  6254111013     coll =    13099417275     ctm =    68420.23   nrn =     
 195844133443

 ***********************************************************************************************************************

 dump no.   59 on file inpr     nps =  6366702595     coll =    13335282314     ctm =    69620.53   nrn =     
 199370248082

 ***********************************************************************************************************************

 dump no.   60 on file inpr     nps =  6478786699     coll =    13570075419     ctm =    70820.80   nrn =     
 202880329564

 ***********************************************************************************************************************

 dump no.   61 on file inpr     nps =  6591357924     coll =    13805933492     ctm =    72021.08   nrn =     
 206406221434

 ***********************************************************************************************************************

 dump no.   62 on file inpr     nps =  6703933424     coll =    14041891157     ctm =    73221.40   nrn =     
 209933100302

 ***********************************************************************************************************************

 dump no.   63 on file inpr     nps =  6815501834     coll =    14275736474     ctm =    74421.77   nrn =     
 213428554267

 ***********************************************************************************************************************

 dump no.   64 on file inpr     nps =  6928072860     coll =    14511603641     ctm =    75622.18   nrn =     
 216954591913

 ***********************************************************************************************************************

 dump no.   65 on file inpr     nps =  7040683458     coll =    14747363054     ctm =    76822.54   nrn =     
 220479706282

 ***********************************************************************************************************************

 dump no.   66 on file inpr     nps =  7153220168     coll =    14983194610     ctm =    78022.96   nrn =     
 224004883786

 ***********************************************************************************************************************

 dump no.   67 on file inpr     nps =  7265235804     coll =    15217779636     ctm =    79223.36   nrn =     
 227512231337

 ***********************************************************************************************************************

 dump no.   68 on file inpr     nps =  7377816384     coll =    15453549655     ctm =    80423.64   nrn =     
 231037498819

 ***********************************************************************************************************************

 dump no.   69 on file inpr     nps =  7490435653     coll =    15689442771     ctm =    81623.96   nrn =     
 234564108337

 ***********************************************************************************************************************

 dump no.   70 on file inpr     nps =  7602609209     coll =    15924311103     ctm =    82824.32   nrn =     
 238075886023

 ***********************************************************************************************************************

 dump no.   71 on file inpr     nps =  7715205786     coll =    16160296716     ctm =    84024.65   nrn =     
 241603311871

 ***********************************************************************************************************************

 dump no.   72 on file inpr     nps =  7827819906     coll =    16396258667     ctm =    85225.00   nrn =     
 245130635804

 ***********************************************************************************************************************

 dump no.   73 on file inpr     nps =  7939926887     coll =    16631101235     ctm =    86425.36   nrn =     
 248641501882

 ***********************************************************************************************************************

 dump no.   74 on file inpr     nps =  8052594708     coll =    16866858035     ctm =    87625.77   nrn =     
 252167257443

 ***********************************************************************************************************************

 dump no.   75 on file inpr     nps =  8165107799     coll =    17102370588     ctm =    88826.11   nrn =     
 255689082769

 ***********************************************************************************************************************

 dump no.   76 on file inpr     nps =  8277754227     coll =    17338319109     ctm =    90026.37   nrn =     
 259216592524

 ***********************************************************************************************************************

 dump no.   77 on file inpr     nps =  8389701848     coll =    17572900934     ctm =    91226.72   nrn =     
 262723152809

 ***********************************************************************************************************************

 dump no.   78 on file inpr     nps =  8502279400     coll =    17808779975     ctm =    92426.98   nrn =     
 266249339583

 ***********************************************************************************************************************

 dump no.   79 on file inpr     nps =  8614910443     coll =    18044724557     ctm =    93627.30   nrn =     
 269776657811

 ***********************************************************************************************************************

 dump no.   80 on file inpr     nps =  8727043261     coll =    18279480764     ctm =    94827.63   nrn =     
 273286783205

 ***********************************************************************************************************************

 dump no.   81 on file inpr     nps =  8839650831     coll =    18515269845     ctm =    96027.90   nrn =     
 276812241443

 ***********************************************************************************************************************

 dump no.   82 on file inpr     nps =  8952247702     coll =    18751104758     ctm =    97228.19   nrn =     
 280338360703

 ***********************************************************************************************************************

 dump no.   83 on file inpr     nps =  9064376966     coll =    18986005727     ctm =    98428.54   nrn =     
 283850023254

 ***********************************************************************************************************************

 dump no.   84 on file inpr     nps =  9176956589     coll =    19221825452     ctm =    99628.86   nrn =     
 287375612150
 warning.  no reaction mt found. collision resampled. zaid =  92235.80c
 nps =  9257124366     nrn =                 352 erg = 1.2333E-01                     

 ***********************************************************************************************************************

 dump no.   85 on file inpr     nps =  9289550374     coll =    19457670898     ctm =   100829.21   nrn =     
 290901551800

 ***********************************************************************************************************************

 dump no.   86 on file inpr     nps =  9402153369     coll =    19693407076     ctm =   102029.55   nrn =     
 294426481738

 ***********************************************************************************************************************

 dump no.   87 on file inpr     nps =  9514214222     coll =    19928180597     ctm =   103229.85   nrn =     
 297936229799

 ***********************************************************************************************************************

 dump no.   88 on file inpr     nps =  9626786126     coll =    20163993302     ctm =   104430.23   nrn =     
 301461618381

 ***********************************************************************************************************************

 dump no.   89 on file inpr     nps =  9739370318     coll =    20399877959     ctm =   105630.52   nrn =     
 304987897861

 ***********************************************************************************************************************

 dump no.   90 on file inpr     nps =  9851390798     coll =    20634641773     ctm =   106830.83   nrn =     
 308497015328

 ***********************************************************************************************************************

 dump no.   91 on file inpr     nps =  9963977310     coll =    20870472244     ctm =   108031.14   nrn =     
 312022759148

 ***********************************************************************************************************************

 dump no.   92 on file inpr     nps = 10076568708     coll =    21106289152     ctm =   109231.38   nrn =     
 315548383229

 ***********************************************************************************************************************

 dump no.   93 on file inpr     nps = 10188746653     coll =    21341219604     ctm =   110431.69   nrn =     
 319060888265

 ***********************************************************************************************************************

 dump no.   94 on file inpr     nps = 10301358032     coll =    21577043630     ctm =   111632.03   nrn =     
 322586775566

 ***********************************************************************************************************************

 dump no.   95 on file inpr     nps = 10413939004     coll =    21812836262     ctm =   112832.27   nrn =     
 326112041469

 ***********************************************************************************************************************

 dump no.   96 on file inpr     nps = 10526570830     coll =    22048737126     ctm =   114032.52   nrn =     
 329638971630

 ***********************************************************************************************************************

 dump no.   97 on file inpr     nps = 10638675650     coll =    22283508530     ctm =   115232.78   nrn =     
 333149153423

 ***********************************************************************************************************************

 dump no.   98 on file inpr     nps = 10750768166     coll =    22518344269     ctm =   116433.20   nrn =     
 336659775523

 ***********************************************************************************************************************

 dump no.   99 on file inpr     nps = 10863365244     coll =    22754056407     ctm =   117633.51   nrn =     
 340184329888

 ***********************************************************************************************************************

 dump no.  100 on file inpr     nps = 10975410600     coll =    22988745818     ctm =   118833.80   nrn =     
 343692926708

 ***********************************************************************************************************************

 dump no.  101 on file inpr     nps = 11088002301     coll =    23224710193     ctm =   120034.13   nrn =     
 347219993613

 ***********************************************************************************************************************

 dump no.  102 on file inpr     nps = 11200595541     coll =    23460487216     ctm =   121234.41   nrn =     
 350745287487

 ***********************************************************************************************************************

 dump no.  103 on file inpr     nps = 11312668599     coll =    23695197811     ctm =   122434.66   nrn =     
 354254490009

 ***********************************************************************************************************************

 dump no.  104 on file inpr     nps = 11425284845     coll =    23931170947     ctm =   123635.01   nrn =     
 357781788406

 ***********************************************************************************************************************

 dump no.  105 on file inpr     nps = 11537874920     coll =    24166998952     ctm =   124835.27   nrn =     
 361307585164

 ***********************************************************************************************************************

 dump no.  106 on file inpr     nps = 11650532080     coll =    24402904901     ctm =   126035.59   nrn =     
 364834675259

 ***********************************************************************************************************************

 dump no.  107 on file inpr     nps = 11762596340     coll =    24637601745     ctm =   127235.86   nrn =     
 368343577438

 ***********************************************************************************************************************

 dump no.  108 on file inpr     nps = 11875199278     coll =    24873531508     ctm =   128436.12   nrn =     
 371870648323

 ***********************************************************************************************************************

 dump no.  109 on file inpr     nps = 11987841752     coll =    25109445256     ctm =   129636.47   nrn =     
 375397722086

 ***********************************************************************************************************************

 dump no.  110 on file inpr     nps = 12099870911     coll =    25344152062     ctm =   130836.88   nrn =     
 378906389609

 ***********************************************************************************************************************

 dump no.  111 on file inpr     nps = 12212490273     coll =    25579983030     ctm =   132037.14   nrn =     
 382432528504

 ***********************************************************************************************************************

 dump no.  112 on file inpr     nps = 12325078815     coll =    25815859172     ctm =   133237.48   nrn =     
 385958823881

 ***********************************************************************************************************************

 dump no.  113 on file inpr     nps = 12437243582     coll =    26050715290     ctm =   134437.83   nrn =     
 389470601643

 ***********************************************************************************************************************

 dump no.  114 on file inpr     nps = 12549872941     coll =    26286785387     ctm =   135638.17   nrn =     
 392999199545

 ***********************************************************************************************************************

 dump no.  115 on file inpr     nps = 12662522376     coll =    26522713908     ctm =   136838.46   nrn =     
 396526489895

 ***********************************************************************************************************************

 dump no.  116 on file inpr     nps = 12775222530     coll =    26758639311     ctm =   138038.84   nrn =     
 400054281556

 ***********************************************************************************************************************

 dump no.  117 on file inpr     nps = 12887069958     coll =    26992919255     ctm =   139239.20   nrn =     
 403556873417

 ***********************************************************************************************************************

 dump no.  118 on file inpr     nps = 12999693012     coll =    27228883468     ctm =   140439.46   nrn =     
 407084272216

 ***********************************************************************************************************************

 dump no.  119 on file inpr     nps = 13112333028     coll =    27464731340     ctm =   141639.80   nrn =     
 410610518481

 ***********************************************************************************************************************

 dump no.  120 on file inpr     nps = 13224459589     coll =    27699610749     ctm =   142840.08   nrn =     
 414122002228

 ***********************************************************************************************************************

 dump no.  121 on file inpr     nps = 13337083159     coll =    27935561353     ctm =   144040.37   nrn =     
 417649429379

 ***********************************************************************************************************************

 dump no.  122 on file inpr     nps = 13449725245     coll =    28171491033     ctm =   145240.68   nrn =     
 421176601755

 ***********************************************************************************************************************

 dump no.  123 on file inpr     nps = 13561811851     coll =    28406113208     ctm =   146441.02   nrn =     
 424684900457

 ***********************************************************************************************************************

 dump no.  124 on file inpr     nps = 13674445120     coll =    28642129690     ctm =   147641.38   nrn =     
 428212957058

 ***********************************************************************************************************************

 dump no.  125 on file inpr     nps = 13787064061     coll =    28878159885     ctm =   148841.75   nrn =     
 431740935062

 ***********************************************************************************************************************

 dump no.  126 on file inpr     nps = 13899690717     coll =    29114103023     ctm =   150042.04   nrn =     
 435268227132

 ***********************************************************************************************************************

 dump no.  127 on file inpr     nps = 14011505062     coll =    29348397961     ctm =   151242.41   nrn =     
 438770485631

 ***********************************************************************************************************************

 dump no.  128 on file inpr     nps = 14124093542     coll =    29584300196     ctm =   152442.81   nrn =     
 442297065961

 ***********************************************************************************************************************

 dump no.  129 on file inpr     nps = 14236703638     coll =    29820268682     ctm =   153643.21   nrn =     
 445824468797

 ***********************************************************************************************************************

 dump no.  130 on file inpr     nps = 14348773334     coll =    30054898842     ctm =   154843.61   nrn =     
 449332795976

 ***********************************************************************************************************************

 dump no.  131 on file inpr     nps = 14461364902     coll =    30290839792     ctm =   156043.99   nrn =     
 452859674269

 ***********************************************************************************************************************

 dump no.  132 on file inpr     nps = 14573944118     coll =    30526588837     ctm =   157244.21   nrn =     
 456384612208

 ***********************************************************************************************************************

 dump no.  133 on file inpr     nps = 14686033104     coll =    30761257075     ctm =   158444.62   nrn =     
 459893547901

 ***********************************************************************************************************************

 dump no.  134 on file inpr     nps = 14798590704     coll =    30996965814     ctm =   159644.91   nrn =     
 463417711156

 ***********************************************************************************************************************

 dump no.  135 on file inpr     nps = 14911160224     coll =    31232807839     ctm =   160845.21   nrn =     
 466943440086

 ***********************************************************************************************************************

 dump no.  136 on file inpr     nps = 15023753644     coll =    31468722000     ctm =   162045.50   nrn =     
 470470261135

 ***********************************************************************************************************************

 dump no.  137 on file inpr     nps = 15135276379     coll =    31702394871     ctm =   163245.83   nrn =     
 473963581254

 ***********************************************************************************************************************

 dump no.  138 on file inpr     nps = 15247852804     coll =    31938067825     ctm =   164446.14   nrn =     
 477487593838

 ***********************************************************************************************************************

 dump no.  139 on file inpr     nps = 15360481759     coll =    32173810415     ctm =   165646.43   nrn =     
 481012744676

 ***********************************************************************************************************************

 dump no.  140 on file inpr     nps = 15472509709     coll =    32408515702     ctm =   166846.77   nrn =     
 484521325226

 ***********************************************************************************************************************

 dump no.  141 on file inpr     nps = 15585092314     coll =    32644297085     ctm =   168047.01   nrn =     
 488046511833

 ***********************************************************************************************************************

 dump no.  142 on file inpr     nps = 15697671829     coll =    32880120740     ctm =   169247.28   nrn =     
 491572174818

 ***********************************************************************************************************************

 dump no.  143 on file inpr     nps = 15809825115     coll =    33115141910     ctm =   170447.58   nrn =     
 495085389378

 ***********************************************************************************************************************

 dump no.  144 on file inpr     nps = 15922441671     coll =    33350994481     ctm =   171647.99   nrn =     
 498611834409

 ***********************************************************************************************************************

 dump no.  145 on file inpr     nps = 16035035305     coll =    33586814735     ctm =   172848.29   nrn =     
 502137570072

 ***********************************************************************************************************************

 dump no.  146 on file inpr     nps = 16147664497     coll =    33822550854     ctm =   174048.66   nrn =     
 505662694588

 ***********************************************************************************************************************

 dump no.  147 on file inpr     nps = 16259730945     coll =    34057351495     ctm =   175248.97   nrn =     
 509172840310

 ***********************************************************************************************************************

 dump no.  148 on file inpr     nps = 16372219451     coll =    34292952062     ctm =   176449.29   nrn =     
 512695251980

 ***********************************************************************************************************************

 dump no.  149 on file inpr     nps = 16484799171     coll =    34528840181     ctm =   177649.69   nrn =     
 516221574764

 ***********************************************************************************************************************

 dump no.  150 on file inpr     nps = 16596828515     coll =    34763447166     ctm =   178850.07   nrn =     
 519729166711

 ***********************************************************************************************************************

 dump no.  151 on file inpr     nps = 16709312383     coll =    34999001960     ctm =   180050.35   nrn =     
 523251124322

 ***********************************************************************************************************************

 dump no.  152 on file inpr     nps = 16821889216     coll =    35234584991     ctm =   181250.70   nrn =     
 526774275025

 ***********************************************************************************************************************

 dump no.  153 on file inpr     nps = 16932302990     coll =    35465869342     ctm =   182450.96   nrn =     
 530232205043

 ***********************************************************************************************************************

 dump no.  154 on file inpr     nps = 17044901262     coll =    35701569892     ctm =   183651.26   nrn =     
 533756680941

 ***********************************************************************************************************************

 dump no.  155 on file inpr     nps = 17157488712     coll =    35937282768     ctm =   184851.61   nrn =     
 537281244197

 ***********************************************************************************************************************

 dump no.  156 on file inpr     nps = 17270094556     coll =    36173239087     ctm =   186052.02   nrn =     
 540808301908

 ***********************************************************************************************************************

 dump no.  157 on file inpr     nps = 17382057134     coll =    36407729288     ctm =   187252.43   nrn =     
 544317620103

 ***********************************************************************************************************************

 dump no.  158 on file inpr     nps = 17494636965     coll =    36643469573     ctm =   188452.82   nrn =     
 547842491551

 ***********************************************************************************************************************

 dump no.  159 on file inpr     nps = 17607224531     coll =    36879264341     ctm =   189653.15   nrn =     
 551367771205

 ***********************************************************************************************************************

 dump no.  160 on file inpr     nps = 17719307775     coll =    37114059885     ctm =   190853.46   nrn =     
 554878022039

 ***********************************************************************************************************************

 dump no.  161 on file inpr     nps = 17831863975     coll =    37349844467     ctm =   192053.73   nrn =     
 558403139287

 ***********************************************************************************************************************

 dump no.  162 on file inpr     nps = 17944465464     coll =    37585586898     ctm =   193254.14   nrn =     
 561928112179

 ***********************************************************************************************************************

 dump no.  163 on file inpr     nps = 18056531691     coll =    37820403959     ctm =   194454.57   nrn =     
 565438385535

 ***********************************************************************************************************************

 dump no.  164 on file inpr     nps = 18169105334     coll =    38056273379     ctm =   195654.96   nrn =     
 568964397805

 ***********************************************************************************************************************

 dump no.  165 on file inpr     nps = 18281675883     coll =    38292038775     ctm =   196855.28   nrn =     
 572489361110

 ***********************************************************************************************************************

 dump no.  166 on file inpr     nps = 18394294389     coll =    38527823017     ctm =   198055.69   nrn =     
 576015003981

 ***********************************************************************************************************************

 dump no.  167 on file inpr     nps = 18506416308     coll =    38762684152     ctm =   199255.97   nrn =     
 579526166453
1problem summary                                                                                                           

      run terminated when it had used*****  minutes of computer time.
+                                                                                                    08/06/17 01:34:11 
      c //-------------------------------------------------------------------------//      probid =  08/05/17 17:13:59 

 neutron creation    tracks      weight        energy            neutron loss        tracks      weight        energy
                                 (per source particle)                                           (per source particle)

 source         18576189131    1.0000E+00    1.4100E+01          escape         30393611687    1.0431E+00    1.0611E+01
 nucl. interaction        0    0.            0.                  energy cutoff            0    0.            0.        
 particle decay           0    0.            0.                  time cutoff        3547138    9.0853E-05    4.6141E-05
 weight window  11334152332    1.8842E-02    8.2542E-02          weight window   2045682937    1.8844E-02    8.2544E-02
 cell importance          0    0.            0.                  cell importance          0    0.            0.        
 weight cutoff            0    0.            0.                  weight cutoff            0    0.            0.        
 e or t importance        0    0.            0.                  e or t importance        0    0.            0.        
 dxtran                   0    0.            0.                  dxtran                   0    0.            0.        
 forced collisions        0    0.            0.                  forced collisions        0    0.            0.        
 exp. transform           0    0.            0.                  exp. transform           0    0.            0.        
 upscattering             0    0.            1.7343E-14          downscattering           0    0.            1.8756E+00
 photonuclear             0    0.            0.                  capture                110    5.0703E-02    6.6567E-01
 (n,xn)          4233871079    1.6533E-01    1.9638E-01          loss to (n,xn)  2116789117    8.2658E-02    1.1614E+00
 prompt fission   650515464    1.7356E-02    3.5603E-02          loss to fission  238883402    6.2232E-03    1.8112E-02
 delayed fission    3786385    9.6984E-05    4.9405E-05          nucl. interaction        0    0.            0.        
 prompt photofis          0    0.            0.                  particle decay           0    0.            0.        
 tabular boundary         0    0.            0.                  tabular boundary         0    0.            0.        
 tabular sampling         0    0.            0.                  elastic scatter          0    0.            0.        
     total      34798514391    1.2016E+00    1.4415E+01              total      34798514391    1.2016E+00    1.4415E+01

   number of neutrons banked              -747560259        average time of (shakes)              cutoffs
   neutron tracks per source particle     1.8733E+00          escape            5.0001E+06          tco   2.0000E+07
   neutron collisions per source particle 2.0946E+00          capture           5.0002E+06          eco   0.0000E+00
   total neutron collisions              -2147483648          capture or escape 5.0001E+06          wc1  -5.0000E-01
   net multiplication              1.0939E+00 0.0000          any termination   4.6625E+06          wc2  -2.5000E-01

 computer time so far in this run200002.50 minutes            maximum number ever in bank        75
 computer time in mcrun          200000.29 minutes            bank overflows to backup file       0
 source particles per minute            9.2881E+04
 random numbers generated             581712682811            most random numbers used was     3596033 in history 17290241900
 
  warning.   random number stride   152917 exceeded        4 times.
 
  warning.  random number period exceeded.  decrease stride.

 range of sampled source weights = 9.5101E-01 to 1.0543E+00

 neutron reaction mt loop failed   1 times.

 number of histories processed by each thread
   894403006   930664850   936897977   931887257   930492791   925239691   929954133   929054973   928304382   933441397
   932767891   930665185   929817211   927038343   929180644   931476834   929756089   929872301   932788650   932485526
 
  warning.  some of the geometry is covered by a weight window mesh.
1neutron  activity in each cell                                                                         print table 126

                       tracks     population   collisions   collisions     number        flux        average      average
              cell    entering                               * weight     weighted     weighted   track weight   track mfp
                                                          (per history)    energy       energy     (relative)      (cm)

        1        1 38272269484  30720106222    110640253    4.1896E-03   6.0761E+00   1.0822E+01   7.4439E-01   1.1944E+04
        2        2 18895937588  19837316328  37251104280    1.2599E+00   3.4319E+00   8.1637E+00   6.4464E-01   4.2377E+00
        3        3 11893435124   9320401793     79079782    2.7266E-03   2.9862E+00   7.6396E+00   6.9377E-01   1.1084E+04
        4        4    64838037    538807752   1462959410    3.7796E-02   1.1323E+00   2.4173E+00   4.8525E-01   2.7397E+00
        5       10   648419272    926556232       926943    2.3589E-06   2.3549E+00   6.2311E+00   4.7686E-02   1.0701E+04
        6       11   791784843   1011101701      1000667    2.7875E-06   2.5032E+00   6.5048E+00   5.2462E-02   1.0800E+04
        7       12   946849620   1255474383      1232343    3.4856E-06   2.4111E+00   6.3164E+00   5.3131E-02   1.0739E+04
        8       13   778773041    999380191       984937    2.7842E-06   2.5043E+00   6.5063E+00   5.3214E-02   1.0800E+04
        9       14   904374837   1064064009      1049364    3.2303E-06   2.6560E+00   6.7748E+00   5.8040E-02   1.0891E+04

           total   73196681846  65673208611  38908977979    1.3046E+00

1tally        4        nps = 18576189131
           tally type 4    track length estimate of particle flux.      units   1/cm**2        
           particle(s): neutrons 

           volumes 
                   cell:      10                                                                                   
                         4.00000E+03
 
 cell  10                                                                                                                              
         time:       1.0000E+07           1.2000E+07           1.4000E+07           1.6000E+07           1.8000E+07
                 5.56418E-06 0.0001   4.36638E-11 0.0348   4.13031E-11 0.0363   4.00058E-11 0.0372   3.90559E-11 0.0381
 
         time:       2.0000E+07             total                                                                  
                 3.64269E-11 0.0377   5.56438E-06 0.0001


 ===================================================================================================================================

           results of 10 statistical checks for the estimated answer for the tally fluctuation chart (tfc) bin of tally        4

 tfc bin     --mean--      ---------relative error---------      ----variance of the variance----      --figure of merit--     -pdf-
 behavior    behavior      value   decrease   decrease rate      value   decrease   decrease rate       value     behavior     slope

 desired      random       <0.10      yes      1/sqrt(nps)       <0.10      yes        1/nps           constant    random      >3.00
 observed     random        0.00      yes          yes            0.00      yes         yes            constant   increase      5.24
 passed?        yes          yes      yes          yes             yes      yes         yes               yes         no         yes

 ===================================================================================================================================


 warning.  the tally in the tally fluctuation chart bin did not pass  1 of the 10 statistical checks.

1analysis of the results in the tally fluctuation chart bin (tfc) for tally        4 with nps = 18576189131  print table 160


 normed average tally per history  = 5.56438E-06          unnormed average tally per history  = 2.22575E-02
 estimated tally relative error    = 0.0001               estimated variance of the variance  = 0.0000
 relative error from zero tallies  = 0.0001               relative error from nonzero scores  = 0.0001

 number of nonzero history tallies =   108095734          efficiency for the nonzero tallies  = 0.0058
 history number of largest  tally  = 10626091535          largest  unnormalized history tally = 9.12665E+01
 (largest  tally)/(average tally)  = 4.10048E+03          (largest  tally)/(avg nonzero tally)= 2.38609E+01

 (confidence interval shift)/mean  = 0.0000               shifted confidence interval center  = 5.56438E-06


 if the largest  history score sampled so far were to occur on the next history, the tfc bin quantities would change as follows:

      estimated quantities           value at nps           value at nps+1           value(nps+1)/value(nps)-1.

      mean                            5.56438E-06             5.56438E-06                     0.000000
      relative error                  1.24258E-04             1.24258E-04                     0.000001
      variance of the variance        2.75071E-08             2.75168E-08                     0.000355
      shifted center                  5.56438E-06             5.56438E-06                     0.000000
      figure of merit                 3.23832E+02             3.23831E+02                    -0.000003

 the estimated inverse power slope of the 200 largest  tallies starting at 3.49933E+01 is 5.2380
 the large score tail of the empirical history score probability density function appears to have no unsampled regions.

 fom = (histories/minute)*(f(x) signal-to-noise ratio)**2 = (9.288E+04)*( 5.905E-02)**2 = (9.288E+04)*(3.487E-03) = 3.238E+02

1unnormed tally density for tally        4          nonzero tally mean(m) = 3.825E+00   nps = 18576189131  print table 161

 abscissa              ordinate   log plot of tally probability density function in tally fluctuation chart bin(d=decade,slope= 5.2)
  tally  number num den log den:d---------d----------d----------d---------d----------d----------d----------d----------d----------d--
 2.51-08      1 5.81-03  -2.236 **********|**********|**********|*********|**********|**********|**********|**********|**********|**
 3.98-08      0 0.00+00   0.000           |          |          |         |          |          |          |          |          |  
 6.31-08      0 0.00+00   0.000           |          |          |         |          |          |          |          |          |  
 1.00-07      2 2.92-03  -2.535 **********|**********|**********|*********|**********|**********|**********|**********|**********|  
 1.58-07      3 2.76-03  -2.559 **********|**********|**********|*********|**********|**********|**********|**********|********* |  
 2.51-07      1 5.81-04  -3.236 **********|**********|**********|*********|**********|**********|**********|**********|**        |  
 3.98-07      5 1.83-03  -2.737 **********|**********|**********|*********|**********|**********|**********|**********|********  |  
 6.31-07      4 9.25-04  -3.034 **********|**********|**********|*********|**********|**********|**********|**********|****      |  
 1.00-06      4 5.83-04  -3.234 **********|**********|**********|*********|**********|**********|**********|**********|**        |  
 1.58-06     13 1.20-03  -2.922 **********|**********|**********|*********|**********|**********|**********|**********|******    |  
 2.51-06     25 1.45-03  -2.838 **********|**********|**********|*********|**********|**********|**********|**********|******    |  
 3.98-06     43 1.58-03  -2.803 **********|**********|**********|*********|**********|**********|**********|**********|*******   |  
 6.31-06     52 1.20-03  -2.920 **********|**********|**********|*********|**********|**********|**********|**********|******    |  
 1.00-05    100 1.46-03  -2.836 **********|**********|**********|*********|**********|**********|**********|**********|******    |  
 1.58-05    113 1.04-03  -2.983 **********|**********|**********|*********|**********|**********|**********|**********|*****     |  
 2.51-05    203 1.18-03  -2.929 **********|**********|**********|*********|**********|**********|**********|**********|*****     |  
 3.98-05    313 1.15-03  -2.940 **********|**********|**********|*********|**********|**********|**********|**********|*****     |  
 6.31-05    525 1.21-03  -2.916 **********|**********|**********|*********|**********|**********|**********|**********|******    |  
 1.00-04    884 1.29-03  -2.890 **********|**********|**********|*********|**********|**********|**********|**********|******    |  
 1.58-04   1350 1.24-03  -2.906 **********|**********|**********|*********|**********|**********|**********|**********|******    |  
 2.51-04   2090 1.21-03  -2.916 **********|**********|**********|*********|**********|**********|**********|**********|******    |  
 3.98-04   3337 1.22-03  -2.913 **********|**********|**********|*********|**********|**********|**********|**********|******    |  
 6.31-04   5300 1.23-03  -2.912 **********|**********|**********|*********|**********|**********|**********|**********|******    |  
 1.00-03   8394 1.22-03  -2.912 **********|**********|**********|*********|**********|**********|**********|**********|******    |  
 1.58-03  13315 1.23-03  -2.912 **********|**********|**********|*********|**********|**********|**********|**********|******    |  
 2.51-03  21095 1.23-03  -2.912 **********|**********|**********|*********|**********|**********|**********|**********|******    |  
 3.98-03  33482 1.23-03  -2.911 **********|**********|**********|*********|**********|**********|**********|**********|******    |  
 6.31-03  52657 1.22-03  -2.915 **********|**********|**********|*********|**********|**********|**********|**********|******    |  
 1.00-02  82838 1.21-03  -2.918 **********|**********|**********|*********|**********|**********|**********|**********|******    |  
 1.58-02 130365 1.20-03  -2.921 **********|**********|**********|*********|**********|**********|**********|**********|******    |  
 2.51-02 204666 1.19-03  -2.925 **********|**********|**********|*********|**********|**********|**********|**********|******    |  
 3.98-02 320143 1.17-03  -2.931 **********|**********|**********|*********|**********|**********|**********|**********|*****     |  
 6.31-02 500469 1.16-03  -2.937 **********|**********|**********|*********|**********|**********|**********|**********|*****     |  
 1.00-01 776615 1.13-03  -2.946 **********|**********|**********|*********|**********|**********|**********|**********|*****     |  
 1.58-01 1.2+06 1.11-03  -2.955 **********|**********|**********|*********|**********|**********|**********|**********|*****     |  
 2.51-01 1.9+06 1.09-03  -2.964 **********|**********|**********|*********|**********|**********|**********|**********|*****     |  
 3.98-01 3.0+06 1.09-03  -2.961 **********|**********|**********|*********|**********|**********|**********|**********|*****     |  
 6.31-01 5.2+06 1.20-03  -2.922 **********|**********|**********|*********|**********|**********|**********|**********|******    |  
 1.00+00 8.4+06 1.22-03  -2.912 **********|**********|**********|*********|**********|**********|**********|**********|******    |  
 1.58+00 1.2+07 1.12-03  -2.950 **********|**********|**********|*********|**********|**********|**********|**********|*****     |  
 2.51+00 1.5+07 8.82-04  -3.054 **********|**********|**********|*********|**********|**********|**********|**********|****      |  
 3.98+00 1.7+07 6.30-04  -3.200 mmmmmmmmmm|mmmmmmmmmm|mmmmmmmmmm|mmmmmmmmm|mmmmmmmmmm|mmmmmmmmmm|mmmmmmmmmm|mmmmmmmmmm|mmm       |  
 6.31+00 1.7+07 3.90-04  -3.409 **********|**********|**********|*********|**********|**********|**********|**********|          |  
 1.00+01 2.0+07 2.88-04  -3.540 **********|**********|**********|*********|**********|**********|**********|**********|          |  
 1.58+01 5.0+06 4.62-05  -4.336 **********|**********|**********|*********|**********|**********|**********|*         |          |  
 2.51+01  54177 3.15-07  -6.502 **********|**********|**********|*********|**********|          |          |          |          |  
 3.98+01   5528 2.03-08  -7.693 **********|**********|**********|******** |       s  |          |          |          |          |  
 6.31+01     53 1.23-10  -9.912 **********|******    |          |         s          |          |          |          |          |  
 1.00+02      3 4.38-12 -11.359 *         |          |          |s        |          |          |          |          |          |  
  total 1.08+08 5.82-03         d---------d----------d----------d---------d----------d----------d----------d----------d----------d--

1tally       14        nps = 18576189131
           tally type 4    track length estimate of particle flux.      units   1/cm**2        
           particle(s): neutrons 

           volumes 
                   cell:      11                                                                                   
                         4.00000E+03
 
 cell  11                                                                                                                              
         time:       1.0000E+07           1.2000E+07           1.4000E+07           1.6000E+07           1.8000E+07
                 6.67475E-06 0.0001   4.91451E-11 0.0342   4.05010E-11 0.0363   3.89025E-11 0.0373   3.90582E-11 0.0381
 
         time:       2.0000E+07             total                                                                  
                 3.65931E-11 0.0386   6.67495E-06 0.0001


 ===================================================================================================================================

           results of 10 statistical checks for the estimated answer for the tally fluctuation chart (tfc) bin of tally       14

 tfc bin     --mean--      ---------relative error---------      ----variance of the variance----      --figure of merit--     -pdf-
 behavior    behavior      value   decrease   decrease rate      value   decrease   decrease rate       value     behavior     slope

 desired      random       <0.10      yes      1/sqrt(nps)       <0.10      yes        1/nps           constant    random      >3.00
 observed     random        0.00      yes          yes            0.00      yes         yes            constant   increase     10.00
 passed?        yes          yes      yes          yes             yes      yes         yes               yes         no         yes

 ===================================================================================================================================


 warning.  the tally in the tally fluctuation chart bin did not pass  1 of the 10 statistical checks.

1analysis of the results in the tally fluctuation chart bin (tfc) for tally       14 with nps = 18576189131  print table 160


 normed average tally per history  = 6.67495E-06          unnormed average tally per history  = 2.66998E-02
 estimated tally relative error    = 0.0001               estimated variance of the variance  = 0.0000
 relative error from zero tallies  = 0.0001               relative error from nonzero scores  = 0.0001

 number of nonzero history tallies =   125749519          efficiency for the nonzero tallies  = 0.0068
 history number of largest  tally  = 14213565813          largest  unnormalized history tally = 5.19578E+01
 (largest  tally)/(average tally)  = 1.94600E+03          (largest  tally)/(avg nonzero tally)= 1.31732E+01

 (confidence interval shift)/mean  = 0.0000               shifted confidence interval center  = 6.67495E-06


 if the largest  history score sampled so far were to occur on the next history, the tfc bin quantities would change as follows:

      estimated quantities           value at nps           value at nps+1           value(nps+1)/value(nps)-1.

      mean                            6.67495E-06             6.67496E-06                     0.000000
      relative error                  1.12883E-04             1.12883E-04                     0.000000
      variance of the variance        2.12489E-08             2.12496E-08                     0.000033
      shifted center                  6.67495E-06             6.67495E-06                     0.000000
      figure of merit                 3.92383E+02             3.92383E+02                    -0.000001

 the estimated slope of the 200 largest  tallies starting at  3.52715E+01 appears to be decreasing at least exponentially.
 the large score tail of the empirical history score probability density function appears to have no unsampled regions.

 fom = (histories/minute)*(f(x) signal-to-noise ratio)**2 = (9.288E+04)*( 6.500E-02)**2 = (9.288E+04)*(4.225E-03) = 3.924E+02

1unnormed tally density for tally       14          nonzero tally mean(m) = 3.944E+00   nps = 18576189131  print table 161

 abscissa              ordinate   log plot of tally probability density function in tally fluctuation chart bin(d=decade,slope=10.0)
  tally  number num den log den:d----------d-----------d------------d-----------d-----------d-----------d------------d-----------d--
 1.00-08      1 1.46-02  -1.836 ***********|***********|************|***********|***********|***********|************|***********|**
 1.58-08      0 0.00+00   0.000            |           |            |           |           |           |            |           |  
 2.51-08      0 0.00+00   0.000            |           |            |           |           |           |            |           |  
 3.98-08      0 0.00+00   0.000            |           |            |           |           |           |            |           |  
 6.31-08      0 0.00+00   0.000            |           |            |           |           |           |            |           |  
 1.00-07      1 1.46-03  -2.836 ***********|***********|************|***********|***********|***********|************|**         |  
 1.58-07      5 4.60-03  -2.337 ***********|***********|************|***********|***********|***********|************|********   |  
 2.51-07      1 5.81-04  -3.236 ***********|***********|************|***********|***********|***********|**********  |           |  
 3.98-07      3 1.10-03  -2.959 ***********|***********|************|***********|***********|***********|************|           |  
 6.31-07      5 1.16-03  -2.937 ***********|***********|************|***********|***********|***********|************|*          |  
 1.00-06     15 2.19-03  -2.660 ***********|***********|************|***********|***********|***********|************|****       |  
 1.58-06     13 1.20-03  -2.922 ***********|***********|************|***********|***********|***********|************|*          |  
 2.51-06     26 1.51-03  -2.821 ***********|***********|************|***********|***********|***********|************|**         |  
 3.98-06     47 1.72-03  -2.764 ***********|***********|************|***********|***********|***********|************|***        |  
 6.31-06     54 1.25-03  -2.904 ***********|***********|************|***********|***********|***********|************|*          |  
 1.00-05     97 1.41-03  -2.849 ***********|***********|************|***********|***********|***********|************|**         |  
 1.58-05    138 1.27-03  -2.896 ***********|***********|************|***********|***********|***********|************|*          |  
 2.51-05    221 1.28-03  -2.892 ***********|***********|************|***********|***********|***********|************|*          |  
 3.98-05    385 1.41-03  -2.851 ***********|***********|************|***********|***********|***********|************|**         |  
 6.31-05    572 1.32-03  -2.879 ***********|***********|************|***********|***********|***********|************|*          |  
 1.00-04    905 1.32-03  -2.879 ***********|***********|************|***********|***********|***********|************|*          |  
 1.58-04   1436 1.32-03  -2.879 ***********|***********|************|***********|***********|***********|************|*          |  
 2.51-04   2373 1.38-03  -2.861 ***********|***********|************|***********|***********|***********|************|*          |  
 3.98-04   3614 1.32-03  -2.878 ***********|***********|************|***********|***********|***********|************|*          |  
 6.31-04   5701 1.32-03  -2.880 ***********|***********|************|***********|***********|***********|************|*          |  
 1.00-03   9138 1.33-03  -2.875 ***********|***********|************|***********|***********|***********|************|*          |  
 1.58-03  14640 1.35-03  -2.870 ***********|***********|************|***********|***********|***********|************|*          |  
 2.51-03  22998 1.34-03  -2.874 ***********|***********|************|***********|***********|***********|************|*          |  
 3.98-03  36120 1.32-03  -2.878 ***********|***********|************|***********|***********|***********|************|*          |  
 6.31-03  56849 1.31-03  -2.881 ***********|***********|************|***********|***********|***********|************|*          |  
 1.00-02  90460 1.32-03  -2.880 ***********|***********|************|***********|***********|***********|************|*          |  
 1.58-02 142239 1.31-03  -2.883 ***********|***********|************|***********|***********|***********|************|*          |  
 2.51-02 222559 1.29-03  -2.889 ***********|***********|************|***********|***********|***********|************|*          |  
 3.98-02 349075 1.28-03  -2.893 ***********|***********|************|***********|***********|***********|************|*          |  
 6.31-02 544343 1.26-03  -2.900 ***********|***********|************|***********|***********|***********|************|*          |  
 1.00-01 850064 1.24-03  -2.907 ***********|***********|************|***********|***********|***********|************|*          |  
 1.58-01 1.3+06 1.21-03  -2.917 ***********|***********|************|***********|***********|***********|************|*          |  
 2.51-01 2.1+06 1.19-03  -2.924 ***********|***********|************|***********|***********|***********|************|*          |  
 3.98-01 3.3+06 1.21-03  -2.918 ***********|***********|************|***********|***********|***********|************|*          |  
 6.31-01 5.7+06 1.32-03  -2.878 ***********|***********|************|***********|***********|***********|************|*          |  
 1.00+00 9.4+06 1.37-03  -2.864 ***********|***********|************|***********|***********|***********|************|*          |  
 1.58+00 1.4+07 1.26-03  -2.899 ***********|***********|************|***********|***********|***********|************|*          |  
 2.51+00 1.7+07 9.77-04  -3.010 ***********|***********|************|***********|***********|***********|************|           |  
 3.98+00 1.9+07 6.90-04  -3.161 mmmmmmmmmmm|mmmmmmmmmmm|mmmmmmmmmmmm|mmmmmmmmmmm|mmmmmmmmmmm|mmmmmmmmmmm|mmmmmmmmmmm |           |  
 6.31+00 1.9+07 4.50-04  -3.346 ***********|***********|************|***********|***********|***********|*********   |           |  
 1.00+01 2.9+07 4.25-04  -3.372 ***********|***********|************|***********|***********|***********|********    |           |  
 1.58+01 3.6+06 3.32-05  -4.479 ***********|***********|************|***********|***********|*******    |            |           |  
 2.51+01  62043 3.60-07  -6.443 ***********|***********|************|*******    |           |           |            |           |  
 3.98+01   5056 1.85-08  -7.732 ***********|***********|****        |           |           |           |            |           |  
 6.31+01     52 1.20-10  -9.920 *          |           |            |           |           |           |            |           |  
  total 1.26+08 6.77-03         d----------d-----------d------------d-----------d-----------d-----------d------------d-----------d--

1tally       24        nps = 18576189131
           tally type 4    track length estimate of particle flux.      units   1/cm**2        
           particle(s): neutrons 

           volumes 
                   cell:      12                                                                                   
                         4.00000E+03
 
 cell  12                                                                                                                              
         time:       1.0000E+07           1.2000E+07           1.4000E+07           1.6000E+07           1.8000E+07
                 8.27612E-06 0.0001   8.01947E-11 0.0278   6.99166E-11 0.0292   6.56502E-11 0.0294   6.61761E-11 0.0302
 
         time:       2.0000E+07             total                                                                  
                 6.67118E-11 0.0300   8.27647E-06 0.0001


 ===================================================================================================================================

           results of 10 statistical checks for the estimated answer for the tally fluctuation chart (tfc) bin of tally       24

 tfc bin     --mean--      ---------relative error---------      ----variance of the variance----      --figure of merit--     -pdf-
 behavior    behavior      value   decrease   decrease rate      value   decrease   decrease rate       value     behavior     slope

 desired      random       <0.10      yes      1/sqrt(nps)       <0.10      yes        1/nps           constant    random      >3.00
 observed     random        0.00      yes          yes            0.00      yes         yes            constant   increase      7.74
 passed?        yes          yes      yes          yes             yes      yes         yes               yes         no         yes

 ===================================================================================================================================


 warning.  the tally in the tally fluctuation chart bin did not pass  1 of the 10 statistical checks.

1analysis of the results in the tally fluctuation chart bin (tfc) for tally       24 with nps = 18576189131  print table 160


 normed average tally per history  = 8.27647E-06          unnormed average tally per history  = 3.31059E-02
 estimated tally relative error    = 0.0001               estimated variance of the variance  = 0.0000
 relative error from zero tallies  = 0.0001               relative error from nonzero scores  = 0.0001

 number of nonzero history tallies =   156476216          efficiency for the nonzero tallies  = 0.0084
 history number of largest  tally  =  8175713662          largest  unnormalized history tally = 6.53548E+01
 (largest  tally)/(average tally)  = 1.97412E+03          (largest  tally)/(avg nonzero tally)= 1.66289E+01

 (confidence interval shift)/mean  = 0.0000               shifted confidence interval center  = 8.27647E-06


 if the largest  history score sampled so far were to occur on the next history, the tfc bin quantities would change as follows:

      estimated quantities           value at nps           value at nps+1           value(nps+1)/value(nps)-1.

      mean                            8.27647E-06             8.27647E-06                     0.000000
      relative error                  1.02228E-04             1.02228E-04                     0.000000
      variance of the variance        1.72597E-08             1.72609E-08                     0.000065
      shifted center                  8.27647E-06             8.27647E-06                     0.000000
      figure of merit                 4.78447E+02             4.78447E+02                    -0.000001

 the estimated inverse power slope of the 198 largest  tallies starting at 3.68451E+01 is 7.7394
 the large score tail of the empirical history score probability density function appears to have no unsampled regions.

 fom = (histories/minute)*(f(x) signal-to-noise ratio)**2 = (9.288E+04)*( 7.177E-02)**2 = (9.288E+04)*(5.151E-03) = 4.784E+02

1unnormed tally density for tally       24          nonzero tally mean(m) = 3.930E+00   nps = 18576189131  print table 161

 abscissa              ordinate   log plot of tally probability density function in tally fluctuation chart bin(d=decade,slope= 7.7)
  tally  number num den log den:d----------d-----------d------------d-----------d-----------d-----------d------------d-----------d--
 7.94-08      2 3.67-03  -2.435 ***********|***********|************|***********|***********|***********|************|***********|**
 1.26-07      1 1.16-03  -2.936 ***********|***********|************|***********|***********|***********|************|********   |  
 2.00-07      0 0.00+00   0.000            |           |            |           |           |           |            |           |  
 3.16-07      7 3.23-03  -2.491 ***********|***********|************|***********|***********|***********|************|***********|* 
 5.01-07      6 1.75-03  -2.758 ***********|***********|************|***********|***********|***********|************|********** |  
 7.94-07      8 1.47-03  -2.833 ***********|***********|************|***********|***********|***********|************|*********  |  
 1.26-06     21 2.43-03  -2.614 ***********|***********|************|***********|***********|***********|************|***********|  
 2.00-06     26 1.90-03  -2.721 ***********|***********|************|***********|***********|***********|************|***********|  
 3.16-06     48 2.21-03  -2.655 ***********|***********|************|***********|***********|***********|************|***********|  
 5.01-06     53 1.54-03  -2.812 ***********|***********|************|***********|***********|***********|************|*********  |  
 7.94-06    119 2.19-03  -2.660 ***********|***********|************|***********|***********|***********|************|***********|  
 1.26-05    164 1.90-03  -2.721 ***********|***********|************|***********|***********|***********|************|***********|  
 2.00-05    269 1.97-03  -2.706 ***********|***********|************|***********|***********|***********|************|***********|  
 3.16-05    460 2.12-03  -2.673 ***********|***********|************|***********|***********|***********|************|***********|  
 5.01-05    649 1.89-03  -2.724 ***********|***********|************|***********|***********|***********|************|********** |  
 7.94-05   1111 2.04-03  -2.690 ***********|***********|************|***********|***********|***********|************|***********|  
 1.26-04   1677 1.94-03  -2.712 ***********|***********|************|***********|***********|***********|************|***********|  
 2.00-04   2754 2.01-03  -2.696 ***********|***********|************|***********|***********|***********|************|***********|  
 3.16-04   4327 2.00-03  -2.700 ***********|***********|************|***********|***********|***********|************|***********|  
 5.01-04   6753 1.97-03  -2.707 ***********|***********|************|***********|***********|***********|************|***********|  
 7.94-04  10674 1.96-03  -2.708 ***********|***********|************|***********|***********|***********|************|***********|  
 1.26-03  16911 1.96-03  -2.708 ***********|***********|************|***********|***********|***********|************|***********|  
 2.00-03  26693 1.95-03  -2.710 ***********|***********|************|***********|***********|***********|************|***********|  
 3.16-03  42622 1.97-03  -2.706 ***********|***********|************|***********|***********|***********|************|***********|  
 5.01-03  68062 1.98-03  -2.703 ***********|***********|************|***********|***********|***********|************|***********|  
 7.94-03 106481 1.96-03  -2.709 ***********|***********|************|***********|***********|***********|************|***********|  
 1.26-02 168036 1.95-03  -2.711 ***********|***********|************|***********|***********|***********|************|***********|  
 2.00-02 264649 1.93-03  -2.713 ***********|***********|************|***********|***********|***********|************|***********|  
 3.16-02 414797 1.91-03  -2.718 ***********|***********|************|***********|***********|***********|************|***********|  
 5.01-02 650112 1.89-03  -2.723 ***********|***********|************|***********|***********|***********|************|********** |  
 7.94-02 1.0+06 1.86-03  -2.730 ***********|***********|************|***********|***********|***********|************|********** |  
 1.26-01 1.6+06 1.82-03  -2.740 ***********|***********|************|***********|***********|***********|************|********** |  
 2.00-01 2.4+06 1.78-03  -2.750 ***********|***********|************|***********|***********|***********|************|********** |  
 3.16-01 3.8+06 1.74-03  -2.759 ***********|***********|************|***********|***********|***********|************|********** |  
 5.01-01 6.0+06 1.74-03  -2.758 ***********|***********|************|***********|***********|***********|************|********** |  
 7.94-01 9.9+06 1.82-03  -2.739 ***********|***********|************|***********|***********|***********|************|********** |  
 1.26+00 1.4+07 1.66-03  -2.781 ***********|***********|************|***********|***********|***********|************|********** |  
 2.00+00 1.9+07 1.36-03  -2.867 ***********|***********|************|***********|***********|***********|************|*********  |  
 3.16+00 2.2+07 9.98-04  -3.001 ***********|***********|************|***********|***********|***********|************|*******    |  
 5.01+00 2.2+07 6.40-04  -3.194 mmmmmmmmmmm|mmmmmmmmmmm|mmmmmmmmmmmm|mmmmmmmmmmm|mmmmmmmmmmm|mmmmmmmmmmm|mmmmmmmmmmmm|mmmmm      |  
 7.94+00 2.9+07 5.31-04  -3.275 ***********|***********|************|***********|***********|***********|************|****       |  
 1.26+01 2.4+07 2.81-04  -3.551 ***********|***********|************|***********|***********|***********|************|           |  
 2.00+01 235081 1.72-06  -5.765 ***********|***********|************|***********|********** |           |            |           |  
 3.16+01  35667 1.65-07  -6.784 ***********|***********|************|********** |           |           |            |           |  
 5.01+01    955 2.78-09  -8.556 ***********|***********|*         s |           |           |           |            |           |  
 7.94+01     16 2.94-11 -10.532 *          |          s|            |           |           |           |            |           |  
  total 1.56+08 8.42-03         d----------d-----------d------------d-----------d-----------d-----------d------------d-----------d--

1tally       34        nps = 18576189131
           tally type 4    track length estimate of particle flux.      units   1/cm**2        
           particle(s): neutrons 

           volumes 
                   cell:      13                                                                                   
                         4.00000E+03
 
 cell  13                                                                                                                              
         time:       1.0000E+07           1.2000E+07           1.4000E+07           1.6000E+07           1.8000E+07
                 6.67489E-06 0.0001   4.85747E-11 0.0348   4.12112E-11 0.0369   3.85839E-11 0.0379   3.87618E-11 0.0380
 
         time:       2.0000E+07             total                                                                  
                 4.06671E-11 0.0370   6.67509E-06 0.0001


 ===================================================================================================================================

           results of 10 statistical checks for the estimated answer for the tally fluctuation chart (tfc) bin of tally       34

 tfc bin     --mean--      ---------relative error---------      ----variance of the variance----      --figure of merit--     -pdf-
 behavior    behavior      value   decrease   decrease rate      value   decrease   decrease rate       value     behavior     slope

 desired      random       <0.10      yes      1/sqrt(nps)       <0.10      yes        1/nps           constant    random      >3.00
 observed     random        0.00      yes          yes            0.00      yes         yes            constant   increase      7.99
 passed?        yes          yes      yes          yes             yes      yes         yes               yes         no         yes

 ===================================================================================================================================


 warning.  the tally in the tally fluctuation chart bin did not pass  1 of the 10 statistical checks.

1analysis of the results in the tally fluctuation chart bin (tfc) for tally       34 with nps = 18576189131  print table 160


 normed average tally per history  = 6.67509E-06          unnormed average tally per history  = 2.67004E-02
 estimated tally relative error    = 0.0001               estimated variance of the variance  = 0.0000
 relative error from zero tallies  = 0.0001               relative error from nonzero scores  = 0.0001

 number of nonzero history tallies =   123976372          efficiency for the nonzero tallies  = 0.0067
 history number of largest  tally  =  5096095582          largest  unnormalized history tally = 5.91074E+01
 (largest  tally)/(average tally)  = 2.21373E+03          (largest  tally)/(avg nonzero tally)= 1.47743E+01

 (confidence interval shift)/mean  = 0.0000               shifted confidence interval center  = 6.67509E-06


 if the largest  history score sampled so far were to occur on the next history, the tfc bin quantities would change as follows:

      estimated quantities           value at nps           value at nps+1           value(nps+1)/value(nps)-1.

      mean                            6.67509E-06             6.67509E-06                     0.000000
      relative error                  1.14338E-04             1.14338E-04                     0.000000
      variance of the variance        2.15297E-08             2.15309E-08                     0.000053
      shifted center                  6.67509E-06             6.67509E-06                     0.000000
      figure of merit                 3.82460E+02             3.82459E+02                    -0.000001

 the estimated inverse power slope of the 198 largest  tallies starting at 3.43158E+01 is 7.9941
 the large score tail of the empirical history score probability density function appears to have no unsampled regions.

 fom = (histories/minute)*(f(x) signal-to-noise ratio)**2 = (9.288E+04)*( 6.417E-02)**2 = (9.288E+04)*(4.118E-03) = 3.825E+02

1unnormed tally density for tally       34          nonzero tally mean(m) = 4.001E+00   nps = 18576189131  print table 161

 abscissa              ordinate   log plot of tally probability density function in tally fluctuation chart bin(d=decade,slope= 8.0)
  tally  number num den log den:d----------d-----------d-----------d-----------d-----------d----------d-----------d-----------d-----
 6.31-09      1 2.31-02  -1.636 ***********|***********|***********|***********|***********|**********|***********|***********|*****
 1.00-08      0 0.00+00   0.000            |           |           |           |           |          |           |           |     
 1.58-08      1 9.20-03  -2.036 ***********|***********|***********|***********|***********|**********|***********|***********|     
 2.51-08      0 0.00+00   0.000            |           |           |           |           |          |           |           |     
 3.98-08      1 3.66-03  -2.436 ***********|***********|***********|***********|***********|**********|***********|*******    |     
 6.31-08      0 0.00+00   0.000            |           |           |           |           |          |           |           |     
 1.00-07      0 0.00+00   0.000            |           |           |           |           |          |           |           |     
 1.58-07      1 9.20-04  -3.036 ***********|***********|***********|***********|***********|**********|***********|           |     
 2.51-07      0 0.00+00   0.000            |           |           |           |           |          |           |           |     
 3.98-07      5 1.83-03  -2.737 ***********|***********|***********|***********|***********|**********|***********|****       |     
 6.31-07      7 1.62-03  -2.791 ***********|***********|***********|***********|***********|**********|***********|***        |     
 1.00-06      7 1.02-03  -2.991 ***********|***********|***********|***********|***********|**********|***********|*          |     
 1.58-06     17 1.56-03  -2.806 ***********|***********|***********|***********|***********|**********|***********|***        |     
 2.51-06     20 1.16-03  -2.935 ***********|***********|***********|***********|***********|**********|***********|**         |     
 3.98-06     40 1.47-03  -2.834 ***********|***********|***********|***********|***********|**********|***********|***        |     
 6.31-06     63 1.46-03  -2.837 ***********|***********|***********|***********|***********|**********|***********|***        |     
 1.00-05    102 1.49-03  -2.827 ***********|***********|***********|***********|***********|**********|***********|***        |     
 1.58-05    136 1.25-03  -2.902 ***********|***********|***********|***********|***********|**********|***********|**         |     
 2.51-05    218 1.27-03  -2.898 ***********|***********|***********|***********|***********|**********|***********|**         |     
 3.98-05    400 1.47-03  -2.834 ***********|***********|***********|***********|***********|**********|***********|***        |     
 6.31-05    568 1.31-03  -2.882 ***********|***********|***********|***********|***********|**********|***********|**         |     
 1.00-04    942 1.37-03  -2.862 ***********|***********|***********|***********|***********|**********|***********|**         |     
 1.58-04   1487 1.37-03  -2.864 ***********|***********|***********|***********|***********|**********|***********|**         |     
 2.51-04   2258 1.31-03  -2.882 ***********|***********|***********|***********|***********|**********|***********|**         |     
 3.98-04   3631 1.33-03  -2.876 ***********|***********|***********|***********|***********|**********|***********|**         |     
 6.31-04   5740 1.33-03  -2.877 ***********|***********|***********|***********|***********|**********|***********|**         |     
 1.00-03   8923 1.30-03  -2.886 ***********|***********|***********|***********|***********|**********|***********|**         |     
 1.58-03  14058 1.29-03  -2.888 ***********|***********|***********|***********|***********|**********|***********|**         |     
 2.51-03  22460 1.30-03  -2.885 ***********|***********|***********|***********|***********|**********|***********|**         |     
 3.98-03  35765 1.31-03  -2.883 ***********|***********|***********|***********|***********|**********|***********|**         |     
 6.31-03  56576 1.31-03  -2.883 ***********|***********|***********|***********|***********|**********|***********|**         |     
 1.00-02  89789 1.31-03  -2.883 ***********|***********|***********|***********|***********|**********|***********|**         |     
 1.58-02 140565 1.29-03  -2.888 ***********|***********|***********|***********|***********|**********|***********|**         |     
 2.51-02 221328 1.29-03  -2.891 ***********|***********|***********|***********|***********|**********|***********|**         |     
 3.98-02 346334 1.27-03  -2.897 ***********|***********|***********|***********|***********|**********|***********|**         |     
 6.31-02 539344 1.25-03  -2.904 ***********|***********|***********|***********|***********|**********|***********|**         |     
 1.00-01 838569 1.22-03  -2.912 ***********|***********|***********|***********|***********|**********|***********|**         |     
 1.58-01 1.3+06 1.20-03  -2.920 ***********|***********|***********|***********|***********|**********|***********|**         |     
 2.51-01 2.0+06 1.18-03  -2.928 ***********|***********|***********|***********|***********|**********|***********|**         |     
 3.98-01 3.2+06 1.19-03  -2.925 ***********|***********|***********|***********|***********|**********|***********|**         |     
 6.31-01 5.6+06 1.30-03  -2.886 ***********|***********|***********|***********|***********|**********|***********|**         |     
 1.00+00 9.3+06 1.35-03  -2.868 ***********|***********|***********|***********|***********|**********|***********|**         |     
 1.58+00 1.4+07 1.25-03  -2.904 ***********|***********|***********|***********|***********|**********|***********|**         |     
 2.51+00 1.7+07 9.74-04  -3.012 ***********|***********|***********|***********|***********|**********|***********|*          |     
 3.98+00 1.9+07 6.89-04  -3.162 ***********|***********|***********|***********|***********|**********|***********|           |     
 6.31+00 1.8+07 4.20-04  -3.377 mmmmmmmmmmm|mmmmmmmmmmm|mmmmmmmmmmm|mmmmmmmmmmm|mmmmmmmmmmm|mmmmmmmmmm|mmmmmmmm   |           |     
 1.00+01 2.8+07 4.12-04  -3.385 ***********|***********|***********|***********|***********|**********|********   |           |     
 1.58+01 4.5+06 4.18-05  -4.379 ***********|***********|***********|***********|***********|*******   |           |           |     
 2.51+01  57251 3.32-07  -6.478 ***********|***********|***********|******     |           |          |           |           |     
 3.98+01   4505 1.65-08  -7.782 ***********|***********|***        |s          |           |          |           |           |     
 6.31+01     48 1.11-10  -9.955 *          |           |s          |           |           |          |           |           |     
  total 1.24+08 6.67-03         d----------d-----------d-----------d-----------d-----------d----------d-----------d-----------d-----

1tally       44        nps = 18576189131
           tally type 4    track length estimate of particle flux.      units   1/cm**2        
           particle(s): neutrons 

           volumes 
                   cell:      14                                                                                   
                         4.00000E+03
 
 cell  14                                                                                                                              
         time:       1.0000E+07           1.2000E+07           1.4000E+07           1.6000E+07           1.8000E+07
                 7.82523E-06 0.0001   4.78758E-11 0.0344   4.04463E-11 0.0373   3.85399E-11 0.0370   3.83405E-11 0.0376
 
         time:       2.0000E+07             total                                                                  
                 3.77335E-11 0.0363   7.82543E-06 0.0001


 ===================================================================================================================================

           results of 10 statistical checks for the estimated answer for the tally fluctuation chart (tfc) bin of tally       44

 tfc bin     --mean--      ---------relative error---------      ----variance of the variance----      --figure of merit--     -pdf-
 behavior    behavior      value   decrease   decrease rate      value   decrease   decrease rate       value     behavior     slope

 desired      random       <0.10      yes      1/sqrt(nps)       <0.10      yes        1/nps           constant    random      >3.00
 observed     random        0.00      yes          yes            0.00      yes         yes            constant   increase      9.28
 passed?        yes          yes      yes          yes             yes      yes         yes               yes         no         yes

 ===================================================================================================================================


 warning.  the tally in the tally fluctuation chart bin did not pass  1 of the 10 statistical checks.

1analysis of the results in the tally fluctuation chart bin (tfc) for tally       44 with nps = 18576189131  print table 160


 normed average tally per history  = 7.82543E-06          unnormed average tally per history  = 3.13017E-02
 estimated tally relative error    = 0.0001               estimated variance of the variance  = 0.0000
 relative error from zero tallies  = 0.0001               relative error from nonzero scores  = 0.0001

 number of nonzero history tallies =   141192194          efficiency for the nonzero tallies  = 0.0076
 history number of largest  tally  =  2745916951          largest  unnormalized history tally = 5.57482E+01
 (largest  tally)/(average tally)  = 1.78099E+03          (largest  tally)/(avg nonzero tally)= 1.35368E+01

 (confidence interval shift)/mean  = 0.0000               shifted confidence interval center  = 7.82543E-06


 if the largest  history score sampled so far were to occur on the next history, the tfc bin quantities would change as follows:

      estimated quantities           value at nps           value at nps+1           value(nps+1)/value(nps)-1.

      mean                            7.82543E-06             7.82543E-06                     0.000000
      relative error                  1.05680E-04             1.05680E-04                     0.000000
      variance of the variance        1.77487E-08             1.77493E-08                     0.000036
      shifted center                  7.82543E-06             7.82543E-06                     0.000000
      figure of merit                 4.47701E+02             4.47700E+02                    -0.000001

 the estimated inverse power slope of the 200 largest  tallies starting at 3.42151E+01 is 9.2802
 the large score tail of the empirical history score probability density function appears to have no unsampled regions.

 fom = (histories/minute)*(f(x) signal-to-noise ratio)**2 = (9.288E+04)*( 6.943E-02)**2 = (9.288E+04)*(4.820E-03) = 4.477E+02

1unnormed tally density for tally       44          nonzero tally mean(m) = 4.118E+00   nps = 18576189131  print table 161

 abscissa              ordinate   log plot of tally probability density function in tally fluctuation chart bin(d=decade,slope= 9.3)
  tally  number num den log den:d---------d-----------d----------d----------d-----------d----------d----------d-----------d---------
 5.01-08      3 8.73-03  -2.059 **********|***********|**********|**********|***********|**********|**********|***********|*********
 7.94-08      1 1.84-03  -2.736 **********|***********|**********|**********|***********|**********|**********|***********|*        
 1.26-07      2 2.32-03  -2.635 **********|***********|**********|**********|***********|**********|**********|***********|**       
 2.00-07      0 0.00+00   0.000           |           |          |          |           |          |          |           |         
 3.16-07      6 2.77-03  -2.558 **********|***********|**********|**********|***********|**********|**********|***********|***      
 5.01-07      1 2.91-04  -3.536 **********|***********|**********|**********|***********|**********|**********|****       |         
 7.94-07     16 2.94-03  -2.532 **********|***********|**********|**********|***********|**********|**********|***********|****     
 1.26-06     15 1.74-03  -2.760 **********|***********|**********|**********|***********|**********|**********|***********|*        
 2.00-06     20 1.46-03  -2.835 **********|***********|**********|**********|***********|**********|**********|***********|         
 3.16-06     30 1.38-03  -2.859 **********|***********|**********|**********|***********|**********|**********|***********|         
 5.01-06     40 1.16-03  -2.934 **********|***********|**********|**********|***********|**********|**********|***********|         
 7.94-06     88 1.62-03  -2.792 **********|***********|**********|**********|***********|**********|**********|***********|*        
 1.26-05    107 1.24-03  -2.907 **********|***********|**********|**********|***********|**********|**********|***********|         
 2.00-05    208 1.52-03  -2.818 **********|***********|**********|**********|***********|**********|**********|***********|         
 3.16-05    296 1.37-03  -2.865 **********|***********|**********|**********|***********|**********|**********|***********|         
 5.01-05    481 1.40-03  -2.854 **********|***********|**********|**********|***********|**********|**********|***********|         
 7.94-05    743 1.36-03  -2.865 **********|***********|**********|**********|***********|**********|**********|***********|         
 1.26-04   1135 1.32-03  -2.881 **********|***********|**********|**********|***********|**********|**********|***********|         
 2.00-04   1972 1.44-03  -2.841 **********|***********|**********|**********|***********|**********|**********|***********|         
 3.16-04   3063 1.41-03  -2.850 **********|***********|**********|**********|***********|**********|**********|***********|         
 5.01-04   4831 1.41-03  -2.852 **********|***********|**********|**********|***********|**********|**********|***********|         
 7.94-04   7513 1.38-03  -2.860 **********|***********|**********|**********|***********|**********|**********|***********|         
 1.26-03  12096 1.40-03  -2.853 **********|***********|**********|**********|***********|**********|**********|***********|         
 2.00-03  19011 1.39-03  -2.857 **********|***********|**********|**********|***********|**********|**********|***********|         
 3.16-03  30338 1.40-03  -2.854 **********|***********|**********|**********|***********|**********|**********|***********|         
 5.01-03  48093 1.40-03  -2.854 **********|***********|**********|**********|***********|**********|**********|***********|         
 7.94-03  75494 1.39-03  -2.858 **********|***********|**********|**********|***********|**********|**********|***********|         
 1.26-02 119101 1.38-03  -2.860 **********|***********|**********|**********|***********|**********|**********|***********|         
 2.00-02 188667 1.38-03  -2.860 **********|***********|**********|**********|***********|**********|**********|***********|         
 3.16-02 294016 1.36-03  -2.868 **********|***********|**********|**********|***********|**********|**********|***********|         
 5.01-02 460033 1.34-03  -2.873 **********|***********|**********|**********|***********|**********|**********|***********|         
 7.94-02 718639 1.32-03  -2.880 **********|***********|**********|**********|***********|**********|**********|***********|         
 1.26-01 1.1+06 1.29-03  -2.888 **********|***********|**********|**********|***********|**********|**********|***********|         
 2.00-01 1.7+06 1.27-03  -2.895 **********|***********|**********|**********|***********|**********|**********|***********|         
 3.16-01 2.7+06 1.27-03  -2.898 **********|***********|**********|**********|***********|**********|**********|***********|         
 5.01-01 4.5+06 1.31-03  -2.882 **********|***********|**********|**********|***********|**********|**********|***********|         
 7.94-01 8.1+06 1.49-03  -2.828 **********|***********|**********|**********|***********|**********|**********|***********|         
 1.26+00 1.2+07 1.43-03  -2.844 **********|***********|**********|**********|***********|**********|**********|***********|         
 2.00+00 1.7+07 1.23-03  -2.908 **********|***********|**********|**********|***********|**********|**********|***********|         
 3.16+00 2.0+07 9.24-04  -3.034 **********|***********|**********|**********|***********|**********|**********|********** |         
 5.01+00 2.1+07 5.98-04  -3.223 mmmmmmmmmm|mmmmmmmmmmm|mmmmmmmmmm|mmmmmmmmmm|mmmmmmmmmmm|mmmmmmmmmm|mmmmmmmmmm|mmmmmmmm   |         
 7.94+00 2.7+07 5.01-04  -3.300 **********|***********|**********|**********|***********|**********|**********|*******    |         
 1.26+01 2.4+07 2.74-04  -3.562 **********|***********|**********|**********|***********|**********|**********|****       |         
 2.00+01 189758 1.39-06  -5.858 **********|***********|**********|**********|***********|          |          |           |         
 3.16+01  20631 9.52-08  -7.022 **********|***********|**********|**********|           |          |          |           |         
 5.01+01    460 1.34-09  -8.873 **********|***********|         s|          |           |          |          |           |         
 6.31+01      4 1.66-11 -10.780 *         |          s|          |          |           |          |          |           |         
  total 1.41+08 7.60-03         d---------d-----------d----------d----------d-----------d----------d----------d-----------d---------

1status of the statistical checks used to form confidence intervals for the mean for each tally bin


 tally   result of statistical checks for the tfc bin (the first check not passed is listed) and error magnitude check for all bins

        4   missed  1 of 10 tfc bin checks: the figure of merit has a trend during the last half of the problem                       
         passed all bin error check:     7 tally bins all have relative errors less than 0.10 with no zero bins

       14   missed  1 of 10 tfc bin checks: the figure of merit has a trend during the last half of the problem                       
         passed all bin error check:     7 tally bins all have relative errors less than 0.10 with no zero bins

       24   missed  1 of 10 tfc bin checks: the figure of merit has a trend during the last half of the problem                       
         passed all bin error check:     7 tally bins all have relative errors less than 0.10 with no zero bins

       34   missed  1 of 10 tfc bin checks: the figure of merit has a trend during the last half of the problem                       
         passed all bin error check:     7 tally bins all have relative errors less than 0.10 with no zero bins

       44   missed  1 of 10 tfc bin checks: the figure of merit has a trend during the last half of the problem                       
         passed all bin error check:     7 tally bins all have relative errors less than 0.10 with no zero bins


 the 10 statistical checks are only for the tally fluctuation chart bin and do not apply to other tally bins.

 warning.       5 of the     5 tally fluctuation chart bins did not pass all 10 statistical checks.
1tally fluctuation charts                              

                            tally        4                          tally       14                          tally       24
          nps      mean     error   vov  slope    fom      mean     error   vov  slope    fom      mean     error   vov  slope    fom
   1048576000   5.5605E-06 0.0005 0.0000 10.0     325   6.6771E-06 0.0005 0.0000 10.0     394   8.2780E-06 0.0004 0.0000 10.0     481
   2097152000   5.5628E-06 0.0004 0.0000  7.4     326   6.6741E-06 0.0003 0.0000 10.0     395   8.2780E-06 0.0003 0.0000  9.5     482
   3145728000   5.5639E-06 0.0003 0.0000  5.7     326   6.6743E-06 0.0003 0.0000 10.0     395   8.2807E-06 0.0002 0.0000  7.3     482
   4194304000   5.5639E-06 0.0003 0.0000  5.8     315   6.6728E-06 0.0002 0.0000 10.0     382   8.2787E-06 0.0002 0.0000 10.0     465
   5242880000   5.5643E-06 0.0002 0.0000  5.3     317   6.6729E-06 0.0002 0.0000 10.0     384   8.2779E-06 0.0002 0.0000 10.0     469
   6291456000   5.5644E-06 0.0002 0.0000  4.3     319   6.6746E-06 0.0002 0.0000 10.0     386   8.2771E-06 0.0002 0.0000 10.0     471
   7340032000   5.5643E-06 0.0002 0.0000  4.0     320   6.6745E-06 0.0002 0.0000 10.0     387   8.2767E-06 0.0002 0.0000  8.0     473
   8388608000   5.5638E-06 0.0002 0.0000  4.5     321   6.6747E-06 0.0002 0.0000 10.0     389   8.2767E-06 0.0002 0.0000  7.0     474
   9437184000   5.5634E-06 0.0002 0.0000  5.3     321   6.6753E-06 0.0002 0.0000 10.0     389   8.2770E-06 0.0001 0.0000  6.6     475
  10485760000   5.5634E-06 0.0002 0.0000  6.1     322   6.6744E-06 0.0002 0.0000 10.0     390   8.2765E-06 0.0001 0.0000  7.5     475
  11534336000   5.5632E-06 0.0002 0.0000  4.9     322   6.6747E-06 0.0001 0.0000 10.0     390   8.2763E-06 0.0001 0.0000  8.5     476
  12582912000   5.5635E-06 0.0002 0.0000  5.3     323   6.6753E-06 0.0001 0.0000 10.0     391   8.2762E-06 0.0001 0.0000  8.5     477
  13631488000   5.5636E-06 0.0001 0.0000  4.7     323   6.6751E-06 0.0001 0.0000 10.0     391   8.2760E-06 0.0001 0.0000  9.1     477
  14680064000   5.5637E-06 0.0001 0.0000  5.0     323   6.6752E-06 0.0001 0.0000 10.0     392   8.2761E-06 0.0001 0.0000  8.7     477
  15728640000   5.5641E-06 0.0001 0.0000  4.7     323   6.6750E-06 0.0001 0.0000 10.0     392   8.2763E-06 0.0001 0.0000 10.0     478
  16777216000   5.5643E-06 0.0001 0.0000  5.5     324   6.6750E-06 0.0001 0.0000 10.0     392   8.2765E-06 0.0001 0.0000  7.4     478
  17825792000   5.5643E-06 0.0001 0.0000  5.9     324   6.6750E-06 0.0001 0.0000 10.0     392   8.2763E-06 0.0001 0.0000  7.1     478
  18576189131   5.5644E-06 0.0001 0.0000  5.2     324   6.6750E-06 0.0001 0.0000 10.0     392   8.2765E-06 0.0001 0.0000  7.7     478
 

                            tally       34                          tally       44
          nps      mean     error   vov  slope    fom      mean     error   vov  slope    fom
   1048576000   6.6754E-06 0.0005 0.0000 10.0     384   7.8224E-06 0.0004 0.0000 10.0     450
   2097152000   6.6768E-06 0.0003 0.0000 10.0     385   7.8254E-06 0.0003 0.0000 10.0     451
   3145728000   6.6773E-06 0.0003 0.0000  7.2     385   7.8247E-06 0.0003 0.0000  7.4     451
   4194304000   6.6748E-06 0.0002 0.0000  7.4     372   7.8248E-06 0.0002 0.0000  7.8     435
   5242880000   6.6753E-06 0.0002 0.0000  5.1     375   7.8248E-06 0.0002 0.0000  8.2     439
   6291456000   6.6758E-06 0.0002 0.0000  5.4     376   7.8248E-06 0.0002 0.0000  6.1     441
   7340032000   6.6756E-06 0.0002 0.0000  6.4     378   7.8258E-06 0.0002 0.0000  6.4     442
   8388608000   6.6755E-06 0.0002 0.0000  5.6     379   7.8252E-06 0.0002 0.0000  8.5     443
   9437184000   6.6750E-06 0.0002 0.0000  6.7     379   7.8249E-06 0.0001 0.0000  9.7     444
  10485760000   6.6750E-06 0.0002 0.0000  6.6     380   7.8249E-06 0.0001 0.0000 10.0     445
  11534336000   6.6751E-06 0.0001 0.0000  6.7     381   7.8254E-06 0.0001 0.0000 10.0     445
  12582912000   6.6751E-06 0.0001 0.0000  5.9     381   7.8254E-06 0.0001 0.0000 10.0     446
  13631488000   6.6748E-06 0.0001 0.0000  6.4     381   7.8251E-06 0.0001 0.0000 10.0     446
  14680064000   6.6749E-06 0.0001 0.0000  6.5     382   7.8251E-06 0.0001 0.0000 10.0     447
  15728640000   6.6748E-06 0.0001 0.0000  6.8     382   7.8249E-06 0.0001 0.0000 10.0     447
  16777216000   6.6748E-06 0.0001 0.0000  7.8     382   7.8251E-06 0.0001 0.0000 10.0     447
  17825792000   6.6749E-06 0.0001 0.0000  6.6     382   7.8253E-06 0.0001 0.0000 10.0     448
  18576189131   6.6751E-06 0.0001 0.0000  8.0     382   7.8254E-06 0.0001 0.0000  9.3     448

 ***********************************************************************************************************************

 dump no.  168 on file inpr     nps = 18576189131     coll =    38908978047     ctm =   200000.29   nrn =     
 581712682811

        14 warning messages so far.


 run terminated when it had used*****  minutes of computer time.

 computer time =******** minutes

 mcnp     version 6     06/19/14                     08/06/17 01:34:11                     probid =  08/05/17 17:13:59 
