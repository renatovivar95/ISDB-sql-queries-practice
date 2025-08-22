USE ProjectDB;
GO
SELECT District, Municipality, Parish, Year, SUM(ActiveEnergy) AS ActiveEnergy 
FROM Energy.MonthlyConsumption AS C 
WHERE ActiveEnergy > ( 
SELECT AVG(ActiveEnergy) 
FROM Energy.MonthlyConsumption AS D 
WHERE D.Year = C.Year 
AND D.Municipality = C.Municipality 
GROUP BY Year, Municipality 
) 
GROUP BY District, Municipality, Parish, Year 
ORDER BY Parish, Year;
GO


USE ProjectDB;
GO
SELECT Energy.DistrictMunicipalityParishCode, 
       Energy.District, 
       Energy.Municipality, 
       Energy.Parish, 
       Energy.ActiveEnergy, 
       Contracts.NumberContracts, 
       Energy.ActiveEnergy / Contracts.NumberContracts AS EnergyPerContract 
FROM (SELECT DistrictMunicipalityParishCode, 
             District, 
             Municipality, 
             Parish, 
             SUM(ActiveEnergy) AS ActiveEnergy 
      FROM Energy.MonthlyConsumption 
      GROUP BY DistrictMunicipalityParishCode, 
               District, 
               Municipality, 
               Parish) AS Energy, 
     (SELECT DistrictMunicipalityParishCode, 
             District, 
             Municipality, 
             Parish, 
             SUM(NumberContracts) AS NumberContracts 
      FROM Energy.ActiveContracts 
      GROUP BY DistrictMunicipalityParishCode, 
               District, 
               Municipality, 
               Parish) AS Contracts 
WHERE Energy.DistrictMunicipalityParishCode = 
      Contracts.DistrictMunicipalityParishCode 
AND Energy.District IN ('Lisboa', 'Porto') 
ORDER BY Energy.District, 
         Energy.Municipality, 
         Energy.Parish ;
GO
