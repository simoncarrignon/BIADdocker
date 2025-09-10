SET FOREIGN_KEY_CHECKS=0;

LOAD DATA INFILE '/var/lib/mysql-files/sites_import.csv'
INTO TABLE Sites
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE '/var/lib/mysql-files/ABotIsotopes_import.csv'
INTO TABLE ABotIsotopes 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
LOAD DATA INFILE '/var/lib/mysql-files/ABotPhases_import.csv'
INTO TABLE ABotPhases 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
LOAD DATA INFILE '/var/lib/mysql-files/ABotSamples_import.csv'
INTO TABLE ABotSamples 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
LOAD DATA INFILE '/var/lib/mysql-files/C14Ghosts_import.csv'
INTO TABLE C14Ghosts 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
LOAD DATA INFILE '/var/lib/mysql-files/C14Samples_import.csv'
INTO TABLE C14Samples 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
LOAD DATA INFILE '/var/lib/mysql-files/FaunalBiometrics_import.csv'
INTO TABLE FaunalBiometrics 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
LOAD DATA INFILE '/var/lib/mysql-files/FaunalIsotopes_import.csv'
INTO TABLE FaunalIsotopes 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
LOAD DATA INFILE '/var/lib/mysql-files/FaunalSpecies_import.csv'
INTO TABLE FaunalSpecies 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
LOAD DATA INFILE '/var/lib/mysql-files/GraveConstruction_import.csv'
INTO TABLE GraveConstruction 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
LOAD DATA INFILE '/var/lib/mysql-files/GraveIndividuals_import.csv'
INTO TABLE GraveIndividuals 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
LOAD DATA INFILE '/var/lib/mysql-files/Graves_import.csv'
INTO TABLE Graves 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
LOAD DATA INFILE '/var/lib/mysql-files/Health_import.csv'
INTO TABLE Health 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
LOAD DATA INFILE '/var/lib/mysql-files/HumanIsotopes_import.csv'
INTO TABLE HumanIsotopes 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
LOAD DATA INFILE '/var/lib/mysql-files/MaterialCulture_import.csv'
INTO TABLE MaterialCulture 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
LOAD DATA INFILE '/var/lib/mysql-files/PhaseCitation_import.csv'
INTO TABLE PhaseCitation 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
LOAD DATA INFILE '/var/lib/mysql-files/PhaseOrder_import.csv'
INTO TABLE PhaseOrder 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
LOAD DATA INFILE '/var/lib/mysql-files/PhaseTypes_import.csv'
INTO TABLE PhaseTypes 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
LOAD DATA INFILE '/var/lib/mysql-files/Phases_import.csv'
INTO TABLE Phases 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
LOAD DATA INFILE '/var/lib/mysql-files/Rites_import.csv'
INTO TABLE Rites 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
LOAD DATA INFILE '/var/lib/mysql-files/Strontium_import.csv'
INTO TABLE Strontium 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
LOAD DATA INFILE '/var/lib/mysql-files/StrontiumEnvironment_import.csv'
INTO TABLE StrontiumEnvironment 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
LOAD DATA INFILE '/var/lib/mysql-files/StrontiumSequences_import.csv'
INTO TABLE StrontiumSequences 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
