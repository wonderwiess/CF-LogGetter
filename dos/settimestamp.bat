@rem $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
@rem $$                                                             $$
@rem $$ ----------------------------------------------------------  $$
@rem $$                         PURPOSE                             $$
@rem $$ ----------------------------------------------------------  $$
@rem $$                                                             $$
@rem $$  SETS THE TIMESTAMP IN THE FORMAT D-yyyy-mm-dd-T_hh_mm_ss   $$
@rem $$  AND STORED IN THE VARIABLE TS                              $$
@rem $$                                                             $$
@rem $$ ----------------------------------------------------------  $$
@rem $$                          SYNTAX                             $$
@rem $$ ----------------------------------------------------------  $$
@rem $$                                                             $$
@rem $$  SETTIMESTAMP                                               $$
@rem $$ ----------------------------------------------------------  $$
@rem $$                          OUTPUT                             $$
@rem $$ ----------------------------------------------------------  $$
@rem $$                                                             $$
@rem $$  Variable: %ts%                                             $$
@rem $$            with date in the format D-yyyy-mm-dd-T_hh_mm_ss  $$
@rem $$                                                             $$
@rem $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

@rem reformat the timestamp
@for /f %%I in ('wmic os get localdatetime ^|find "20"') do @set dt=%%I
@rem date format is now YYYYMMDDhhmmss...

@set ts=D-%dt:~0,4%-%dt:~4,2%-%dt:~6,2%-T_%dt:~8,2%_%dt:~10,2%_%dt:~12,2%

@rem echo %ts%