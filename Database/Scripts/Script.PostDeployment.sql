/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

INSERT INTO [Owner] ([OwnerID], [Surname], [GivenName], [Phone]) VALUES
(1, 'Sinatra', 'Frank', 400111222),
(2, 'Ellington', 'Duke', 400222333),
(3, 'Fitzgerald', 'Ella', 400333444);

INSERT INTO [Procedure] ([ProcedureID], [Description], [Price]) VALUES
(01, 'Rabies Vaccination', $24.00),
(10, 'Examine and Treat Wound', $30.00),
(05, 'Heart Worm Test', $25.00),
(08, 'Tetnus Vaccination', $17.00);

INSERT INTO [Pet] ([PetID], [PetName], [Type], [OwnerID]) VALUES
(1, 'Buster', 'Dog', 1),
(2, 'Fluffy', 'Cat', 1),
(3, 'Stew', 'Rabbit', 2),
(4, 'Buster', 'Dog', 3),
(5, 'Pooper', 'Dog', 3);

INSERT INTO [Treatment] ([TreatmentID], [PetName], [OwnerID], [ProcedureID], [Date], [Notes], [Price]) VALUES
(1,'Buster', 1, 01, '06/20/2017', 'Routine Vaccination', $22.00),
(2,'Buster', 1, 01, '05/15/2018', 'Booster Shot', $24.00),
(3, 'Fluffy', 1, 10, '05/10/2018', 'Wounds sustained in apparent cat fight.', $30.00),
(4, 'Stew', 2, 10, '05/10/2018', 'Wounds sustained during attemot to cook the stew', $30.00),
(5, 'Pooper', 3, 05, '05/18/2018', 'Routine Test', $25.00);
