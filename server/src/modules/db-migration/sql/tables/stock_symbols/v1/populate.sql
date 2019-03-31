-- Use bulk insert for production
-- create temporary table stock_symbols_load (
-- 	"Symbol" text,
-- 	"Name" text,
-- 	"LastSale" text,
-- 	"MarketCap" text,
-- 	"IPOyear" text,
-- 	"Sector" text,
-- 	"Industry" text,
-- 	"SummaryQuote" text
-- );

-- copy stock_symbols_load ("Symbol", "Name", "LastSale", "MarketCap", "IPOyear", "Sector", "Industry", "SummaryQuote")
-- from '/home/jacques/autocomplete_data/nasdaq_company_list.csv'
-- csv header;

-- insert into public.stock_symbols(exchange_id, symbol, "name")
-- select (select exchange_id from public.exchanges where "name" = 'NASDAQ'), n."Symbol",  n."Name"
-- from stock_symbols_load n;

-- delete from stock_symbols_load;

-- copy stock_symbols_load ("Symbol", "Name", "LastSale", "MarketCap", "IPOyear", "Sector", "Industry", "SummaryQuote")
-- from '/home/jacques/autocomplete_data/nyse_company_list.csv'
-- csv header;

-- insert into public.stock_symbols(exchange_id, symbol, "name")
-- select (select exchange_id from public.exchanges where "name" = 'NYSE'), n."Symbol", n."Name"
-- from stock_symbols_load n;

-- delete from stock_symbols_load;

-- copy stock_symbols_load ("Symbol", "Name", "LastSale", "MarketCap", "IPOyear", "Sector", "Industry", "SummaryQuote")
-- from '/home/jacques/autocomplete_data/nyse_american_company_list.csv'
-- csv header;

-- insert into public.stock_symbols(exchange_id, symbol, "name")
-- select (select exchange_id from public.exchanges where "name" = 'NYSE American'), n."Symbol", n."Name"
-- from stock_symbols_load n;

-- drop table stock_symbols_load;

-- delete from public.stock_symbols where symbol like '%^%';

-- delete from public.stock_symbols
-- where symbol like 'ATEST%';
-- delete from public.stock_symbols
-- where symbol like '%.WS ~ %';

-- update public.stock_symbols
-- set "name" = replace("name", '&#39;', '''');

INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1386, 1, 'GLUU', 'Glu Mobile Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1567, 1, 'ICAD', 'icad inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2064, 1, 'MNOV', 'MediciNova, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2661, 1, 'RNWK', 'RealNetworks, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2897, 1, 'SP', 'SP Plus Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3247, 1, 'VTEC', 'Valtech SE');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3354, 1, 'VUZI', 'Vuzix Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3467, 1, 'ZYNE', 'Zynerba Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3468, 1, 'ZNGA', 'Zynga Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3469, 2, 'DDD', '3D Systems Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3470, 2, 'MMM', '3M Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3471, 2, 'WBAI', '500.com Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3472, 2, 'WUBA', '58.com Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3473, 2, 'EGHT', '8x8 Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3474, 2, 'AHC', 'A.H. Belo Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3475, 2, 'ATEN', 'A10 Networks, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3476, 2, 'AAC', 'AAC Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3477, 2, 'AIR', 'AAR Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3478, 2, 'AAN', 'Aaron''s,  Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3479, 2, 'ABB', 'ABB Ltd');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3480, 2, 'ABT', 'Abbott Laboratories');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3481, 2, 'ABBV', 'AbbVie Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3482, 2, 'ANF', 'Abercrombie & Fitch Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3583, 2, 'AXL', 'American Axle & Manufacturing Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3584, 2, 'ACC', 'American Campus Communities Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3585, 2, 'AEO', 'American Eagle Outfitters, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3586, 2, 'AEP', 'American Electric Power Company, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3587, 2, 'AEL', 'American Equity Investment Life Holding Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3588, 2, 'AXP', 'American Express Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3589, 2, 'AFG', 'American Financial Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3590, 2, 'AFGE', 'American Financial Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3591, 2, 'AFGH', 'American Financial Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3592, 2, 'AMH', 'American Homes 4 Rent');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3598, 2, 'AIG', 'American International Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3599, 2, 'AIG.WS', 'American International Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3600, 2, 'AMID', 'American Midstream Partners, LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3601, 2, 'ARL', 'American Realty Investors, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3602, 2, 'ARA', 'American Renal Associates Holdings, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3603, 2, 'AWR', 'American States Water Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3604, 2, 'AMT', 'American Tower Corporation (REIT)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3605, 2, 'AVD', 'American Vanguard Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3606, 2, 'AWK', 'American Water Works');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3607, 2, 'COLD', 'Americold Realty Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3608, 2, 'APU', 'AmeriGas Partners, L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3609, 2, 'AMP', 'AMERIPRISE FINANCIAL SERVICES, INC.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3610, 2, 'ABC', 'AmerisourceBergen Corporation (Holding Co)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3611, 2, 'ANFI', 'Amira Nature Foods Ltd');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3612, 2, 'AMN', 'AMN Healthcare Services Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3613, 2, 'AMRX', 'Amneal Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3695, 2, 'AIW', 'Arlington Asset Investment Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3696, 2, 'ARLO', 'Arlo Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3697, 2, 'ARLO$', 'Arlo Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3698, 2, 'AHH', 'Armada Hoffler Properties, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3699, 2, 'ARR', 'ARMOUR Residential REIT, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3702, 2, 'AFI', 'Armstrong Flooring, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3703, 2, 'AWI', 'Armstrong World Industries Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3704, 2, 'ARW', 'Arrow Electronics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3705, 2, 'AJG', 'Arthur J. Gallagher & Co.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3706, 2, 'APAM', 'Artisan Partners Asset Management Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3707, 2, 'ASA', 'ASA Gold and Precious Metals Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3708, 2, 'ABG', 'Asbury Automotive Group Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3709, 2, 'ASX', 'ASE Technology Holding Co., Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3710, 2, 'ASGN', 'ASGN Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3711, 2, 'AHT', 'Ashford Hospitality Trust Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3717, 2, 'ASH', 'Ashland Global Holdings Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3718, 2, 'APB', 'Asia Pacific Fund, Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3719, 2, 'ASPN', 'Aspen Aerogels, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3720, 2, 'AHL', 'Aspen Insurance Holdings Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3723, 2, 'ASB', 'Associated Banc-Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3727, 2, 'AC', 'Associated Capital Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3728, 2, 'AIZ', 'Assurant, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3729, 2, 'AIZP', 'Assurant, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3730, 2, 'AGO', 'Assured Guaranty Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3734, 2, 'AZN', 'Astrazeneca PLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3735, 2, 'HOME', 'At Home Group Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3736, 2, 'T', 'AT&T Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3737, 2, 'TBB', 'AT&T Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3738, 2, 'TBC', 'AT&T Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3739, 2, 'ATTO', 'Atento S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3740, 2, 'ATH', 'Athene Holding Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3741, 2, 'ATKR', 'Atkore International Group Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3742, 2, 'AT', 'Atlantic Power Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3744, 2, 'AUO', 'AU Optronics Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3814, 2, 'BCS', 'Barclays PLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3815, 2, 'BBDC', 'Barings BDC, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3816, 2, 'MCI', 'Barings Corporate Investors');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3817, 2, 'MPV', 'Barings Participation Investors');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3819, 2, 'BKS', 'Barnes & Noble, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3922, 2, 'BSE', 'Blackrock New York Municipal Income Quality Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3923, 2, 'BFY', 'BlackRock New York Municipal Income Trust II');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3924, 2, 'BCX', 'BlackRock Resources');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3925, 2, 'BST', 'BlackRock Science and Technology Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3926, 2, 'BSD', 'BlackRock Strategic Municipal Trust Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3927, 2, 'BUI', 'BlackRock Utility, Infrastructure & Power Opportun');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3928, 2, 'BHV', 'BlackRock Virginia Municipal Bond Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3929, 2, 'BLK', 'BlackRock, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4042, 2, 'CSU', 'Capital Senior Living Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4043, 2, 'BXMT', 'Capital Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4044, 2, 'CIC', 'Capitol Investment Corp. IV');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4045, 2, 'CIC.U', 'Capitol Investment Corp. IV');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4046, 2, 'CIC.WS', 'Capitol Investment Corp. IV');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4047, 2, 'CMO', 'Capstead Mortgage Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4049, 2, 'CRR', 'Carbo Ceramics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4050, 2, 'CAH', 'Cardinal Health, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4051, 2, 'CRCM', 'Care.com, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4052, 2, 'CSL', 'Carlisle Companies Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4053, 2, 'KMX', 'CarMax Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4054, 2, 'CCL', 'Carnival Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4055, 2, 'CUK', 'Carnival Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4056, 2, 'CRS', 'Carpenter Technology Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4057, 2, 'CSV', 'Carriage Services, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4058, 2, 'CARS', 'Cars.com Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4059, 2, 'CRI', 'Carter''s, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4060, 2, 'CVNA', 'Carvana Co.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4152, 2, 'CIT', 'CIT Group Inc (DEL)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4153, 2, 'BLW', 'Citigroup Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4154, 2, 'C', 'Citigroup Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4160, 2, 'CFG', 'Citizens Financial Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4161, 2, 'CIA', 'Citizens, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4162, 2, 'CIO', 'City Office REIT, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4164, 2, 'CVEO', 'Civeo Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4165, 2, 'CIVI', 'Civitas Solutions, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4166, 2, 'CLH', 'Clean Harbors, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4167, 2, 'CCO', 'Clear Channel Outdoor Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4168, 2, 'EMO', 'ClearBridge Energy Midstream Opportunity Fund Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4169, 2, 'CEM', 'ClearBridge MLP and Midstream Fund Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4170, 2, 'CTR', 'ClearBridge MLP and Midstream Total Return Fund In');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4171, 2, 'CLW', 'Clearwater Paper Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4264, 2, 'CORR', 'CorEnergy Infrastructure Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4266, 2, 'CPLG', 'CorePoint Lodging Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4267, 2, 'COR', 'CoreSite Realty Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4268, 2, 'GLW', 'Corning Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4269, 2, 'CAAP', 'Corporacion America Airports SA');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4270, 2, 'GYC', 'Corporate Asset Backed Corp CABCO');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4271, 2, 'OFC', 'Corporate Office Properties Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4272, 2, 'CZZ', 'Cosan Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4273, 2, 'CMRE', 'Costamare Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4278, 2, 'COT', 'Cott Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4279, 2, 'COTY', 'Coty Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4280, 2, 'CUZ', 'Cousins Properties Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4281, 2, 'CVA', 'Covanta Holding Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4282, 2, 'CVIA', 'Covia Holdings Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4283, 2, 'CPF', 'CPB Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4284, 2, 'CPL', 'CPFL Energia S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4285, 2, 'CR', 'Crane Co.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4286, 2, 'CRD.A', 'Crawford & Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4385, 2, 'DEI', 'Douglas Emmett, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4386, 2, 'DOV', 'Dover Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4387, 2, 'DDE', 'Dover Downs Gaming & Entertainment Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4388, 2, 'DVD', 'Dover Motorsports, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4389, 2, 'DWDP', 'DowDuPont Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4390, 2, 'RDY', 'Dr. Reddy''s Laboratories Ltd');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4391, 2, 'DRD', 'DRDGOLD Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4392, 2, 'DCF', 'Dreyfus Alcentra');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4393, 2, 'DHF', 'Dreyfus High Yield Strategies Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4394, 2, 'DMB', 'Dreyfus Municipal Bond Infrastructure Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4496, 2, 'ENBL', 'Enable Midstream Partners, LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4497, 2, 'ENB', 'Enbridge Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4498, 2, 'ENBA', 'Enbridge Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4499, 2, 'ECA', 'Encana Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4500, 2, 'EHC', 'Encompass Health Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4501, 2, 'DAVA', 'Endava plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4502, 2, 'EXK', 'Endeavour Silver Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4503, 2, 'ENIA', 'Enel Americas S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4504, 2, 'ENIC', 'Enel Chile S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4505, 2, 'EOCC', 'Enel Generacion Chile S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4506, 2, 'ENR', 'Energizer Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4507, 2, 'EPC', 'Energizer Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4508, 2, 'ET', 'Energy Transfer L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4511, 2, 'ERF', 'Enerplus Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4617, 2, 'FIS', 'Fidelity National Information Services, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4618, 2, 'FMO', 'Fiduciary/Claymore Energy Infrastructure Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4619, 2, 'FAF', 'First American Corporation (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4620, 2, 'FBP', 'First BanCorp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4621, 2, 'FCF', 'First Commonwealth Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4622, 2, 'FDC', 'First Data Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4623, 2, 'FHN', 'First Horizon National Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4625, 2, 'FR', 'First Industrial Realty Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4626, 2, 'AG', 'First Majestic Silver Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4627, 2, 'FRC', 'FIRST REPUBLIC BANK');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4634, 2, 'FFA', 'First Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4635, 2, 'FMY', 'First Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4636, 2, 'FDEU', 'First Trust Dynamic Europe Equity Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4637, 2, 'FIF', 'First Trust Energy Infrastructure Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4638, 2, 'FSD', 'First Trust High Income Long Short Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4639, 2, 'FPF', 'First Trust Intermediate Duration Preferred & Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4640, 2, 'FEI           ', 'First Trust MLP and Energy Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4641, 2, 'FPL', 'First Trust New Opportunities MLP & Energy Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4642, 2, 'FIV', 'First Trust Senior Floating Rate 2022 Target Term Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4643, 2, 'FCT', 'First Trust Senior Floating Rate Income Fund II');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4644, 2, 'FGB', 'First Trust Specialty Finance and Financial Opportunities Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4727, 2, 'GTES', 'Gates Industrial Corporation plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4728, 2, 'GATX', 'GATX Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4729, 2, 'GMTA', 'GATX Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4730, 2, 'GZT', 'Gazit-Globe Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4731, 2, 'GCP', 'GCP Applied Technologies Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4732, 2, 'GNK', 'Genco Shipping & Trading Limited ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4733, 2, 'GNRC', 'Generac Holdlings Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4734, 2, 'GAM', 'General American Investors, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4736, 2, 'GD', 'General Dynamics Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4737, 2, 'GE', 'General Electric Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4738, 2, 'GIS', 'General Mills, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4739, 2, 'GM', 'General Motors Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4740, 2, 'GM.WS.B', 'General Motors Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4741, 2, 'GCO', 'Genesco Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4745, 2, 'GNE', 'Genie Energy Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4844, 2, 'HBI', 'Hanesbrands Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4845, 2, 'HNGR', 'Hanger, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4846, 2, 'HASI', 'Hannon Armstrong Sustainable Infrastructure Capital, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4847, 2, 'HOG', 'Harley-Davidson, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4848, 2, 'HMY', 'Harmony Gold Mining Company Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4849, 2, 'HRS', 'Harris Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4850, 2, 'HSC', 'Harsco Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4851, 2, 'HHS', 'Harte-Hanks, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4852, 2, 'HGH', 'Hartford Financial Services Group, Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4853, 2, 'HIG', 'Hartford Financial Services Group, Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4860, 2, 'HCHC', 'HC2 Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4963, 2, 'INSP', 'Inspire Medical Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4964, 2, 'IBP', 'Installed Building Products, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4965, 2, 'INST', 'Instructure, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4966, 2, 'ITGR', 'Integer Holdings Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4967, 2, 'I', 'Intelsat S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4968, 2, 'ICE', 'Intercontinental Exchange Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4969, 2, 'IHG', 'Intercontinental Hotels Group');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4970, 2, 'IBM', 'International Business Machines Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4971, 2, 'IFF', 'International Flavors & Fragrances, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4972, 2, 'IFFT', 'International Flavors & Fragrances, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4973, 2, 'IGT', 'International Game Technology');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4974, 2, 'IP', 'International Paper Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4975, 2, 'INSW', 'International Seaways, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4977, 2, 'IPG', 'Interpublic Group of Companies, Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4979, 2, 'INXN', 'InterXion Holding N.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4980, 2, 'IPI', 'Intrepid Potash, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4981, 2, 'IVC', 'Invacare Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5075, 2, 'KAR', 'KAR Auction Services, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5076, 2, 'KMF', 'Kayne Anderson Midstream Energy Fund, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5077, 2, 'KYN', 'Kayne Anderson MLP/Midstream Investment Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5079, 2, 'KB', 'KB Financial Group Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5080, 2, 'KBH', 'KB Home');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5081, 2, 'KBR', 'KBR, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5082, 2, 'FRAC', 'Keane Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5083, 2, 'K', 'Kellogg Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5084, 2, 'KEM', 'Kemet Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5085, 2, 'KMPA', 'Kemper Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5086, 2, 'KMPR', 'Kemper Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5196, 2, 'LPX', 'Louisiana-Pacific Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5197, 2, 'LOW', 'Lowe''s Companies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5198, 2, 'LXU', 'Lsb Industries Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5199, 2, 'LKSD', 'LSC Communications, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5200, 2, 'LTC', 'LTC Properties, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5201, 2, 'LUB', 'Luby''s, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5202, 2, 'LL', 'Lumber Liquidators Holdings, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5203, 2, 'LXFR', 'Luxfer Holdings PLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5204, 2, 'LXFT', 'Luxoft Holding, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5315, 2, 'MFGP', 'Micro Focus Intl PLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5316, 2, 'MAA', 'Mid-America Apartment Communities, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5318, 2, 'MSL', 'MidSouth Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5319, 2, 'MPO', 'MIDSTATES PETROLEUM COMPANY, INC.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5320, 2, 'MCRN', 'Milacron Holdings Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5321, 2, 'MLR', 'Miller Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5322, 2, 'HIE', 'Miller/Howard High Income Equity Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5323, 2, 'MTX', 'Minerals Technologies Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5324, 2, 'MG', 'Mistras Group Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5325, 2, 'MUFG', 'Mitsubishi UFJ Financial Group Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5326, 2, 'MIXT', 'MiX Telematics Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5327, 2, 'MFG', 'Mizuho Financial Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5328, 2, 'MBT', 'Mobile TeleSystems OJSC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5329, 2, 'MODN', 'Model N, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5431, 2, 'NEWR', 'New Relic, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5432, 2, 'NRZ', 'New Residential Investment Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5433, 2, 'SNR', 'New Senior Investment Group Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5434, 2, 'NYCB', 'New York Community Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5437, 2, 'NYT', 'New York Times Company (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5438, 2, 'NFX', 'Newfield Exploration Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5439, 2, 'NJR', 'NewJersey Resources Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5440, 2, 'NEU', 'NewMarket Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5441, 2, 'NEM', 'Newmont Mining Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5442, 2, 'NR', 'Newpark Resources, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5443, 2, 'NEXA', 'Nexa Resources S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5538, 2, 'NNY', 'Nuveen New York Municipal Value Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5539, 2, 'NAN', 'Nuveen New York Quality Municipal Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5540, 2, 'NNC', 'Nuveen North Carolina Quality Municipal Income Fd');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5541, 2, 'NUO', 'Nuveen Ohio Quality Municipal Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5542, 2, 'NPN', 'Nuveen Pennsylvania Municipal Value Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5543, 2, 'NQP', 'Nuveen Pennsylvania Quality Municipal Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5544, 2, 'JPC', 'Nuveen Preferred & Income Opportunities Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5545, 2, 'JPS', 'Nuveen Preferred & Income Securities Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5546, 2, 'JPT', 'Nuveen Preferred and Income 2022 Term Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5547, 2, 'JPI', 'Nuveen Preferred and Income Term Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5654, 2, 'PFSI', 'PennyMac Financial Services, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5655, 2, 'PMT', 'PennyMac Mortgage Investment Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5658, 2, 'PAG', 'Penske Automotive Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5659, 2, 'PNR', 'Pentair plc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5660, 2, 'PEN', 'Penumbra, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5661, 2, 'PFGC', 'Performance Food Group Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5662, 2, 'PKI', 'PerkinElmer, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5663, 2, 'PBT', 'Permian Basin Royalty Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5664, 2, 'PVL', 'Permianville Royalty Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5665, 2, 'PRT', 'PermRock Royalty Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5666, 2, 'PRGO', 'Perrigo Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5667, 2, 'PRSP', 'Perspecta Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5765, 2, 'PSB', 'PS Business Parks, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5771, 2, 'TLK', 'PT Telekomunikasi Indonesia, Tbk');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5772, 2, 'PEG', 'Public Service Enterprise Group Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5773, 2, 'PSA', 'Public Storage');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5787, 2, 'PHM', 'PulteGroup, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5788, 2, 'PSTG', 'Pure Storage, Inc. ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5789, 2, 'PMM', 'Putnam Managed Municipal Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5790, 2, 'PIM', 'Putnam Master Intermediate Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5791, 2, 'PMO', 'Putnam Municipal Opportunities Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5792, 2, 'PPT', 'Putnam Premier Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5793, 2, 'NEW', 'Puxin Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5794, 2, 'PVH', 'PVH Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5795, 2, 'PYX', 'Pyxus International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5796, 2, 'PZN', 'Pzena Investment Management Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5797, 2, 'QTWO', 'Q2 Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5798, 2, 'QEP', 'QEP Resources, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5799, 2, 'QGEN', 'Qiagen N.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5800, 2, 'QTS', 'QTS Realty Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5803, 2, 'QUAD', 'Quad Graphics, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5804, 2, 'KWR', 'Quaker Chemical Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5805, 2, 'NX', 'Quanex Building Products Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5806, 2, 'PWR', 'Quanta Services, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5807, 2, 'QTM', 'Quantum Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5808, 2, 'QD', 'Qudian Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5809, 2, 'DGX', 'Quest Diagnostics Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5810, 2, 'QES', 'Quintana Energy Services Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5811, 2, 'QHC', 'Quorum Health Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5812, 2, 'QUOT', 'Quotient Technology Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5885, 2, 'OPP', 'RiverNorth/DoubleLine Strategic Opportunity Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5886, 2, 'RLI', 'RLI Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5887, 2, 'RLJ', 'RLJ Lodging Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5889, 2, 'RRTS', 'Roadrunner Transportation Systems, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5890, 2, 'ROAN', 'Roan Resources, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5891, 2, 'RHI', 'Robert Half International Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5892, 2, 'ROK', 'Rockwell Automation, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5893, 2, 'RCI', 'Rogers Communication, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5894, 2, 'ROG', 'Rogers Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5895, 2, 'ROL', 'Rollins, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5896, 2, 'ROP', 'Roper Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5897, 2, 'RST', 'Rosetta Stone');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5898, 2, 'RDC', 'Rowan Companies plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5899, 2, 'RY', 'Royal Bank Of Canada');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5901, 2, 'RBS', 'Royal Bank Scotland plc (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6004, 2, 'SPG', 'Simon Property Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6006, 2, 'SSD', 'Simpson Manufacturing Company, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6007, 2, 'SHI', 'SINOPEC Shangai Petrochemical Company, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6008, 2, 'SITC', 'SITE Centers Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6012, 2, 'SITE', 'SiteOne Landscape Supply, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6013, 2, 'SIX', 'Six Flags Entertainment Corporation New');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6014, 2, 'SJW', 'SJW Group');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6015, 2, 'SKM', 'SK Telecom Co., Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6016, 2, 'SKX', 'Skechers U.S.A., Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6017, 2, 'SKY', 'Skyline Champion Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6018, 2, 'SLG', 'SL Green Realty Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6020, 2, 'SM', 'SM Energy Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6021, 2, 'SFS', 'Smart');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6023, 2, 'SMAR', 'Smartsheet Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6024, 2, 'SNN', 'Smith & Nephew SNATS, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6025, 2, 'AOS', 'Smith (A.O.) Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6026, 2, 'SNAP', 'Snap Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6027, 2, 'SNA', 'Snap-On Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6028, 2, 'IPOA', 'Social Capital Hedosophia Holdings Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6029, 2, 'IPOA.U', 'Social Capital Hedosophia Holdings Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6032, 2, 'SOGO', 'Sogou Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6120, 2, 'INN', 'Summit Hotel Properties, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6123, 2, 'SUM', 'Summit Materials, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6124, 2, 'SMLP', 'Summit Midstream Partners, LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6125, 2, 'SUI', 'Sun Communities, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6126, 2, 'SLF', 'Sun Life Financial Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6127, 2, 'SXCP', 'SunCoke Energy Partners, L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6128, 2, 'SXC', 'SunCoke Energy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6129, 2, 'SU', 'Suncor Energy  Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6130, 2, 'STG', 'Sunlands Online Education Group');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6131, 2, 'SUN', 'Sunoco LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6132, 2, 'SHO', 'Sunstone Hotel Investors, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6135, 2, 'STI', 'SunTrust Banks, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6136, 2, 'STI.WS.A', 'SunTrust Banks, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6138, 2, 'SPN', 'Superior Energy Services, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6139, 2, 'SUP', 'Superior Industries International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6177, 2, 'TISI', 'Team, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6238, 2, 'COO', 'The Cooper Companies, Inc. ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6239, 2, 'GRX', 'The Gabelli Healthcare & Wellness Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6242, 2, 'GDL', 'The GDL Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6244, 2, 'THG', 'The Hanover Insurance Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6245, 2, 'THGA', 'The Hanover Insurance Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6246, 2, 'MSG', 'The Madison Square Garden Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6247, 2, 'RUBI', 'The Rubicon Project, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6248, 2, 'TRV', 'The Travelers Companies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6249, 2, 'VAM', 'The Vivaldi Opportunities Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6250, 2, 'TMO', 'Thermo Fisher Scientific Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6251, 2, 'THR', 'Thermon Group Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6252, 2, 'TPRE', 'Third Point Reinsurance Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6253, 2, 'TSLF', 'THL Credit Senior Loan Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6254, 2, 'TCRW', 'THL Credit, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6255, 2, 'TCRZ', 'THL Credit, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6256, 2, 'TRI', 'Thomson Reuters Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6257, 2, 'THO', 'Thor Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6258, 2, 'TDW', 'Tidewater Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6259, 2, 'TDW.WS.A', 'Tidewater Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6260, 2, 'TDW.WS.B', 'Tidewater Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6261, 2, 'TIER', 'TIER REIT, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6262, 2, 'TIF', 'Tiffany & Co.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6356, 2, 'UA', 'Under Armour, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6357, 2, 'UAA', 'Under Armour, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6358, 2, 'UFI', 'Unifi, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6359, 2, 'UNF', 'Unifirst Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6360, 2, 'UN', 'Unilever NV');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6361, 2, 'UL', 'Unilever PLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6362, 2, 'LTN', 'Union Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6363, 2, 'LTN.U', 'Union Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6364, 2, 'LTN.WS', 'Union Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6365, 2, 'LTN~', 'Union Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6366, 2, 'UNP', 'Union Pacific Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6367, 2, 'UIS', 'Unisys Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6474, 2, 'WAGE', 'WageWorks, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6475, 2, 'WD', 'Walker & Dunlop, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6476, 2, 'WMT', 'Walmart Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6477, 2, 'DIS', 'Walt Disney Company (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6478, 2, 'HCC', 'Warrior Met Coal, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6479, 2, 'WPG', 'Washington Prime Group Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6482, 2, 'WRE', 'Washington Real Estate Investment Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6483, 2, 'WCN', 'Waste Connections, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6484, 2, 'WM', 'Waste Management, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6485, 2, 'WAT', 'Waters Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6486, 2, 'WSO', 'Watsco, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6487, 2, 'WSO.B', 'Watsco, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6488, 2, 'WTS', 'Watts Water Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6489, 2, 'W', 'Wayfair Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6490, 2, 'WFT', 'Weatherford International plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6491, 2, 'WBS', 'Webster Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6587, 2, 'YUMC', 'Yum China Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6588, 2, 'YUM', 'Yum! Brands, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6589, 2, 'ZAYO', 'Zayo Group Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6590, 2, 'ZEN', 'Zendesk, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6591, 2, 'ZBH', 'Zimmer Biomet Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6595, 2, 'ZBK', 'Zions Bancorporation N.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6596, 2, 'ZTS', 'Zoetis Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6597, 2, 'ZTO', 'ZTO Express (Cayman) Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6598, 2, 'ZUO', 'Zuora, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6701, 3, 'EIM', 'Eaton Vance Municipal Bond Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6702, 3, 'EIV', 'Eaton Vance Municipal Bond Fund II');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6703, 3, 'EMJ', 'Eaton Vance New Jersey Municipal Bond Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6704, 3, 'EVJ', 'Eaton Vance New Jersey Municipal Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6705, 3, 'ENX', 'Eaton Vance New York Municipal Bond Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6706, 3, 'EVY', 'Eaton Vance New York Municipal Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6707, 3, 'EIO', 'Eaton Vance Ohio Municipal Bond Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6754, 3, 'IBIO', 'iBio, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1, 1, 'YI', '111, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2, 1, 'PIH', '1347 Property Insurance Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3, 1, 'PIHPP', '1347 Property Insurance Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4, 1, 'TURN', '180 Degree Capital Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5, 1, 'FLWS', '1-800 FLOWERS.COM, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6, 1, 'FCCY', '1st Constitution Bancorp (NJ)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(7, 1, 'SRCE', '1st Source Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(8, 1, 'VNET', '21Vianet Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(9, 1, 'TWOU', '2U, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(10, 1, 'TPNL', '3PEA International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(11, 1, 'JOBS', '51job, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(12, 1, 'EGHT', '8x8 Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(13, 1, 'AAON', 'AAON, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(14, 1, 'ABEO', 'Abeona Therapeutics Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(15, 1, 'ABEOW', 'Abeona Therapeutics Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(16, 1, 'ABIL', 'Ability Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(17, 1, 'ABMD', 'ABIOMED, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(18, 1, 'ABP', 'Abpro Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(19, 1, 'AXAS', 'Abraxas Petroleum Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(20, 1, 'ACIU', 'AC Immune SA');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(21, 1, 'ACIA', 'Acacia Communications, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(22, 1, 'ACTG', 'Acacia Research Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(23, 1, 'ACHC', 'Acadia Healthcare Company, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(24, 1, 'ACAD', 'ACADIA Pharmaceuticals Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6848, 3, 'PW', 'Power REIT');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(25, 1, 'ACST', 'Acasti Pharma, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(26, 1, 'AXDX', 'Accelerate Diagnostics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(27, 1, 'ACCP', 'Accelerated Pharma, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(28, 1, 'XLRN', 'Acceleron Pharma Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(29, 1, 'ANCX', 'Access National Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(30, 1, 'ARAY', 'Accuray Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(31, 1, 'ACRX', 'AcelRx Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(32, 1, 'ACER', 'Acer Therapeutics Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(33, 1, 'ACET', 'Aceto Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(34, 1, 'AKAO', 'Achaogen, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(35, 1, 'ACHV', 'Achieve Life Sciences, Inc. ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(36, 1, 'ACHN', 'Achillion Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(37, 1, 'ACIW', 'ACI Worldwide, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(38, 1, 'ACRS', 'Aclaris Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(39, 1, 'ACMR', 'ACM Research, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(40, 1, 'ACNB', 'ACNB Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(41, 1, 'ACOR', 'Acorda Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(42, 1, 'ATVI', 'Activision Blizzard, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(43, 1, 'ADMS', 'Adamas Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(44, 1, 'ADMP', 'Adamis Pharmaceuticals Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(45, 1, 'ADAP', 'Adaptimmune Therapeutics plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(46, 1, 'ADUS', 'Addus HomeCare Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(47, 1, 'AEY', 'ADDvantage Technologies Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(48, 1, 'IOTS', 'Adesto Technologies Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(49, 1, 'ADIL', 'Adial Pharmaceuticals, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(50, 1, 'ADILW', 'Adial Pharmaceuticals, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(51, 1, 'ADMA', 'ADMA Biologics Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(52, 1, 'ADBE', 'Adobe Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(53, 1, 'ADOM', 'ADOMANI, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(54, 1, 'ADTN', 'ADTRAN, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(55, 1, 'ADRO', 'Aduro Biotech, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(56, 1, 'ADES', 'Advanced Emissions Solutions, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(57, 1, 'AEIS', 'Advanced Energy Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(58, 1, 'AMD', 'Advanced Micro Devices, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(59, 1, 'ADXS', 'Advaxis, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(60, 1, 'ADVM', 'Adverum Biotechnologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(61, 1, 'DWMC', 'AdvisorShares Dorsey Wright Micro-Cap ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(62, 1, 'DWSH', 'AdvisorShares Dorsey Wright Short ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(63, 1, 'ACT', 'AdvisorShares Vice ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(64, 1, 'AEGN', 'Aegion Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(65, 1, 'AGLE', 'Aeglea BioTherapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(66, 1, 'AEHR', 'Aehr Test Systems');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(67, 1, 'AMTX', 'Aemetis, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(68, 1, 'AERI', 'Aerie Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(69, 1, 'AVAV', 'AeroVironment, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(70, 1, 'ARPO', 'Aerpio Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(71, 1, 'AEZS', 'AEterna Zentaris Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(72, 1, 'AEMD', 'Aethlon Medical, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(73, 1, 'GNMX', 'Aevi Genomic Medicine, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(74, 1, 'AFMD', 'Affimed N.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(75, 1, 'AGEN', 'Agenus Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(76, 1, 'AGRX', 'Agile Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(77, 1, 'AGYS', 'Agilysys, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(78, 1, 'AGIO', 'Agios Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(79, 1, 'AGMH', 'AGM Group Holdings Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(80, 1, 'AGNC', 'AGNC Investment Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(81, 1, 'AGNCB', 'AGNC Investment Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(82, 1, 'AGNCN', 'AGNC Investment Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(83, 1, 'AGFS', 'AgroFresh Solutions, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(84, 1, 'AGFSW', 'AgroFresh Solutions, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(85, 1, 'ALRN', 'Aileron Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(86, 1, 'AIMT', 'Aimmune Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(87, 1, 'AIRT', 'Air T, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(88, 1, 'ATSG', 'Air Transport Services Group, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(89, 1, 'AIRG', 'Airgain, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(90, 1, 'AMCN', 'AirMedia Group Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(91, 1, 'AKAM', 'Akamai Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(92, 1, 'AKTX', 'Akari Therapeutics Plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(93, 1, 'AKCA', 'Akcea Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(94, 1, 'AKBA', 'Akebia Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(95, 1, 'AKER', 'Akers Biosciences Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(96, 1, 'AKRX', 'Akorn, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(97, 1, 'AKTS', 'Akoustis Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(98, 1, 'ALRM', 'Alarm.com Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(99, 1, 'ALSK', 'Alaska Communications Systems Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(100, 1, 'ALAC', 'Alberton Acquisition Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(101, 1, 'ALACR', 'Alberton Acquisition Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(102, 1, 'ALACU', 'Alberton Acquisition Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(103, 1, 'ALACW', 'Alberton Acquisition Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(104, 1, 'ALBO', 'Albireo Pharma, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(105, 1, 'ABDC', 'Alcentra Capital Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(106, 1, 'ALDR', 'Alder BioPharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(107, 1, 'ALDX', 'Aldeyra Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(108, 1, 'ALXN', 'Alexion Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(109, 1, 'ALCO', 'Alico, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(110, 1, 'ALGN', 'Align Technology, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(111, 1, 'ALIM', 'Alimera Sciences, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(112, 1, 'ALYA', 'Alithya Group inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(113, 1, 'ALJJ', 'ALJ Regional Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(114, 1, 'ALKS', 'Alkermes plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(115, 1, 'ALLK', 'Allakos Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(116, 1, 'ABTX', 'Allegiance Bancshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(117, 1, 'ALGT', 'Allegiant Travel Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(118, 1, 'ALGR', 'Allegro Merger Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(119, 1, 'ALGRR', 'Allegro Merger Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(120, 1, 'ALGRU', 'Allegro Merger Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(121, 1, 'ALGRW', 'Allegro Merger Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(122, 1, 'ALNA', 'Allena Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(123, 1, 'AMMA', 'Alliance MMA, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(124, 1, 'ARLP', 'Alliance Resource Partners, L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(125, 1, 'AHPI', 'Allied Healthcare Products, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(126, 1, 'AMOT', 'Allied Motion Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(127, 1, 'ALQA', 'Alliqua BioMedical, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(128, 1, 'ALLO', 'Allogene Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(129, 1, 'ALLT', 'Allot Communications Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(130, 1, 'MDRX', 'Allscripts Healthcare Solutions, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(131, 1, 'ALNY', 'Alnylam Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(132, 1, 'AOSL', 'Alpha and Omega Semiconductor Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(133, 1, 'GOOG', 'Alphabet Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(134, 1, 'GOOGL', 'Alphabet Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(135, 1, 'SMCP', 'AlphaMark Actively Managed Small Cap ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(136, 1, 'ATEC', 'Alphatec Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(137, 1, 'ALPN', 'Alpine Immune Sciences, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(138, 1, 'AMR', 'Alta Mesa Resources, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(139, 1, 'AMRWW', 'Alta Mesa Resources, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(140, 1, 'AABA', 'Altaba Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(141, 1, 'ALTR', 'Altair Engineering Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(142, 1, 'ALT', 'Altimmune, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(143, 1, 'ASPS', 'Altisource Portfolio Solutions S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(144, 1, 'AIMC', 'Altra Industrial Motion Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(145, 1, 'ALTM', 'Altus Midstream Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(146, 1, 'ALTMW', 'Altus Midstream Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(147, 1, 'ALZH', 'Alzheon, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(148, 1, 'AMAG', 'AMAG Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(149, 1, 'AMAL', 'Amalgamated Bank');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(150, 1, 'AMRN', 'Amarin Corporation plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(151, 1, 'AMRK', 'A-Mark Precious Metals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(152, 1, 'AMZN', 'Amazon.com, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(153, 1, 'AMBC', 'Ambac Financial Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(154, 1, 'AMBCW', 'Ambac Financial Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(155, 1, 'AMBA', 'Ambarella, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(156, 1, 'AMCX', 'AMC Networks Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(157, 1, 'AMCIU', 'AMCI Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(158, 1, 'DOX', 'Amdocs Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(159, 1, 'AMED', 'Amedisys Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(160, 1, 'UHAL', 'Amerco');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(161, 1, 'AMRH', 'Ameri Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(162, 1, 'AMRHW', 'Ameri Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(163, 1, 'ATAX', 'America First Multifamily Investors, L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(164, 1, 'AMOV', 'America Movil, S.A.B. de C.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(165, 1, 'AAL', 'American Airlines Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(166, 1, 'AETI', 'American Electric Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(167, 1, 'AFIN', 'American Finance Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(168, 1, 'AMNB', 'American National Bankshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(169, 1, 'ANAT', 'American National Insurance Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(170, 1, 'AOBC', 'American Outdoor Brands Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(171, 1, 'APEI', 'American Public Education, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(172, 1, 'ARII', 'American Railcar Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(173, 1, 'AMRB', 'American River Bankshares');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(174, 1, 'AMSWA', 'American Software, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(175, 1, 'AMSC', 'American Superconductor Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(176, 1, 'AMWD', 'American Woodmark Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(177, 1, 'CRMT', 'America''s Car-Mart, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(178, 1, 'ABCB', 'Ameris Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(179, 1, 'AMSF', 'AMERISAFE, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(180, 1, 'ASRV', 'AmeriServ Financial Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(181, 1, 'ASRVP', 'AmeriServ Financial Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(182, 1, 'ATLO', 'Ames National Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(183, 1, 'AMGN', 'Amgen Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(184, 1, 'FOLD', 'Amicus Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(185, 1, 'AMKR', 'Amkor Technology, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(186, 1, 'AMPH', 'Amphastar Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(187, 1, 'IBUY', 'Amplify Online Retail ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(188, 1, 'ASYS', 'Amtech Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(189, 1, 'AFSI', 'AmTrust Financial Services, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(190, 1, 'AMRS', 'Amyris, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(191, 1, 'ADI', 'Analog Devices, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(192, 1, 'ANAB', 'AnaptysBio, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(193, 1, 'AVXL', 'Anavex Life Sciences Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(194, 1, 'ANGI', 'ANGI Homeservices Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(195, 1, 'ANGO', 'AngioDynamics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(196, 1, 'ANIP', 'ANI Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(197, 1, 'ANIK', 'Anika Therapeutics Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(198, 1, 'ANIX', 'Anixa Biosciences, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(199, 1, 'ANSS', 'ANSYS, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(200, 1, 'ATRS', 'Antares Pharma, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(201, 1, 'APLS', 'Apellis Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(202, 1, 'APOG', 'Apogee Enterprises, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(203, 1, 'APEN', 'Apollo Endosurgery, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(204, 1, 'AINV', 'Apollo Investment Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(205, 1, 'AMEH', 'Apollo Medical Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(206, 1, 'APPF', 'AppFolio, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(207, 1, 'APPN', 'Appian Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(208, 1, 'AAPL', 'Apple Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(209, 1, 'ARCI', 'Appliance Recycling Centers of America, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(210, 1, 'APDN', 'Applied DNA Sciences Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(211, 1, 'APDNW', 'Applied DNA Sciences Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(212, 1, 'AGTC', 'Applied Genetic Technologies Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(213, 1, 'AMAT', 'Applied Materials, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(214, 1, 'AAOI', 'Applied Optoelectronics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(215, 1, 'AREX', 'Approach Resources Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(216, 1, 'ASFI', 'Asta Funding, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(217, 1, 'APTI', 'Apptio, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(218, 1, 'APRI', 'Apricus Biosciences, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(219, 1, 'APVO', 'Aptevo Therapeutics Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(220, 1, 'APTX', 'Aptinyx Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(221, 1, 'APTO', 'Aptose Biosciences, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(222, 1, 'AQMS', 'Aqua Metals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(223, 1, 'AQB', 'AquaBounty Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(224, 1, 'AQST', 'Aquestive Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(225, 1, 'AQXP', 'Aquinox Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(226, 1, 'ARDM', 'Aradigm Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(227, 1, 'PETX', 'Aratana Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(228, 1, 'ARAV', 'Aravive, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(229, 1, 'ABUS', 'Arbutus Biopharma Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(230, 1, 'ARCW', 'ARC Group Worldwide, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(231, 1, 'ABIO', 'ARCA biopharma, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(232, 1, 'RKDA', 'Arcadia Biosciences, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(233, 1, 'ARCB', 'ArcBest Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(234, 1, 'ACGL', 'Arch Capital Group Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(235, 1, 'ACGLO', 'Arch Capital Group Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(236, 1, 'ACGLP', 'Arch Capital Group Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(237, 1, 'FUV', 'Arcimoto, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(238, 1, 'ARCE', 'Arco Platform Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(239, 1, 'ARCT', 'Arcturus Therapeutics Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(240, 1, 'ARDX', 'Ardelyx, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(241, 1, 'ARNA', 'Arena Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(242, 1, 'ARCC', 'Ares Capital Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(243, 1, 'ARGX', 'argenx SE');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(244, 1, 'ARDS', 'Aridis Pharmaceuticals Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(245, 1, 'ARKR', 'Ark Restaurants Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(246, 1, 'ARTX', 'Arotech Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(247, 1, 'ARQL', 'ArQule, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(248, 1, 'ARRY', 'Array BioPharma Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(249, 1, 'ARRS', 'ARRIS International plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(250, 1, 'DWCR', 'Arrow DWA Country Rotation ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(251, 1, 'DWAT', 'Arrow DWA Tactical ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(252, 1, 'AROW', 'Arrow Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(253, 1, 'ARWR', 'Arrowhead Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(254, 1, 'ASNS', 'Arsanis, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(255, 1, 'ARTNA', 'Artesian Resources Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(256, 1, 'ARTW', 'Art''s-Way Manufacturing Co., Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(257, 1, 'ARVN', 'Arvinas, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(258, 1, 'ARYA', 'ARYA Sciences Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(259, 1, 'ARYAU', 'ARYA Sciences Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(260, 1, 'ARYAW', 'ARYA Sciences Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(261, 1, 'ASNA', 'Ascena Retail Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(262, 1, 'ASND', 'Ascendis Pharma A/S');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(263, 1, 'ASCMA', 'Ascent Capital Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(264, 1, 'APWC', 'Asia Pacific Wire & Cable Corporation Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(265, 1, 'ASLN', 'ASLAN Pharmaceuticals Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(266, 1, 'ASML', 'ASML Holding N.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(267, 1, 'ASPU', 'Aspen Group Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(268, 1, 'AZPN', 'Aspen Technology, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(269, 1, 'ASMB', 'Assembly Biosciences, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(270, 1, 'ASRT', 'Assertio Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(271, 1, 'ASTE', 'Astec Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(272, 1, 'ATRO', 'Astronics Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(273, 1, 'ALOT', 'AstroNova, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(274, 1, 'ASTC', 'Astrotech Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(275, 1, 'ASUR', 'Asure Software Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(276, 1, 'ASV', 'ASV Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(277, 1, 'ATAI', 'ATA Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(278, 1, 'ATRA', 'Atara Biotherapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(279, 1, 'ATHN', 'athenahealth, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(280, 1, 'ATNX', 'Athenex, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(281, 1, 'ATHX', 'Athersys, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(282, 1, 'AAME', 'Atlantic American Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(283, 1, 'ACBI', 'Atlantic Capital Bancshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(284, 1, 'AY', 'Atlantica Yield plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(285, 1, 'ATLC', 'Atlanticus Holdings Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(286, 1, 'AAWW', 'Atlas Air Worldwide Holdings');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(287, 1, 'AFH', 'Atlas Financial Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(288, 1, 'AFHBL', 'Atlas Financial Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(289, 1, 'TEAM', 'Atlassian Corporation Plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(290, 1, 'ATNI', 'ATN International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(291, 1, 'ATOM', 'Atomera Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(292, 1, 'ATOS', 'Atossa Genetics Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(293, 1, 'ATRC', 'AtriCure, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(294, 1, 'ATRI', 'Atrion Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(295, 1, 'ATIS', 'Attis Industries Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(296, 1, 'ATISW', 'Attis Industries Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(297, 1, 'ATTU', 'Attunity Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(298, 1, 'LIFE', 'aTyr Pharma, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(299, 1, 'AUBN', 'Auburn National Bancorporation, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(300, 1, 'BOLD', 'Audentes Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(301, 1, 'AUDC', 'AudioCodes Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(302, 1, 'AEYE', 'AudioEye, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(303, 1, 'AUPH', 'Aurinia Pharmaceuticals Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(304, 1, 'EARS', 'Auris Medical Holding AG');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(305, 1, 'JG', 'Aurora Mobile Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(306, 1, 'ADSK', 'Autodesk, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(307, 1, 'AUTL', 'Autolus Therapeutics plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(308, 1, 'ADP', 'Automatic Data Processing, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(309, 1, 'AUTO', 'AutoWeb, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(310, 1, 'AVDL', 'Avadel Pharmaceuticals plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(311, 1, 'AVCO', 'Avalon GloboCare Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(312, 1, 'ATXI', 'Avenue Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(313, 1, 'AVEO', 'AVEO Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(314, 1, 'AVNW', 'Aviat Networks, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(315, 1, 'CDMO', 'Avid Bioservices, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(316, 1, 'CDMOP', 'Avid Bioservices, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(317, 1, 'AVID', 'Avid Technology, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(318, 1, 'AVGR', 'Avinger, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(319, 1, 'CAR', 'Avis Budget Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(320, 1, 'AHPA', 'Avista Healthcare Public Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(321, 1, 'AHPAU', 'Avista Healthcare Public Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(322, 1, 'AHPAW', 'Avista Healthcare Public Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(323, 1, 'AVT', 'Avnet, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(324, 1, 'AVRO', 'AVROBIO, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(325, 1, 'AWRE', 'Aware, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(326, 1, 'ACLS', 'Axcelis Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(327, 1, 'AXGN', 'AxoGen, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(328, 1, 'AAXN', 'Axon Enterprise, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(329, 1, 'AXNX', 'Axonics Modulation Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(330, 1, 'AXON          ', 'Axovant Sciences Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(331, 1, 'AXSM', 'Axsome Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(332, 1, 'AXTI', 'AXT Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(333, 1, 'AYTU', 'Aytu BioScience, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(334, 1, 'AZRX', 'AzurRx BioPharma, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(335, 1, 'BCOM', 'B Communications Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(336, 1, 'RILY', 'B. Riley Financial, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(337, 1, 'RILYG', 'B. Riley Financial, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(338, 1, 'RILYH', 'B. Riley Financial, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(339, 1, 'RILYI', 'B. Riley Financial, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(340, 1, 'RILYL', 'B. Riley Financial, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(341, 1, 'RILYZ', 'B. Riley Financial, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(342, 1, 'BOSC', 'B.O.S. Better Online Solutions');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(343, 1, 'BIDU', 'Baidu, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(344, 1, 'BCPC', 'Balchem Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(345, 1, 'BLDP', 'Ballard Power Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(346, 1, 'BANF', 'BancFirst Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(347, 1, 'BANFP', 'BancFirst Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(348, 1, 'BCTF', 'Bancorp 34, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(349, 1, 'BAND', 'Bandwidth Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(350, 1, 'BFC', 'Bank First National Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(351, 1, 'BOCH', 'Bank of Commerce Holdings (CA)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(352, 1, 'BMRC', 'Bank of Marin Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(353, 1, 'BMLP', 'Bank Of Montreal');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(354, 1, 'BKSC', 'Bank of South Carolina Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(355, 1, 'BOTJ', 'Bank of the James Financial Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(356, 1, 'OZK', 'Bank OZK');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(357, 1, 'BSVN', 'Bank7 Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(358, 1, 'BFIN', 'BankFinancial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(359, 1, 'BWFG', 'Bankwell Financial Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(360, 1, 'BANR', 'Banner Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(361, 1, 'BZUN', 'Baozun Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(362, 1, 'DFVL', 'Barclays PLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(363, 1, 'DFVS', 'Barclays PLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(364, 1, 'DLBS', 'Barclays PLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(365, 1, 'DTUL', 'Barclays PLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(366, 1, 'DTUS', 'Barclays PLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(367, 1, 'DTYL', 'Barclays PLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(368, 1, 'DTYS', 'Barclays PLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(369, 1, 'FLAT', 'Barclays PLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(370, 1, 'STPP', 'Barclays PLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(371, 1, 'TAPR', 'Barclays PLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(372, 1, 'BBSI', 'Barrett Business Services, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(373, 1, 'BSET', 'Bassett Furniture Industries, Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(374, 1, 'ZTEST', 'BATS BZX Exchange');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(375, 1, 'BCML', 'BayCom Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(376, 1, 'BCBP', 'BCB Bancorp, Inc. (NJ)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(377, 1, 'BECN', 'Beacon Roofing Supply, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(378, 1, 'BBGI', 'Beasley Broadcast Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(379, 1, 'BBBY', 'Bed Bath & Beyond Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(380, 1, 'BGNE', 'BeiGene, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(381, 1, 'BELFA', 'Bel Fuse Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(382, 1, 'BELFB', 'Bel Fuse Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(383, 1, 'BLPH', 'Bellerophon Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(384, 1, 'BLCM', 'Bellicum Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(385, 1, 'BNCL', 'Beneficial Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(386, 1, 'BNFT', 'Benefitfocus, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(387, 1, 'BNTC', 'Benitec Biopharma Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(388, 1, 'BNTCW', 'Benitec Biopharma Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(389, 1, 'BRY', 'Berry Petroleum Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(390, 1, 'BYSI', 'BeyondSpring, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(391, 1, 'BGCP', 'BGC Partners, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(392, 1, 'BGCPV', 'BGC Partners, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(393, 1, 'BGFV', 'Big 5 Sporting Goods Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(394, 1, 'BRPA', 'Big Rock Partners Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(395, 1, 'BRPAR', 'Big Rock Partners Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(396, 1, 'BRPAU', 'Big Rock Partners Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(397, 1, 'BRPAW', 'Big Rock Partners Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(398, 1, 'BILI', 'Bilibili Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(399, 1, 'BASI', 'Bioanalytical Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(400, 1, 'ORPN', 'Bioblast Pharma Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(401, 1, 'BIOC', 'Biocept, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(402, 1, 'BCRX', 'BioCryst Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(403, 1, 'BDSI', 'BioDelivery Sciences International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(404, 1, 'BFRA', 'Biofrontera AG');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(405, 1, 'BIIB', 'Biogen Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(406, 1, 'BHTG', 'BioHiTech Global, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(407, 1, 'BKYI', 'BIO-key International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(408, 1, 'BIOL', 'Biolase, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(409, 1, 'BLFS', 'BioLife Solutions, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(410, 1, 'BLRX', 'BioLineRx Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(411, 1, 'BMRN', 'BioMarin Pharmaceutical Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(412, 1, 'BMRA', 'Biomerica, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(413, 1, 'BNGO', 'Bionano Genomics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(414, 1, 'BNGOW', 'Bionano Genomics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(415, 1, 'BVXV', 'BiondVax Pharmaceuticals Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(416, 1, 'BVXVW', 'BiondVax Pharmaceuticals Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(417, 1, 'BPTH', 'Bio-Path Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(418, 1, 'BIOS', 'BioScrip, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(419, 1, 'BSGM', 'BioSig Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(420, 1, 'BSTC', 'BioSpecifics Technologies Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(421, 1, 'TECH', 'Bio-Techne Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(422, 1, 'BEAT', 'BioTelemetry, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(423, 1, 'BTAI', 'BioXcel Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(424, 1, 'BCAC', 'Bison Capital Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(425, 1, 'BCACR', 'Bison Capital Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(426, 1, 'BCACU', 'Bison Capital Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(427, 1, 'BCACW', 'Bison Capital Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(428, 1, 'BJRI', 'BJ''s Restaurants, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(429, 1, 'BBOX', 'Black Box Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(430, 1, 'BRAC', 'Black Ridge Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(431, 1, 'BRACR', 'Black Ridge Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(432, 1, 'BRACU', 'Black Ridge Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(433, 1, 'BRACW', 'Black Ridge Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(434, 1, 'BLKB', 'Blackbaud, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(435, 1, 'BL', 'BlackLine, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(436, 1, 'BKCC', 'BlackRock Capital Investment Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(437, 1, 'TCPC', 'BlackRock TCP Capital Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(438, 1, 'BLNK', 'Blink Charging Co.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(439, 1, 'BLNKW', 'Blink Charging Co.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(440, 1, 'BLMN', 'Bloomin'' Brands, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(441, 1, 'BCOR', 'Blucora, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(442, 1, 'BLBD', 'Blue Bird Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(443, 1, 'BHBK', 'Blue Hills Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(444, 1, 'BLUE', 'bluebird bio, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(445, 1, 'BKEP', 'Blueknight Energy Partners L.P., L.L.C.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(446, 1, 'BKEPP', 'Blueknight Energy Partners L.P., L.L.C.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(447, 1, 'BPMC', 'Blueprint Medicines Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(448, 1, 'ITEQ', 'BlueStar Israel Technology ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(449, 1, 'BMCH', 'BMC Stock Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(450, 1, 'WIFI', 'Boingo Wireless, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(451, 1, 'BOJA', 'Bojangles'', Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(452, 1, 'BOKF', 'BOK Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(453, 1, 'BOKFL', 'BOK Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(454, 1, 'BNSO', 'Bonso Electronics International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(455, 1, 'BKNG', 'Booking Holdings Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(456, 1, 'BRQS', 'Borqs Technologies, Inc. ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(457, 1, 'BOMN', 'Boston Omaha Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(458, 1, 'BPFH', 'Boston Private Financial Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(459, 1, 'EPAY', 'Bottomline Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(460, 1, 'BOXL', 'Boxlight Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(461, 1, 'BWMCU', 'Boxwood Merger Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(462, 1, 'BBRX', 'Braeburn Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(463, 1, 'BCLI', 'Brainstorm Cell Therapeutics Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(464, 1, 'BVNSC', 'Brandes Investment Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(465, 1, 'BDGE', 'Bridge Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(466, 1, 'BLIN          ', 'Bridgeline Digital, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(467, 1, 'BWB', 'Bridgewater Bancshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(468, 1, 'BRID', 'Bridgford Foods Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(469, 1, 'BCOV', 'Brightcove Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(470, 1, 'BHF', 'Brighthouse Financial, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(471, 1, 'BHFAL', 'Brighthouse Financial, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(472, 1, 'AVGO', 'Broadcom Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(473, 1, 'BVSN', 'BroadVision, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(474, 1, 'BYFC', 'Broadway Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(475, 1, 'BWEN', 'Broadwind Energy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(476, 1, 'BPY', 'Brookfield Property Partners L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(477, 1, 'BPR', 'Brookfield Property REIT Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(478, 1, 'BPRAP', 'Brookfield Property REIT Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(479, 1, 'BRKL', 'Brookline Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(480, 1, 'BRKS', 'Brooks Automation, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(481, 1, 'DOOO', 'BRP Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(482, 1, 'BRKR', 'Bruker Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(483, 1, 'BMTC', 'Bryn Mawr Bank Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(484, 1, 'BLMT', 'BSB Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(485, 1, 'BSQR', 'BSQUARE Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(486, 1, 'BLDR', 'Builders FirstSource, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(487, 1, 'BFST', 'Business First Bancshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(488, 1, 'CFFI', 'C&F Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(489, 1, 'CHRW', 'C.H. Robinson Worldwide, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(490, 1, 'CCMP', 'Cabot Microelectronics Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(491, 1, 'CDNS', 'Cadence Design Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(492, 1, 'CDZI', 'Cadiz, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(493, 1, 'CZR', 'Caesars Entertainment Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(494, 1, 'CSTE', 'Caesarstone Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(495, 1, 'CLBS', 'Caladrius Biosciences, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(496, 1, 'CHY', 'Calamos Convertible and High Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(497, 1, 'CHI', 'Calamos Convertible Opportunities and Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(498, 1, 'CCD', 'Calamos Dynamic Convertible & Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(499, 1, 'CHW', 'Calamos Global Dynamic Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(500, 1, 'CGO', 'Calamos Global Total Return Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(501, 1, 'CSQ', 'Calamos Strategic Total Return Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(502, 1, 'CAMP', 'CalAmp Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(503, 1, 'CVGW', 'Calavo Growers, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(504, 1, 'CALA', 'Calithera Biosciences, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(505, 1, 'CALM', 'Cal-Maine Foods, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(506, 1, 'CLMT', 'Calumet Specialty Products Partners, L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(507, 1, 'CRUSC', 'Calvert Management Series');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(508, 1, 'CLXT', 'Calyxt, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(509, 1, 'ABCD', 'Cambium Learning Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(510, 1, 'CATC', 'Cambridge Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(511, 1, 'CAC', 'Camden National Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(512, 1, 'CAMT', 'Camtek Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(513, 1, 'CSIQ', 'Canadian Solar Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(514, 1, 'CGIX', 'Cancer Genetics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(515, 1, 'CPHC', 'Canterbury Park Holding Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(516, 1, 'CBNK', 'Capital Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(517, 1, 'CCBG', 'Capital City Bank Group');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(518, 1, 'CPLP', 'Capital Product Partners L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(519, 1, 'CSWC', 'Capital Southwest Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(520, 1, 'CSWCL', 'Capital Southwest Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(521, 1, 'CPTA', 'Capitala Finance Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(522, 1, 'CPTAG', 'Capitala Finance Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(523, 1, 'CPTAL', 'Capitala Finance Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(524, 1, 'CFFN', 'Capitol Federal Financial, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(525, 1, 'CAPR', 'Capricor Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(526, 1, 'CSTR', 'CapStar Financial Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(527, 1, 'CPST', 'Capstone Turbine Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(528, 1, 'CARA', 'Cara Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(529, 1, 'CBLK', 'Carbon Black, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(530, 1, 'CARB', 'Carbonite, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(531, 1, 'CSII', 'Cardiovascular Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(532, 1, 'CDLX', 'Cardlytics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(533, 1, 'CATM', 'Cardtronics plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(534, 1, 'CDNA', 'CareDx, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(535, 1, 'CECO', 'Career Education Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(536, 1, 'CTRE', 'CareTrust REIT, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(537, 1, 'CARG', 'CarGurus, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(538, 1, 'CARO', 'Carolina Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(539, 1, 'CART', 'Carolina Trust BancShares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(540, 1, 'CRZO', 'Carrizo Oil & Gas, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(541, 1, 'TAST', 'Carrols Restaurant Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(542, 1, 'CARV', 'Carver Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(543, 1, 'CASM', 'CAS Medical Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(544, 1, 'CASA', 'Casa Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(545, 1, 'CWST', 'Casella Waste Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(546, 1, 'CASY', 'Caseys General Stores, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(547, 1, 'CASI', 'CASI Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(548, 1, 'CASS', 'Cass Information Systems, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(549, 1, 'CATB', 'Catabasis Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(550, 1, 'CBIO', 'Catalyst Biosciences, Inc. ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(551, 1, 'CPRX', 'Catalyst Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(552, 1, 'CATS', 'Catasys, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(553, 1, 'CATY', 'Cathay General Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(554, 1, 'CATYW', 'Cathay General Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(555, 1, 'CGVIC', 'Causeway ETMF Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(556, 1, 'CIVEC', 'Causeway ETMF Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(557, 1, 'CVCO', 'Cavco Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(558, 1, 'CBFV', 'CB Financial Services, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(559, 1, 'CBAK', 'CBAK Energy Technology, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(560, 1, 'CBMB', 'CBM Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(561, 1, 'CBOE', 'Cboe Global Markets, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(562, 1, 'CBTX', 'CBTX, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(563, 1, 'CDK', 'CDK Global, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(564, 1, 'CDTI', 'CDTI Advanced Materials, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(565, 1, 'CDW', 'CDW Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(566, 1, 'CECE', 'CECO Environmental Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(567, 1, 'CELC', 'Celcuity Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(568, 1, 'CELG', 'Celgene Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(569, 1, 'CELGZ', 'Celgene Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(570, 1, 'CLDX', 'Celldex Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(571, 1, 'APOP', 'Cellect Biotechnology Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(572, 1, 'APOPW', 'Cellect Biotechnology Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(573, 1, 'CLRB', 'Cellectar Biosciences, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(574, 1, 'CLRBW', 'Cellectar Biosciences, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(575, 1, 'CLRBZ', 'Cellectar Biosciences, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(576, 1, 'CLLS', 'Cellectis S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(577, 1, 'CBMG', 'Cellular Biomedicine Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(578, 1, 'CLSN', 'Celsion Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(579, 1, 'CELH', 'Celsius Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(580, 1, 'CYAD', 'Celyad SA');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(581, 1, 'CETX', 'Cemtrex Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(582, 1, 'CETXP', 'Cemtrex Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(583, 1, 'CETXW', 'Cemtrex Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(584, 1, 'CDEV', 'Centennial Resource Development, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(585, 1, 'CSFL', 'CenterState Bank Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(586, 1, 'CETV', 'Central European Media Enterprises Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(587, 1, 'CFBK', 'Central Federal Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(588, 1, 'CENT', 'Central Garden & Pet Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(589, 1, 'CENTA', 'Central Garden & Pet Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(590, 1, 'CVCY', 'Central Valley Community Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(591, 1, 'CNTX', 'Centrexion Therapeutics Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(592, 1, 'CTRC', 'Centric Brands Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(593, 1, 'CENX', 'Century Aluminum Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(594, 1, 'CNBKA', 'Century Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(595, 1, 'CNTY', 'Century Casinos, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(596, 1, 'CRNT', 'Ceragon Networks Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(597, 1, 'CERC', 'Cerecor Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(598, 1, 'CERN', 'Cerner Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(599, 1, 'CERS', 'Cerus Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(600, 1, 'KOOL', 'Cesca Therapeutics Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(601, 1, 'CEVA', 'CEVA, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(602, 1, 'CSBR', 'Champions Oncology, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(603, 1, 'CYOU', 'Changyou.com Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(604, 1, 'BURG', 'Chanticleer Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(605, 1, 'CTHR', 'Charles & Colvard Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(606, 1, 'GTLS', 'Chart Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(607, 1, 'CHTR', 'Charter Communications, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(608, 1, 'CTAC', 'ChaSerg Technology Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(609, 1, 'CTACU', 'ChaSerg Technology Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(610, 1, 'CTACW', 'ChaSerg Technology Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(611, 1, 'CHKP', 'Check Point Software Technologies Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(612, 1, 'CHEK', 'Check-Cap Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(613, 1, 'CHEKW', 'Check-Cap Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(614, 1, 'CHEKZ', 'Check-Cap Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(615, 1, 'CKPT', 'Checkpoint Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(616, 1, 'CEMI', 'Chembio Diagnostics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(617, 1, 'CHFC', 'Chemical Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(618, 1, 'CCXI', 'ChemoCentryx, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(619, 1, 'CHMG', 'Chemung Financial Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(620, 1, 'CHKE', 'Cherokee Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(621, 1, 'CHFS', 'CHF Solutions, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(622, 1, 'CHMA', 'Chiasma, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(623, 1, 'CSSE', 'Chicken Soup for the Soul Entertainment, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(624, 1, 'CSSEP', 'Chicken Soup for the Soul Entertainment, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(625, 1, 'PLCE', 'Children''s Place, Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(626, 1, 'CMRX', 'Chimerix, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(627, 1, 'CADC', 'China Advanced Construction Materials Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(628, 1, 'CAAS', 'China Automotive Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(629, 1, 'CBPO', 'China Biologic Products Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(630, 1, 'CCCL', 'China Ceramics Co., Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(631, 1, 'GLG', 'China Commercial Credit, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(632, 1, 'CCRC', 'China Customer Relations Centers, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(633, 1, 'JRJC', 'China Finance Online Co. Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(634, 1, 'HGSH', 'China HGS Real Estate, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(635, 1, 'CIFS', 'China Internet Nationwide Financial Services Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(636, 1, 'CJJD', 'China Jo-Jo Drugstores, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(637, 1, 'CLDC', 'China Lending Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(638, 1, 'CHNR', 'China Natural Resources, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(639, 1, 'CREG', 'China Recycling Energy Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(640, 1, 'CNTF', 'China TechFaith Wireless Communication Technology Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(641, 1, 'CXDC', 'China XD Plastics Company Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(642, 1, 'CCIH', 'ChinaCache International Holdings Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(643, 1, 'CNET', 'ChinaNet Online Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(644, 1, 'IMOS', 'ChipMOS TECHNOLOGIES INC.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(645, 1, 'CDXC', 'ChromaDex Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(646, 1, 'CHSCL', 'CHS Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(647, 1, 'CHSCM', 'CHS Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(648, 1, 'CHSCN', 'CHS Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(649, 1, 'CHSCO', 'CHS Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(650, 1, 'CHSCP', 'CHS Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(651, 1, 'CHDN', 'Churchill Downs, Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(652, 1, 'CHUY', 'Chuy''s Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(653, 1, 'CDTX', 'Cidara Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(654, 1, 'CMCT', 'CIM Commercial Trust Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(655, 1, 'CMCTP', 'CIM Commercial Trust Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(656, 1, 'CMPR', 'Cimpress N.V');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(657, 1, 'CINF', 'Cincinnati Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(658, 1, 'CIDM', 'Cinedigm Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(659, 1, 'CTAS', 'Cintas Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(660, 1, 'CRUS', 'Cirrus Logic, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(661, 1, 'CSCO', 'Cisco Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(662, 1, 'CTRN', 'Citi Trends, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(663, 1, 'CTXR', 'Citius Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(664, 1, 'CTXRW', 'Citius Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(665, 1, 'CZNC', 'Citizens & Northern Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(666, 1, 'CZWI', 'Citizens Community Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(667, 1, 'CZFC', 'Citizens First Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(668, 1, 'CIZN', 'Citizens Holding Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(669, 1, 'CTXS', 'Citrix Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(670, 1, 'CHCO', 'City Holding Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(671, 1, 'CIVB', 'Civista Bancshares, Inc. ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(672, 1, 'CIVBP', 'Civista Bancshares, Inc. ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(673, 1, 'CLAR', 'Clarus Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(674, 1, 'CLNE', 'Clean Energy Fuels Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(675, 1, 'CACG', 'ClearBridge All Cap Growth ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(676, 1, 'YLDE', 'ClearBridge Dividend Strategy ESG ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(677, 1, 'LRGE', 'ClearBridge Large Cap Growth ESG ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(678, 1, 'CLFD', 'Clearfield, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(679, 1, 'CLRO', 'ClearOne, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(680, 1, 'CLSD', 'Clearside Biomedical, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(681, 1, 'CLIR', 'ClearSign Combustion Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(682, 1, 'CLIRW', 'ClearSign Combustion Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(683, 1, 'CMTA', 'Clementia Pharmaceuticals Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(684, 1, 'CBLI', 'Cleveland BioLabs, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(685, 1, 'CLVS', 'Clovis Oncology, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(686, 1, 'CLPS', 'CLPS Incorporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(687, 1, 'CMFN', 'CM Finance Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(688, 1, 'CMFNL', 'CM Finance Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(689, 1, 'CMSS', 'CM Seven Star Acquisition Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(690, 1, 'CMSSR', 'CM Seven Star Acquisition Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(691, 1, 'CMSSU', 'CM Seven Star Acquisition Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(692, 1, 'CMSSW', 'CM Seven Star Acquisition Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(693, 1, 'CME', 'CME Group Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(694, 1, 'CCNE', 'CNB Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(695, 1, 'CCB', 'Coastal Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(696, 1, 'COKE', 'Coca-Cola Bottling Co. Consolidated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(697, 1, 'COCP', 'Cocrystal Pharma, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(698, 1, 'CODA', 'Coda Octopus Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(699, 1, 'CDXS', 'Codexis, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(700, 1, 'CODX', 'Co-Diagnostics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(701, 1, 'CVLY', 'Codorus Valley Bancorp, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(702, 1, 'JVA', 'Coffee Holding Co., Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(703, 1, 'CCOI', 'Cogent Communications Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(704, 1, 'CGNX', 'Cognex Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(705, 1, 'CTSH', 'Cognizant Technology Solutions Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(706, 1, 'CWBR', 'CohBar, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(707, 1, 'COHR', 'Coherent, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(708, 1, 'CHRS', 'Coherus BioSciences, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(709, 1, 'COHU', 'Cohu, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(710, 1, 'CLCT', 'Collectors Universe, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(711, 1, 'COLL', 'Collegium Pharmaceutical, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(712, 1, 'CIGI', 'Colliers International Group Inc. ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(713, 1, 'CLGN', 'CollPlant Holdings, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(714, 1, 'CBAN', 'Colony Bankcorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(715, 1, 'COLB', 'Columbia Banking System, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(716, 1, 'CLBK', 'Columbia Financial, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(717, 1, 'COLM', 'Columbia Sportswear Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(718, 1, 'CMCO', 'Columbus McKinnon Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(719, 1, 'CMCSA', 'Comcast Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(720, 1, 'CCNI', 'Command Center, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(721, 1, 'CBSH', 'Commerce Bancshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(722, 1, 'CBSHP', 'Commerce Bancshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(723, 1, 'CVGI', 'Commercial Vehicle Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(724, 1, 'COMM', 'CommScope Holding Company, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(725, 1, 'JCS', 'Communications Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(726, 1, 'ESXB', 'Community Bankers Trust Corporation.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(727, 1, 'CFBI', 'Community First Bancshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(728, 1, 'CYHHZ', 'Community Health Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(729, 1, 'CTBI', 'Community Trust Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(730, 1, 'CWBC', 'Community West Bancshares');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(731, 1, 'CVLT', 'Commvault Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(732, 1, 'CGEN', 'Compugen Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(733, 1, 'CPSI', 'Computer Programs and Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(734, 1, 'CTG', 'Computer Task Group, Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(735, 1, 'SCOR', 'comScore, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(736, 1, 'CHCI', 'Comstock Holding Companies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(737, 1, 'CMTL', 'Comtech Telecommunications Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(738, 1, 'CNAT', 'Conatus Pharmaceuticals Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(739, 1, 'CNCE', 'Concert Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(740, 1, 'CDOR', 'Condor Hospitality Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(741, 1, 'CFMS', 'ConforMIS, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(742, 1, 'CNFR', 'Conifer Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(743, 1, 'CNFRL', 'Conifer Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(744, 1, 'CNMD', 'CONMED Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(745, 1, 'CTWS', 'Connecticut Water Service, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(746, 1, 'CNOB', 'ConnectOne Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(747, 1, 'CONN', 'Conn''s, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(748, 1, 'CNSL', 'Consolidated Communications Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(749, 1, 'CWCO', 'Consolidated Water Co. Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(750, 1, 'CNAC', 'Constellation Alpha Capital Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(751, 1, 'CNACR', 'Constellation Alpha Capital Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(752, 1, 'CNACU', 'Constellation Alpha Capital Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(753, 1, 'CNACW', 'Constellation Alpha Capital Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(754, 1, 'CNST', 'Constellation Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(755, 1, 'ROAD', 'Construction Partners, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(756, 1, 'CPSS', 'Consumer Portfolio Services, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(757, 1, 'CFRX', 'ContraFect Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(758, 1, 'CTRV', 'ContraVir Pharmaceuticals Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(759, 1, 'CTRL', 'Control4 Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(760, 1, 'CVON', 'ConvergeOne Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(761, 1, 'AWSM', 'Cool Holdings Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(762, 1, 'CPRT', 'Copart, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(763, 1, 'CRBP', 'Corbus Pharmaceuticals Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(764, 1, 'CORT', 'Corcept Therapeutics Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(765, 1, 'CORE', 'Core-Mark Holding Company, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(766, 1, 'CORI', 'Corium International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(767, 1, 'CSOD', 'Cornerstone OnDemand, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(768, 1, 'CORV', 'Correvio Pharma Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(769, 1, 'CRVL', 'CorVel Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(770, 1, 'CRVS', 'Corvus Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(771, 1, 'CSGP', 'CoStar Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(772, 1, 'COST', 'Costco Wholesale Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(773, 1, 'CPAH', 'CounterPath Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(774, 1, 'ICBK', 'County Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(775, 1, 'COUP', 'Coupa Software Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(776, 1, 'CVTI', 'Covenant Transportation Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(777, 1, 'COWN', 'Cowen Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(778, 1, 'COWNL', 'Cowen Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(779, 1, 'COWNZ', 'Cowen Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(780, 1, 'PMTS', 'CPI Card Group Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(781, 1, 'CPSH', 'CPS Technologies Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(782, 1, 'CRAI', 'CRA International,Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(783, 1, 'CBRL', 'Cracker Barrel Old Country Store, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(784, 1, 'BREW', 'Craft Brew Alliance, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(785, 1, 'CRAY', 'Cray Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(786, 1, 'CREX', 'Creative Realities, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(787, 1, 'CREXW', 'Creative Realities, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(788, 1, 'CACC', 'Credit Acceptance Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(789, 1, 'DGLD', 'Credit Suisse AG');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(790, 1, 'DSLV', 'Credit Suisse AG');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(791, 1, 'GLDI', 'Credit Suisse AG');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(792, 1, 'SLVO', 'Credit Suisse AG');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(793, 1, 'TVIX', 'Credit Suisse AG');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(794, 1, 'UGLD', 'Credit Suisse AG');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(795, 1, 'USLV', 'Credit Suisse AG');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(796, 1, 'USOI', 'Credit Suisse AG');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(797, 1, 'VIIX', 'Credit Suisse AG');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(798, 1, 'ZIV', 'Credit Suisse AG');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(799, 1, 'CREE', 'Cree, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(800, 1, 'CRESY', 'Cresud S.A.C.I.F. y A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(801, 1, 'CRNX', 'Crinetics Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(802, 1, 'CRSP', 'CRISPR Therapeutics AG');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(803, 1, 'CRTO', 'Criteo S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(804, 1, 'CROX', 'Crocs, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(805, 1, 'CRON', 'Cronos Group Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(806, 1, 'CCRN', 'Cross Country Healthcare, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(807, 1, 'CRWS', 'Crown Crafts, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(808, 1, 'CYRX', 'CryoPort, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(809, 1, 'CYRXW', 'CryoPort, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(810, 1, 'CSGS', 'CSG Systems International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(811, 1, 'CCLP', 'CSI Compressco LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(812, 1, 'CSPI', 'CSP Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(813, 1, 'CSWI', 'CSW Industrials, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(814, 1, 'CSX', 'CSX Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(815, 1, 'CTIC', 'CTI BioPharma Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(816, 1, 'CTIB', 'CTI Industries Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(817, 1, 'CTRP', 'Ctrip.com International, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(818, 1, 'CUE', 'Cue Biopharma, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(819, 1, 'CUI', 'CUI Global, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(820, 1, 'CPIX', 'Cumberland Pharmaceuticals Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(821, 1, 'CMLS', 'Cumulus Media Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(822, 1, 'CRIS', 'Curis, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(823, 1, 'CUTR', 'Cutera, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(824, 1, 'CVBF', 'CVB Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(825, 1, 'CVV', 'CVD Equipment Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(826, 1, 'CYAN', 'Cyanotech Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(827, 1, 'CYBR', 'CyberArk Software Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(828, 1, 'CYBE', 'CyberOptics Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(829, 1, 'CYCC', 'Cyclacel Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(830, 1, 'CYCCP', 'Cyclacel Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(831, 1, 'CBAY', 'CymaBay Therapeutics Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(832, 1, 'CY', 'Cypress Semiconductor Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(833, 1, 'CYRN', 'CYREN Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(834, 1, 'CONE', 'CyrusOne Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(835, 1, 'CYTK', 'Cytokinetics, Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(836, 1, 'CTMX', 'CytomX Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(837, 1, 'CYTX', 'Cytori Therapeutics Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(838, 1, 'CYTXW', 'Cytori Therapeutics Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(839, 1, 'CYTXZ', 'Cytori Therapeutics Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(840, 1, 'CTSO', 'Cytosorbents Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(841, 1, 'CYTR', 'CytRx Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(842, 1, 'DJCO', 'Daily Journal Corp. (S.C.)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(843, 1, 'DAKT', 'Daktronics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(844, 1, 'DARE', 'Dare Bioscience, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(845, 1, 'DRIO', 'DarioHealth Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(846, 1, 'DRIOW', 'DarioHealth Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(847, 1, 'DZSI', 'DASAN Zhone Solutions, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(848, 1, 'DSKE', 'Daseke, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(849, 1, 'DSKEW', 'Daseke, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(850, 1, 'DAIO', 'Data I/O Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(851, 1, 'DWCH', 'Datawatch Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(852, 1, 'PLAY', 'Dave & Buster''s Entertainment, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(853, 1, 'DTEA', 'DAVIDsTEA Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(854, 1, 'DFNL', 'Davis Select Financial ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(855, 1, 'DINT', 'Davis Select International ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(856, 1, 'DUSA', 'Davis Select U.S. Equity ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(857, 1, 'DWLD', 'Davis Select Worldwide ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(858, 1, 'DWSN', 'Dawson Geophysical Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(859, 1, 'DBVT', 'DBV Technologies S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(860, 1, 'DDMX', 'DD3 Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(861, 1, 'DDMXU', 'DD3 Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(862, 1, 'DDMXW', 'DD3 Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(863, 1, 'DCPH', 'Deciphera Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(864, 1, 'DFRG', 'Del Frisco''s Restaurant Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(865, 1, 'FTHI', 'First Trust BuyWrite Income ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(866, 1, 'TACO', 'Del Taco Restaurants, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(867, 1, 'TACOW', 'Del Taco Restaurants, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(868, 1, 'DMPI', 'DelMar Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(869, 1, 'DELT', 'Delta Technology Holdings Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(870, 1, 'DNLI', 'Denali Therapeutics Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(871, 1, 'DENN', 'Denny''s Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(872, 1, 'XRAY', 'DENTSPLY SIRONA Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(873, 1, 'DDOC', 'DERMAdoctor, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(874, 1, 'DERM', 'Dermira, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(875, 1, 'DEST', 'Destination Maternity Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(876, 1, 'DXLG', 'Destination XL Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(877, 1, 'DSWL', 'Deswell Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(878, 1, 'DTRM', 'Determine, Inc. ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(879, 1, 'DXCM', 'DexCom, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(880, 1, 'DFBH', 'DFB Healthcare Acquisitions Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(881, 1, 'DFBHU', 'DFB Healthcare Acquisitions Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(882, 1, 'DFBHW', 'DFB Healthcare Acquisitions Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(883, 1, 'DHXM', 'DHX Media Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(884, 1, 'DHIL', 'Diamond Hill Investment Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(885, 1, 'FANG', 'Diamondback Energy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(886, 1, 'DCIX', 'Diana Containerships Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(887, 1, 'DRNA', 'Dicerna Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(888, 1, 'DFFN', 'Diffusion Pharmaceuticals Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(889, 1, 'DGII', 'Digi International Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(890, 1, 'DMRC', 'Digimarc Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(891, 1, 'DRAD', 'Digirad Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(892, 1, 'DGLY', 'Digital Ally, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(893, 1, 'APPS', 'Digital Turbine, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(894, 1, 'DCOM', 'Dime Community Bancshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(895, 1, 'DIOD', 'Diodes Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(896, 1, 'DISCA', 'Discovery, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(897, 1, 'DISCB', 'Discovery, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(898, 1, 'DISCK', 'Discovery, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(899, 1, 'DISH', 'DISH Network Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(900, 1, 'DVCR', 'Diversicare Healthcare Services Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(901, 1, 'SAUC', 'Diversified Restaurant Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(902, 1, 'DLHC', 'DLH Holdings Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(903, 1, 'BOOM', 'DMC Global Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(904, 1, 'DNBF', 'DNB Financial Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(905, 1, 'DOCU', 'DocuSign, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(906, 1, 'DOGZ', 'Dogness (International) Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(907, 1, 'DLTR', 'Dollar Tree, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(908, 1, 'DLPN', 'Dolphin Entertainment, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(909, 1, 'DLPNW', 'Dolphin Entertainment, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(910, 1, 'DOMO', 'Domo, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(911, 1, 'DGICA', 'Donegal Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(912, 1, 'DGICB', 'Donegal Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(913, 1, 'DMLP', 'Dorchester Minerals, L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(914, 1, 'DORM', 'Dorman Products, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(915, 1, 'DOVA', 'Dova Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(916, 1, 'LYL', 'Dragon Victory International Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(917, 1, 'DOTA', 'Draper Oakwood Technology Acquisition, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(918, 1, 'DOTAR', 'Draper Oakwood Technology Acquisition, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(919, 1, 'DOTAU', 'Draper Oakwood Technology Acquisition, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(920, 1, 'DOTAW', 'Draper Oakwood Technology Acquisition, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(921, 1, 'DBX', 'Dropbox, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(922, 1, 'DCAR', 'DropCar, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(923, 1, 'DRYS', 'DryShips Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(924, 1, 'DSPG', 'DSP Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(925, 1, 'DLTH', 'Duluth Holdings Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(926, 1, 'DNKN', 'Dunkin'' Brands Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(927, 1, 'DRRX', 'DURECT Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(928, 1, 'DXPE', 'DXP Enterprises, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(929, 1, 'DYSL', 'Dynasil Corporation of America');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(930, 1, 'DYNT', 'Dynatronics Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(931, 1, 'DVAX', 'Dynavax Technologies Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(932, 1, 'ETFC', 'E*TRADE Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(933, 1, 'SSP', 'E.W. Scripps Company (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(934, 1, 'EBMT', 'Eagle Bancorp Montana, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(935, 1, 'EGBN', 'Eagle Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(936, 1, 'EGLE', 'Eagle Bulk Shipping Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(937, 1, 'EFBI', 'Eagle Financial Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(938, 1, 'EGRX', 'Eagle Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(939, 1, 'IGLE', 'Eagleline Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(940, 1, 'EWBC', 'East West Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(941, 1, 'EML', 'Eastern Company (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(942, 1, 'EAST', 'Eastside Distilling, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(943, 1, 'EVGBC', 'Eaton Vance NextShares Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(944, 1, 'EVSTC', 'Eaton Vance NextShares Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(945, 1, 'EVFTC', 'Eaton Vance NextShares Trust II');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(946, 1, 'EVLMC', 'Eaton Vance NextShares Trust II');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(947, 1, 'OKDCC', 'Eaton Vance NextShares Trust II');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(948, 1, 'EBAY', 'eBay Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(949, 1, 'EBAYL', 'eBay Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(950, 1, 'EBIX', 'Ebix, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(951, 1, 'ECHO', 'Echo Global Logistics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(952, 1, 'SATS', 'EchoStar Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(953, 1, 'EEI', 'Ecology and Environment, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(954, 1, 'ESES', 'Eco-Stim Energy Solutions, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(955, 1, 'EDAP', 'EDAP TMS S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(956, 1, 'EDGE', 'Edge Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(957, 1, 'EDNT', 'Edison Nation, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(958, 1, 'EDIT', 'Editas Medicine, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(959, 1, 'EDTX', 'EdtechX Holdings Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(960, 1, 'EDTXU', 'EdtechX Holdings Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(961, 1, 'EDTXW', 'EdtechX Holdings Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(962, 1, 'EDUC', 'Educational Development Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(963, 1, 'EGAN', 'eGain Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(964, 1, 'EHTH', 'eHealth, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(965, 1, 'EIDX', 'Eidos Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(966, 1, 'EIGR', 'Eiger BioPharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(967, 1, 'EKSO', 'Ekso Bionics Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(968, 1, 'LOCO', 'El Pollo Loco Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(969, 1, 'EMITF', 'Elbit Imaging Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(970, 1, 'ESLT', 'Elbit Systems Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(971, 1, 'ERI', 'Eldorado Resorts, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(972, 1, 'SOLO', 'Electrameccanica Vehicles Corp. Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(973, 1, 'SOLOW', 'Electrameccanica Vehicles Corp. Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(974, 1, 'ESIO', 'Electro Scientific Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(975, 1, 'ECOR', 'electroCore, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(976, 1, 'EA', 'Electronic Arts Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(977, 1, 'EFII', 'Electronics for Imaging, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(978, 1, 'ELSE', 'Electro-Sensors, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(979, 1, 'ESBK', 'Elmira Savings Bank NY (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(980, 1, 'ELOX', 'Eloxx Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(981, 1, 'ELTK', 'Eltek Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(982, 1, 'EMCI', 'EMC Insurance Group Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(983, 1, 'EMCF', 'Emclaire Financial Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(984, 1, 'EMKR', 'EMCORE Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(985, 1, 'EMMS', 'Emmis Communications Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(986, 1, 'NYNY', 'Empire Resorts, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(987, 1, 'ENTA', 'Enanta Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(988, 1, 'ECPG', 'Encore Capital Group Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(989, 1, 'WIRE', 'Encore Wire Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(990, 1, 'ENDP', 'Endo International plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(991, 1, 'ECYT', 'Endocyte, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(992, 1, 'ELGX', 'Endologix, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(993, 1, 'NDRA', 'ENDRA Life Sciences Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(994, 1, 'NDRAW', 'ENDRA Life Sciences Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(995, 1, 'EIGI', 'Endurance International Group Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(996, 1, 'WATT', 'Energous Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(997, 1, 'EFOI', 'Energy Focus, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(998, 1, 'EHR', 'Energy Hunter Resources, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(999, 1, 'ERII', 'Energy Recovery, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1000, 1, 'ENG', 'ENGlobal Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1001, 1, 'ENPH', 'Enphase Energy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1002, 1, 'ESGR', 'Enstar Group Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1003, 1, 'ESGRP', 'Enstar Group Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1004, 1, 'ETTX', 'Entasis Therapeutics Holdings Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1005, 1, 'ENFC', 'Entegra Financial Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1006, 1, 'ENTG', 'Entegris, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1007, 1, 'ENTX', 'Entera Bio Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1008, 1, 'ENTXW', 'Entera Bio Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1009, 1, 'EBTC', 'Enterprise Bancorp Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1010, 1, 'EFSC', 'Enterprise Financial Services Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1011, 1, 'EPZM', 'Epizyme, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1012, 1, 'PLUS', 'ePlus inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1013, 1, 'EQ', 'Equillium, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1014, 1, 'EQIX', 'Equinix, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1015, 1, 'EQBK', 'Equity Bancshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1016, 1, 'ERIC', 'Ericsson');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1017, 1, 'ERIE', 'Erie Indemnity Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1018, 1, 'ERYP', 'Erytech Pharma S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1019, 1, 'ESCA', 'Escalade, Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1020, 1, 'ESPR', 'Esperion Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1021, 1, 'ESQ', 'Esquire Financial Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1022, 1, 'ESSA', 'ESSA Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1023, 1, 'EPIX', 'ESSA Pharma Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1024, 1, 'ESND', 'Essendant Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1025, 1, 'ESTA', 'Establishment Labs Holdings Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1026, 1, 'ESTR', 'Estre Ambiental, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1027, 1, 'ESTRW', 'Estre Ambiental, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1028, 1, 'VBND', 'ETF Series Solutions Trust Vident Core U.S. Bond Strategy Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1029, 1, 'VUSE', 'ETF Series Solutions Trust Vident Core US Equity ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1030, 1, 'VIDI', 'ETF Series Solutions Trust Vident International Equity Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1031, 1, 'ETON', 'Eton Pharmaceutcials, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1032, 1, 'ETSY', 'Etsy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1033, 1, 'CLWT', 'Euro Tech Holdings Company Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1034, 1, 'EDRY', 'EuroDry Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1035, 1, 'EEFT', 'Euronet Worldwide, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1036, 1, 'ESEA', 'Euroseas Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1037, 1, 'EVLO', 'Evelo Biosciences, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1038, 1, 'EVBG', 'Everbridge, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1039, 1, 'EVK', 'Ever-Glory International Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1040, 1, 'EVER', 'EverQuote, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1041, 1, 'MRAM', 'Everspin Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1042, 1, 'EVLV', 'EVINE Live Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1043, 1, 'EVOP', 'EVO Payments, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1044, 1, 'EVFM', 'Evofem Biosciences, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1045, 1, 'EVGN', 'Evogene Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1046, 1, 'EVOK', 'Evoke Pharma, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1047, 1, 'EOLS', 'Evolus, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1048, 1, 'EVOL', 'Evolving Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1049, 1, 'EXAS', 'Exact Sciences Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1050, 1, 'FLAG', 'Exchange Traded Concepts Trust FLAG-Forensic Accounting Long-S');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1051, 1, 'ROBO', 'Exchange Traded Concepts Trust ROBO Global Robotics and Automa');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1052, 1, 'XELA', 'Exela Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1053, 1, 'EXEL', 'Exelixis, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1054, 1, 'EXFO', 'EXFO Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1055, 1, 'EXLS', 'ExlService Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1056, 1, 'EXPI', 'eXp World Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1057, 1, 'EXPE', 'Expedia Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1058, 1, 'EXPD', 'Expeditors International of Washington, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1059, 1, 'EXPO', 'Exponent, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1060, 1, 'ESRX', 'Express Scripts Holding Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1061, 1, 'STAY', 'Extended Stay America, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1062, 1, 'XOG', 'Extraction Oil & Gas, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1063, 1, 'EXTR', 'Extreme Networks, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1064, 1, 'EYEG', 'Eyegate Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1065, 1, 'EYEGW', 'Eyegate Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1066, 1, 'EYEN', 'Eyenovia, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1067, 1, 'EYPT', 'EyePoint Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1068, 1, 'EZPW', 'EZCORP, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1069, 1, 'FFIV', 'F5 Networks, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1070, 1, 'FB', 'Facebook, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1071, 1, 'FLMN', 'Falcon Minerals Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1072, 1, 'FLMNW', 'Falcon Minerals Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1073, 1, 'DAVE', 'Famous Dave''s of America, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1074, 1, 'FANH', 'Fanhua Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1075, 1, 'FARM', 'Farmer Brothers Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1076, 1, 'FMAO', 'Farmers & Merchants Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1077, 1, 'FMNB', 'Farmers National Banc Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1078, 1, 'FAMI', 'FARMMI, INC.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1079, 1, 'FARO', 'FARO Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1080, 1, 'FAST', 'Fastenal Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1081, 1, 'FAT', 'FAT Brands Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1082, 1, 'FATE', 'Fate Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1083, 1, 'FBSS', 'Fauquier Bankshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1084, 1, 'FSAC', 'Federal Street Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1085, 1, 'FSACU', 'Federal Street Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1086, 1, 'FSACW', 'Federal Street Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1087, 1, 'FNHC', 'FedNat Holding Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1088, 1, 'FENC', 'Fennec Pharmaceuticals Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1089, 1, 'GSM', 'Ferroglobe PLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1090, 1, 'FFBW', 'FFBW, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1091, 1, 'FCSC', 'Fibrocell Science Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1092, 1, 'FGEN', 'FibroGen, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1093, 1, 'FDBC', 'Fidelity D & D Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1094, 1, 'ONEQ', 'Fidelity Nasdaq Composite Index Tracking Stock');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1095, 1, 'LION', 'Fidelity Southern Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1096, 1, 'FDUS', 'Fidus Investment Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1097, 1, 'FDUSL', 'Fidus Investment Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1098, 1, 'FRGI', 'Fiesta Restaurant Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1099, 1, 'FITB', 'Fifth Third Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1100, 1, 'FITBI', 'Fifth Third Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1101, 1, 'FISI', 'Financial Institutions, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1102, 1, 'FNSR', 'Finisar Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1103, 1, 'FNJN', 'Finjan Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1104, 1, 'FTACU', 'FinTech Acquisition Corp. III');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1105, 1, 'FEYE', 'FireEye, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1106, 1, 'FBNC', 'First Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1107, 1, 'FNLC', 'First Bancorp, Inc (ME)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1108, 1, 'FRBA', 'First Bank');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1109, 1, 'BUSE', 'First Busey Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1110, 1, 'FBIZ', 'First Business Financial Services, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1111, 1, 'FCAP', 'First Capital, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1112, 1, 'FCBP', 'First Choice Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1113, 1, 'FCNCA', 'First Citizens BancShares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1114, 1, 'FCBC', 'First Community Bankshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1115, 1, 'FCCO', 'First Community Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1116, 1, 'FDEF', 'First Defiance Financial Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1117, 1, 'FFBC', 'First Financial Bancorp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1118, 1, 'FFBCW', 'First Financial Bancorp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1119, 1, 'FFIN', 'First Financial Bankshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1120, 1, 'THFF', 'First Financial Corporation Indiana');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1121, 1, 'FFNW', 'First Financial Northwest, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1122, 1, 'FFWM', 'First Foundation Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1123, 1, 'FGBI', 'First Guaranty Bancshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1124, 1, 'FHB', 'First Hawaiian, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1125, 1, 'INBK', 'First Internet Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1126, 1, 'INBKL', 'First Internet Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1127, 1, 'FIBK', 'First Interstate BancSystem, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1128, 1, 'FRME', 'First Merchants Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1129, 1, 'FMBH', 'First Mid-Illinois Bancshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1130, 1, 'FMBI', 'First Midwest Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1131, 1, 'FNWB', 'First Northwest Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1132, 1, 'FSFG', 'First Savings Financial Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1133, 1, 'FSLR', 'First Solar, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1134, 1, 'FAAR', 'First Trust Alternative Absolute Return Strategy ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1135, 1, 'FPA', 'First Trust Asia Pacific Ex-Japan AlphaDEX Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1136, 1, 'BICK', 'First Trust BICK Index Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1137, 1, 'FBZ', 'First Trust Brazil AlphaDEX Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1138, 1, 'FCAL', 'First Trust California Municipal High income ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1139, 1, 'FCAN', 'First Trust Canada AlphaDEX Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1140, 1, 'FTCS', 'First Trust Capital Strength ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1141, 1, 'FCEF', 'First Trust CEF Income Opportunity ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1142, 1, 'FCA', 'First Trust China AlphaDEX Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1143, 1, 'SKYY', 'First Trust Cloud Computing ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1144, 1, 'RNDM', 'First Trust Developed International Equity Select ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1145, 1, 'FDT', 'First Trust Developed Markets Ex-US AlphaDEX Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1146, 1, 'FDTS', 'First Trust Developed Markets ex-US Small Cap AlphaDEX Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1147, 1, 'FVC', 'First Trust Dorsey Wright Dynamic Focus 5 ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1148, 1, 'FV', 'First Trust Dorsey Wright Focus 5 ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1149, 1, 'IFV', 'First Trust Dorsey Wright International Focus 5 ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1150, 1, 'DDIV', 'First Trust Dorsey Wright Momentum & Dividend ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1151, 1, 'DVOL', 'First Trust Dorsey Wright Momentum & Low Volatility ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1152, 1, 'DVLU', 'First Trust Dorsey Wright Momentum & Value ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1153, 1, 'DWPP', 'First Trust Dorsey Wright People''s Portfolio ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1154, 1, 'DALI', 'First Trust DorseyWright DALI 1 ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1155, 1, 'FDNI', 'First Trust Dow Jones International Internet ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1156, 1, 'FEM', 'First Trust Emerging Markets AlphaDEX Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1157, 1, 'RNEM', 'First Trust Emerging Markets Equity Select ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1158, 1, 'FEMB', 'First Trust Emerging Markets Local Currency Bond ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1159, 1, 'FEMS', 'First Trust Emerging Markets Small Cap AlphaDEX Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1160, 1, 'FTSM', 'First Trust Enhanced Short Maturity ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1161, 1, 'FEP', 'First Trust Europe AlphaDEX Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1162, 1, 'FEUZ', 'First Trust Eurozone AlphaDEX ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1163, 1, 'FGM', 'First Trust Germany AlphaDEX Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1164, 1, 'FTGC', 'First Trust Global Tactical Commodity Strategy Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1165, 1, 'FTLB', 'First Trust Hedged BuyWrite Income ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1166, 1, 'HYLS', 'First Trust High Yield Long/Short ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1167, 1, 'FHK', 'First Trust Hong Kong AlphaDEX Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1168, 1, 'NFTY', 'First Trust India Nifty 50 Equal Weight ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1169, 1, 'FTAG', 'First Trust Indxx Global Agriculture ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1170, 1, 'FTRI', 'First Trust Indxx Global Natural Resources Income ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1171, 1, 'LEGR', 'First Trust Indxx Innovative Transaction & Process ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1172, 1, 'FPXI', 'First Trust International IPO ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1173, 1, 'FPXE', 'First Trust IPOX Europe Equity Opportunities ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1174, 1, 'FJP', 'First Trust Japan AlphaDEX Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1175, 1, 'FEX', 'First Trust Large Cap Core AlphaDEX Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1176, 1, 'FTC', 'First Trust Large Cap Growth AlphaDEX Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1177, 1, 'RNLC', 'First Trust Large Cap US Equity Select ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1178, 1, 'FTA', 'First Trust Large Cap Value AlphaDEX Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1179, 1, 'FLN', 'First Trust Latin America AlphaDEX Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1180, 1, 'LMBS', 'First Trust Low Duration Opportunities ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1181, 1, 'FMB', 'First Trust Managed Municipal ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1182, 1, 'FMK', 'First Trust Mega Cap AlphaDEX Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1404, 1, 'GRSHU', 'Gores Holdings III, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1183, 1, 'FNX', 'First Trust Mid Cap Core AlphaDEX Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1184, 1, 'FNY', 'First Trust Mid Cap Growth AlphaDEX Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1185, 1, 'RNMC', 'First Trust Mid Cap US Equity Select ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1186, 1, 'FNK', 'First Trust Mid Cap Value AlphaDEX Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1187, 1, 'FAD', 'First Trust Multi Cap Growth AlphaDEX Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1188, 1, 'FAB', 'First Trust Multi Cap Value AlphaDEX Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1189, 1, 'MDIV', 'First Trust Multi-Asset Diversified Income Index Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1190, 1, 'MCEF', 'First Trust Municipal CEF Income Opportunity ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1191, 1, 'FMHI', 'First Trust Municipal High Income ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1192, 1, 'QABA', 'First Trust NASDAQ ABA Community Bank Index Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1193, 1, 'ROBT', 'First Trust Nasdaq Artificial Intelligence and Robotics ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1194, 1, 'FTXO', 'First Trust Nasdaq Bank ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1195, 1, 'GLBZ', 'Glen Burnie Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1196, 1, 'QCLN', 'First Trust NASDAQ Clean Edge Green Energy Index Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1197, 1, 'GRID', 'First Trust NASDAQ Clean Edge Smart Grid Infrastructure Index ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1198, 1, 'CIBR', 'First Trust NASDAQ Cybersecurity ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1199, 1, 'FTXG', 'First Trust Nasdaq Food & Beverage ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1200, 1, 'CARZ', 'First Trust NASDAQ Global Auto Index Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1201, 1, 'FTXN', 'First Trust Nasdaq Oil & Gas ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1202, 1, 'FTXH', 'First Trust Nasdaq Pharmaceuticals ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1203, 1, 'FTXD', 'First Trust Nasdaq Retail ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1204, 1, 'FTXL', 'First Trust Nasdaq Semiconductor ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1205, 1, 'FONE', 'First Trust NASDAQ Smartphone Index Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1206, 1, 'TDIV', 'First Trust NASDAQ Technology Dividend Index Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1207, 1, 'FTXR', 'First Trust Nasdaq Transportation ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1208, 1, 'QQEW', 'First Trust NASDAQ-100 Equal Weighted Index Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1209, 1, 'QQXT', 'First Trust NASDAQ-100 Ex-Technology Sector Index Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1210, 1, 'QTEC', 'First Trust NASDAQ-100- Technology Index Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1211, 1, 'AIRR', 'First Trust RBA American Industrial Renaissance ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1212, 1, 'RDVY', 'First Trust Rising Dividend Achievers ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1213, 1, 'RFAP', 'First Trust RiverFront Dynamic Asia Pacific ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1214, 1, 'RFDI', 'First Trust RiverFront Dynamic Developed International ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1215, 1, 'RFEM', 'First Trust RiverFront Dynamic Emerging Markets ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1216, 1, 'RFEU', 'First Trust RiverFront Dynamic Europe ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1217, 1, 'FID', 'First Trust S&P International Dividend Aristocrats ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1218, 1, 'FTSL', 'First Trust Senior Loan Fund ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1219, 1, 'FYX', 'First Trust Small Cap Core AlphaDEX Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1220, 1, 'FYC', 'First Trust Small Cap Growth AlphaDEX Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1221, 1, 'RNSC', 'First Trust Small Cap US Equity Select ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1222, 1, 'FYT', 'First Trust Small Cap Value AlphaDEX Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1223, 1, 'SDVY', 'First Trust SMID Cap Rising Dividend Achievers ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1224, 1, 'FKO', 'First Trust South Korea AlphaDEX Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1225, 1, 'FCVT', 'First Trust SSI Strategic Convertible Securities ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1226, 1, 'FDIV', 'First Trust Strategic Income ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1227, 1, 'FSZ', 'First Trust Switzerland AlphaDEX Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1228, 1, 'FIXD', 'First Trust TCW Opportunistic Fixed Income ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1229, 1, 'TUSA', 'First Trust Total US Market AlphaDEX ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1230, 1, 'FKU', 'First Trust United Kingdom AlphaDEX Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1231, 1, 'RNDV', 'First Trust US Equity Dividend Select ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1232, 1, 'FUNC', 'First United Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1233, 1, 'FUSB', 'First US Bancshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1234, 1, 'MYFW', 'First Western Financial, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1235, 1, 'FCFS', 'FirstCash, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1236, 1, 'SVVC', 'Firsthand Technology Value Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1237, 1, 'FSV', 'FirstService Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1238, 1, 'FISV', 'Fiserv, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1239, 1, 'FIVE', 'Five Below, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1240, 1, 'FPRX', 'Five Prime Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1241, 1, 'FVE', 'Five Star Senior Living Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1242, 1, 'FIVN', 'Five9, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1243, 1, 'FLEX', 'Flex Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1244, 1, 'FLKS', 'Flex Pharma, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1245, 1, 'FLXN', 'Flexion Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1246, 1, 'SKOR', 'FlexShares Credit-Scored US Corporate Bond Index Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1247, 1, 'LKOR', 'FlexShares Credit-Scored US Long Corporate Bond Index Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1248, 1, 'MBSD', 'FlexShares Disciplined Duration MBS Index Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1249, 1, 'ASET', 'FlexShares Real Assets Allocation Index Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1250, 1, 'ESGG', 'FlexShares STOXX Global ESG Impact Index Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1251, 1, 'ESG', 'FlexShares STOXX US ESG Impact Index Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1252, 1, 'QLC', 'FlexShares US Quality Large Cap Index Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1253, 1, 'FPAY', 'FlexShopper, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1254, 1, 'FPAYW', 'FlexShopper, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1255, 1, 'FLXS', 'Flexsteel Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1256, 1, 'FLIR', 'FLIR Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1257, 1, 'FLNT', 'Fluent, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1258, 1, 'FLDM', 'Fluidigm Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1259, 1, 'FFIC', 'Flushing Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1260, 1, 'FNCB', 'FNCB Bancorp Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1261, 1, 'FOMX', 'Foamix Pharmaceuticals Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1262, 1, 'FOCS', 'Focus Financial Partners Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1263, 1, 'FONR', 'Fonar Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1264, 1, 'FSCT', 'ForeScout Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1265, 1, 'FRSX', 'Foresight Autonomous Holdings Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1266, 1, 'FORM', 'FormFactor, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1267, 1, 'FORTY', 'Formula Systems (1985) Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1268, 1, 'FORR', 'Forrester Research, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1269, 1, 'FRTA', 'Forterra, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1270, 1, 'FTNT', 'Fortinet, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1271, 1, 'FBIO', 'Fortress Biotech, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1272, 1, 'FBIOP', 'Fortress Biotech, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1273, 1, 'FTSV', 'Forty Seven, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1274, 1, 'FMCI', 'Forum Merger II Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1275, 1, 'FMCIU', 'Forum Merger II Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1276, 1, 'FMCIW', 'Forum Merger II Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1277, 1, 'FWRD', 'Forward Air Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1278, 1, 'FORD', 'Forward Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1279, 1, 'FWP', 'Forward Pharma A/S');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1280, 1, 'FOSL', 'Fossil Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1281, 1, 'FOXF', 'Fox Factory Holding Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1282, 1, 'FRAN', 'Francesca''s Holdings Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1283, 1, 'FELE', 'Franklin Electric Co., Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1284, 1, 'FKLY', 'Frankly, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1285, 1, 'FRED', 'Fred''s, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1286, 1, 'RAIL', 'Freightcar America, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1287, 1, 'FEIM', 'Frequency Electronics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1288, 1, 'FRPT', 'Freshpet, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1289, 1, 'FTDR', 'frontdoor, inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1290, 1, 'FTEO', 'FRONTEO, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1291, 1, 'FTR', 'Frontier Communications Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1292, 1, 'FRPH', 'FRP Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1293, 1, 'FSBW', 'FS Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1294, 1, 'FSBC', 'FSB Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1295, 1, 'FTD', 'FTD Companies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1296, 1, 'FTEK', 'Fuel Tech, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1297, 1, 'FCEL', 'FuelCell Energy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1298, 1, 'FLGT', 'Fulgent Genetics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1299, 1, 'FORK', 'Fuling Global Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1300, 1, 'FLL', 'Full House Resorts, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1301, 1, 'FMAX', 'Full Spectrum Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1302, 1, 'FULT', 'Fulton Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1303, 1, 'FNKO', 'Funko, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1304, 1, 'FSNN', 'Fusion Connect, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1305, 1, 'FTFT', 'Future FinTech Group Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1306, 1, 'FFHL', 'Fuwei Films (Holdings) Co., Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1307, 1, 'FVCB', 'FVCBankcorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1308, 1, 'WILC', 'G. Willi-Food International,  Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1309, 1, 'GTHX', 'G1 Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1310, 1, 'FOANC', 'Gabelli NextShares Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1311, 1, 'GRBIC', 'Gabelli NextShares Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1312, 1, 'MOGLC', 'Gabelli NextShares Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1313, 1, 'PETZC', 'Gabelli NextShares Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1314, 1, 'GAIA', 'Gaia, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1315, 1, 'GLPG', 'Galapagos NV');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1316, 1, 'GALT', 'Galectin Therapeutics Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1317, 1, 'GLMD', 'Galmed Pharmaceuticals Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1318, 1, 'GMDA', 'Gamida Cell Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1319, 1, 'GLPI', 'Gaming and Leisure Properties, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1320, 1, 'GPIC', 'Gaming Partners International Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1321, 1, 'GRMN', 'Garmin Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1322, 1, 'GARS', 'Garrison Capital Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1323, 1, 'GLIBA', 'GCI Liberty, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1324, 1, 'GLIBP', 'GCI Liberty, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1325, 1, 'GDS', 'GDS Holdings Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1326, 1, 'GEMP', 'Gemphire Therapeutics Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1327, 1, 'GENC', 'Gencor Industries Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1328, 1, 'GFN', 'General Finance Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1329, 1, 'GFNCP', 'General Finance Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1330, 1, 'GFNSL', 'General Finance Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1331, 1, 'GENE', 'Genetic Technologies Ltd');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1332, 1, 'GNUS', 'Genius Brands International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1333, 1, 'GNMK', 'GenMark Diagnostics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1334, 1, 'GNCA', 'Genocea Biosciences, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1335, 1, 'GHDX', 'Genomic Health, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1336, 1, 'GNPX', 'Genprex, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1337, 1, 'GNST', 'GenSight Biologics S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1338, 1, 'GNTX', 'Gentex Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1339, 1, 'THRM', 'Gentherm Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1340, 1, 'GEOS', 'Geospace Technologies Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1341, 1, 'GABC', 'German American Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1342, 1, 'GERN', 'Geron Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1343, 1, 'GEVO', 'Gevo, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1344, 1, 'ROCK', 'Gibraltar Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1345, 1, 'GIGM', 'GigaMedia Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1346, 1, 'GIII', 'G-III Apparel Group, LTD.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1347, 1, 'GILT', 'Gilat Satellite Networks Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1348, 1, 'GILD', 'Gilead Sciences, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1349, 1, 'GBCI', 'Glacier Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1350, 1, 'GLAD', 'Gladstone Capital Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1351, 1, 'GLADD', 'Gladstone Capital Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1352, 1, 'GLADN', 'Gladstone Capital Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1353, 1, 'GOOD', 'Gladstone Commercial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1354, 1, 'GOODM', 'Gladstone Commercial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1355, 1, 'GOODO', 'Gladstone Commercial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1356, 1, 'GOODP', 'Gladstone Commercial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1357, 1, 'GAIN', 'Gladstone Investment Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1358, 1, 'GAINL', 'Gladstone Investment Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1359, 1, 'GAINM', 'Gladstone Investment Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1360, 1, 'LAND', 'Gladstone Land Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1361, 1, 'LANDP', 'Gladstone Land Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1362, 1, 'GBT', 'Global Blood Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1363, 1, 'ENT', 'Global Eagle Entertainment Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1364, 1, 'GBLI', 'Global Indemnity Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1365, 1, 'GBLIL', 'Global Indemnity Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1366, 1, 'GBLIZ', 'Global Indemnity Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1367, 1, 'SELF', 'Global Self Storage, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1368, 1, 'GWRS', 'Global Water Resources, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1369, 1, 'DRIV', 'Global X Autonomous & Electric Vehicles ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1370, 1, 'KRMA', 'Global X Conscious Companies ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1371, 1, 'FINX', 'Global X FinTech ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1372, 1, 'AIQ', 'Global X Future Analytics Tech ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1373, 1, 'BFIT', 'Global X Health & Wellness Thematic ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1374, 1, 'SNSR', 'Global X Internet of Things ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1375, 1, 'LNGR', 'Global X Longevity Thematic ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1376, 1, 'MILN', 'Global X Millennials Thematic ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1377, 1, 'EFAS', 'Global X MSCI SuperDividend EAFE ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1378, 1, 'QQQC', 'Global X NASDAQ China Technology ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1379, 1, 'BOTZ', 'Global X Robotics & Artificial Intelligence ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1380, 1, 'CATH', 'Global X S&P 500 Catholic Values ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1381, 1, 'SOCL', 'Global X Social Media ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1382, 1, 'ALTY', 'Global X SuperDividend Alternatives ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1383, 1, 'SRET', 'Global X SuperDividend REIT ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1384, 1, 'YLCO', 'Global X YieldCo & Renewable Energy Income ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1385, 1, 'GLBS', 'Globus Maritime Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1387, 1, 'GLYC', 'GlycoMimetics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1388, 1, 'GOGO', 'Gogo Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1389, 1, 'GLNG', 'Golar LNG Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1390, 1, 'GMLP', 'Golar LNG Partners LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1391, 1, 'GMLPP', 'Golar LNG Partners LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1392, 1, 'DNJR', 'GOLDEN BULL LIMITED');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1393, 1, 'GDEN', 'Golden Entertainment, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1394, 1, 'GOGL', 'Golden Ocean Group Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1395, 1, 'GBDC', 'Golub Capital BDC, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1396, 1, 'GTIM', 'Good Times Restaurants Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1397, 1, 'GBLK', 'GoodBulk Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1398, 1, 'GSHD', 'Goosehead Insurance, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1399, 1, 'GPRO', 'GoPro, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1400, 1, 'GPAQ', 'Gordon Pointe Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1401, 1, 'GPAQU', 'Gordon Pointe Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1402, 1, 'GPAQW', 'Gordon Pointe Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1403, 1, 'GRSH', 'Gores Holdings III, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1405, 1, 'GRSHW', 'Gores Holdings III, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1406, 1, 'GOV', 'Government Properties Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1407, 1, 'GOVNI', 'Government Properties Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1408, 1, 'LOPE', 'Grand Canyon Education, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1409, 1, 'GRVY', 'GRAVITY Co., Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1410, 1, 'GECC', 'Great Elm Capital Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1411, 1, 'GECCL', 'Great Elm Capital Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1412, 1, 'GECCM', 'Great Elm Capital Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1413, 1, 'GEC', 'Great Elm Capital Group, Inc. ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1414, 1, 'GLDD', 'Great Lakes Dredge & Dock Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1415, 1, 'GSBC', 'Great Southern Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1416, 1, 'GNBC', 'Green Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1417, 1, 'GRBK', 'Green Brick Partners, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1418, 1, 'GPP', 'Green Plains Partners LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1419, 1, 'GPRE', 'Green Plains, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1420, 1, 'GCBC', 'Greene County Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1421, 1, 'GLAC', 'Greenland Acquisition Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1422, 1, 'GLACR', 'Greenland Acquisition Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1423, 1, 'GLACU', 'Greenland Acquisition Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1424, 1, 'GLACW', 'Greenland Acquisition Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1425, 1, 'GLRE', 'Greenlight Reinsurance, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1426, 1, 'GRNQ', 'Greenpro Capital Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1427, 1, 'GSKY', 'GreenSky, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1428, 1, 'GSUM', 'Gridsum Holding Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1429, 1, 'GRIF', 'Griffin Industrial Realty, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1430, 1, 'GRFS', 'Grifols, S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1431, 1, 'GRIN', 'Grindrod Shipping Holdings Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1432, 1, 'GRTS', 'Gritstone Oncology, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1433, 1, 'GRPN', 'Groupon, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1434, 1, 'OMAB', 'Grupo Aeroportuario del Centro Norte S.A.B. de C.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1435, 1, 'GGAL', 'Grupo Financiero Galicia S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1436, 1, 'GVP', 'GSE Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1437, 1, 'GSIT', 'GSI Technology, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1438, 1, 'GSVC', 'GSV Capital Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1439, 1, 'GTXI', 'GTx, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1440, 1, 'GTYH', 'GTY Technology Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1441, 1, 'GTYHU', 'GTY Technology Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1442, 1, 'GTYHW', 'GTY Technology Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1443, 1, 'GBNK', 'Guaranty Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1444, 1, 'GNTY', 'Guaranty Bancshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1445, 1, 'GFED', 'Guaranty Federal Bancshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1446, 1, 'GH', 'Guardant Health, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1447, 1, 'GIFI', 'Gulf Island Fabrication, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1448, 1, 'GURE', 'Gulf Resources, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1449, 1, 'GPOR', 'Gulfport Energy Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1450, 1, 'GWPH', 'GW Pharmaceuticals Plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1451, 1, 'GWGH', 'GWG Holdings, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1452, 1, 'GYRO', 'Gyrodyne , LLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1453, 1, 'HEES', 'H&E Equipment Services, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1454, 1, 'HLG', 'Hailiang Education Group Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1455, 1, 'HNRG', 'Hallador Energy Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1456, 1, 'HALL', 'Hallmark Financial Services, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1457, 1, 'HALO', 'Halozyme Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1458, 1, 'HBK', 'Hamilton Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1459, 1, 'HLNE', 'Hamilton Lane Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1460, 1, 'HJLI', 'Hancock Jaffe Laboratories, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1461, 1, 'HJLIW', 'Hancock Jaffe Laboratories, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1462, 1, 'HWC', 'Hancock Whitney Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1463, 1, 'HWCPL', 'Hancock Whitney Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1464, 1, 'HAFC', 'Hanmi Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1465, 1, 'HQCL', 'Hanwha Q CELLS Co., Ltd. ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1466, 1, 'HONE', 'HarborOne Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1467, 1, 'HLIT', 'Harmonic Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1468, 1, 'HFGIC', 'Hartford Funds NextShares Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1469, 1, 'HBIO', 'Harvard Bioscience, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1470, 1, 'HCAP', 'Harvest Capital Credit Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1471, 1, 'HCAPZ', 'Harvest Capital Credit Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1472, 1, 'HAS', 'Hasbro, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1473, 1, 'HA', 'Hawaiian Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1474, 1, 'HWKN', 'Hawkins, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1475, 1, 'HWBK', 'Hawthorn Bancshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1476, 1, 'HYAC', 'Haymaker Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1477, 1, 'HYACU', 'Haymaker Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1478, 1, 'HYACW', 'Haymaker Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1479, 1, 'HAYN', 'Haynes International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1480, 1, 'HDS', 'HD Supply Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1481, 1, 'HIIQ', 'Health Insurance Innovations, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1482, 1, 'HCSG', 'Healthcare Services Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1483, 1, 'HQY', 'HealthEquity, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1484, 1, 'HSTM', 'HealthStream, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1485, 1, 'HTLD', 'Heartland Express, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1486, 1, 'HTLF', 'Heartland Financial USA, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1487, 1, 'HTBX', 'Heat Biologics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1488, 1, 'HEBT', 'Hebron Technology Co., Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1489, 1, 'HSII', 'Heidrick & Struggles International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1490, 1, 'HELE', 'Helen of Troy Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1491, 1, 'HMNY', 'Helios and Matheson Analytics Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1492, 1, 'HSDT', 'Helius Medical Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1493, 1, 'HMTV', 'Hemisphere Media Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1494, 1, 'HNNA', 'Hennessy Advisors, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1495, 1, 'HSIC', 'Henry Schein, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1496, 1, 'HTBK', 'Heritage Commerce Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1497, 1, 'HFWA', 'Heritage Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1498, 1, 'HCCI', 'Heritage-Crystal Clean, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1499, 1, 'MLHR', 'Herman Miller, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1500, 1, 'HRTX', 'Heron Therapeutics, Inc.  ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1501, 1, 'HSKA', 'Heska Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1502, 1, 'HX', 'Hexindai Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1503, 1, 'HFFG', 'HF Foods Group Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1504, 1, 'HIBB', 'Hibbett Sports, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1505, 1, 'SNLN', 'Highland/iBoxx Senior Loan ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1506, 1, 'HPJ', 'Highpower International Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1507, 1, 'HIHO', 'Highway Holdings Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1508, 1, 'HIMX', 'Himax Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1509, 1, 'HIFS', 'Hingham Institution for Savings');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1510, 1, 'HSGX', 'Histogenics Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1511, 1, 'HCCH', 'HL Acquisitions Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1512, 1, 'HCCHR', 'HL Acquisitions Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1513, 1, 'HCCHU', 'HL Acquisitions Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1514, 1, 'HCCHW', 'HL Acquisitions Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1515, 1, 'HMNF', 'HMN Financial, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1516, 1, 'HMSY', 'HMS Holdings Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1517, 1, 'HOLI', 'Hollysys Automation Technologies, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1518, 1, 'HOLX', 'Hologic, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1519, 1, 'HBCP', 'Home Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1520, 1, 'HOMB', 'Home BancShares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1521, 1, 'HFBL', 'Home Federal Bancorp, Inc. of Louisiana');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1522, 1, 'HMST', 'HomeStreet, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1523, 1, 'HMTA', 'HomeTown Bankshares Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1524, 1, 'HTBI', 'HomeTrust Bancshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1525, 1, 'FIXX', 'Homology Medicines, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1526, 1, 'HOFT', 'Hooker Furniture Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1527, 1, 'HOPE', 'Hope Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1528, 1, 'HFBC', 'HopFed Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1529, 1, 'HBNC', 'Horizon Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1530, 1, 'HZNP', 'Horizon Pharma plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1531, 1, 'HRZN', 'Horizon Technology Finance Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1532, 1, 'DAX', 'Horizons DAX Germany ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1533, 1, 'QYLD', 'Horizons NASDAQ-100 Covered Call ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1534, 1, 'HDP', 'Hortonworks, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1535, 1, 'HPT', 'Hospitality Properties Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1536, 1, 'TWNK', 'Hostess Brands, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1537, 1, 'TWNKW', 'Hostess Brands, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1538, 1, 'HMHC', 'Houghton Mifflin Harcourt Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1539, 1, 'HWCC', 'Houston Wire & Cable Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1540, 1, 'HOVNP', 'Hovnanian Enterprises Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1541, 1, 'HBMD', 'Howard Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1542, 1, 'HTGM', 'HTG Molecular Diagnostics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1543, 1, 'HTHT', 'Huazhu Group Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1544, 1, 'HUBG', 'Hub Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1545, 1, 'HSON', 'Hudson Global, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1546, 1, 'HDSN', 'Hudson Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1547, 1, 'HUNT', 'Hunter Maritime Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1548, 1, 'HUNTU', 'Hunter Maritime Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1549, 1, 'HUNTW', 'Hunter Maritime Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1550, 1, 'HBAN', 'Huntington Bancshares Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1551, 1, 'HBANN', 'Huntington Bancshares Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1552, 1, 'HBANO', 'Huntington Bancshares Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1553, 1, 'HURC', 'Hurco Companies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1554, 1, 'HURN', 'Huron Consulting Group Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1555, 1, 'HCM', 'Hutchison China MediTech Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1556, 1, 'HBP', 'Huttig Building Products, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1557, 1, 'HVBC', 'HV Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1558, 1, 'HYGS', 'Hydrogenics Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1559, 1, 'HYRE', 'HyreCar Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1560, 1, 'IDSY', 'I.D. Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1561, 1, 'IIIV', 'i3 Verticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1562, 1, 'IAC', 'IAC/InterActiveCorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1563, 1, 'IBKC', 'IBERIABANK Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1564, 1, 'IBKCO', 'IBERIABANK Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1565, 1, 'IBKCP', 'IBERIABANK Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1566, 1, 'IBEX', 'IBEX Holdings Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1568, 1, 'IEP', 'Icahn Enterprises L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1569, 1, 'ICCH', 'ICC Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1570, 1, 'ICFI', 'ICF International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1571, 1, 'ICHR', 'Ichor Holdings');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1572, 1, 'ICLK', 'iClick Interactive Asia Group Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1573, 1, 'ICLR', 'ICON plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1574, 1, 'ICON', 'Iconix Brand Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1575, 1, 'ICUI', 'ICU Medical, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1576, 1, 'IPWR', 'Ideal Power Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1577, 1, 'IDEX', 'Ideanomics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1578, 1, 'INVE', 'Identiv, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1579, 1, 'IDRA', 'Idera Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1580, 1, 'IDXX', 'IDEXX Laboratories, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1581, 1, 'IESC', 'IES Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1582, 1, 'IROQ', 'IF Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1583, 1, 'IFMK', 'iFresh Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1584, 1, 'INFO', 'IHS Markit Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1585, 1, 'IIVI', 'II-VI Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1586, 1, 'KANG', 'iKang Healthcare Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1587, 1, 'IKNX', 'Ikonics Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1588, 1, 'ILMN', 'Illumina, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1589, 1, 'ISNS', 'Image Sensing Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1590, 1, 'IMMR', 'Immersion Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1591, 1, 'ICCC', 'ImmuCell Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1592, 1, 'IMDZ', 'Immune Design Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1593, 1, 'IMGN', 'ImmunoGen, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1594, 1, 'IMMU', 'Immunomedics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1595, 1, 'IMRN', 'Immuron Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1596, 1, 'IMRNW', 'Immuron Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1597, 1, 'IMMP', 'Immutep Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1598, 1, 'IMPV', 'Imperva, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1599, 1, 'PI', 'Impinj, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1600, 1, 'IMMY', 'Imprimis Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1601, 1, 'IMV', 'IMV Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1602, 1, 'INCY', 'Incyte Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1603, 1, 'INDB', 'Independent Bank Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1604, 1, 'IBCP', 'Independent Bank Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1605, 1, 'IBTX', 'Independent Bank Group, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1606, 1, 'INDU', 'Industrea Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1607, 1, 'INDUU', 'Industrea Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1608, 1, 'INDUW', 'Industrea Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1609, 1, 'ILPT', 'Industrial Logistics Properties Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1610, 1, 'IDSA', 'Industrial Services of America, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1611, 1, 'INFN', 'Infinera Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1612, 1, 'INFI', 'Infinity Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1613, 1, 'IFRX', 'InflaRx N.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1614, 1, 'III', 'Information Services Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1615, 1, 'IEA', 'Infrastructure and Energy Alternatives, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1616, 1, 'IEAWW', 'Infrastructure and Energy Alternatives, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1617, 1, 'IMKTA', 'Ingles Markets, Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1618, 1, 'INWK', 'InnerWorkings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1619, 1, 'INOD', 'Innodata Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1620, 1, 'IPHS', 'Innophos Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1621, 1, 'IOSP', 'Innospec Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1622, 1, 'INNT', 'Innovate Biopharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1623, 1, 'ISSC', 'Innovative Solutions and Support, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1624, 1, 'INVA', 'Innoviva, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1625, 1, 'INGN', 'Inogen, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1626, 1, 'INOV', 'Inovalon Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1627, 1, 'INO', 'Inovio Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1628, 1, 'INPX', 'Inpixon ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1629, 1, 'INSG', 'Inseego Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1630, 1, 'NSIT', 'Insight Enterprises, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1631, 1, 'ISIG', 'Insignia Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1632, 1, 'INSM', 'Insmed, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1633, 1, 'INSE', 'Inspired Entertainment, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1634, 1, 'IIIN', 'Insteel Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1635, 1, 'PODD', 'Insulet Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1636, 1, 'INSY', 'Insys Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1637, 1, 'NTEC', 'Intec Pharma Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1638, 1, 'IART', 'Integra LifeSciences Holdings Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1639, 1, 'IDTI', 'Integrated Device Technology, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1640, 1, 'IMTE', 'Integrated Media Technology Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1641, 1, 'INTC', 'Intel Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1642, 1, 'NTLA', 'Intellia Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1643, 1, 'IPCI', 'Intellipharmaceutics International Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1644, 1, 'IPAR', 'Inter Parfums, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1645, 1, 'ICPT', 'Intercept Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1646, 1, 'IDCC', 'InterDigital, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1647, 1, 'TILE', 'Interface, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1648, 1, 'LINK', 'Interlink Electronics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1649, 1, 'IMI', 'Intermolecular, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1650, 1, 'INAP', 'Internap Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1651, 1, 'IBOC', 'International Bancshares Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1652, 1, 'IMXI', 'International Money Express, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1653, 1, 'ISCA', 'International Speedway Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1654, 1, 'IGLD', 'Internet Gold Golden Lines Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1655, 1, 'IIJI', 'Internet Initiative Japan, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1656, 1, 'IDXG', 'Interpace Diagnostics Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1657, 1, 'XENT', 'Intersect ENT, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1658, 1, 'INTX', 'Intersections, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1659, 1, 'IVAC', 'Intevac, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1660, 1, 'INTL', 'INTL FCStone Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1661, 1, 'ITCI', 'Intra-Cellular Therapies Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1662, 1, 'XON', 'Intrexon Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1663, 1, 'IIN', 'IntriCon Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1664, 1, 'INTU', 'Intuit Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1665, 1, 'ISRG', 'Intuitive Surgical, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1666, 1, 'PLW', 'Invesco 1-30 Laddered Treasury ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1667, 1, 'ADRA', 'Invesco BLDRS Asia 50 ADR Index Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1668, 1, 'ADRD', 'Invesco BLDRS Developed Markets 100 ADR Index Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1669, 1, 'ADRE', 'Invesco BLDRS Emerging Markets 50 ADR Index Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1670, 1, 'ADRU', 'Invesco BLDRS Europe Select ADR Index Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1671, 1, 'PKW', 'Invesco BuyBack Achievers ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1672, 1, 'PFM', 'Invesco Dividend Achievers ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1673, 1, 'PYZ', 'Invesco DWA Basic Materials Momentum ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1674, 1, 'PEZ', 'Invesco DWA Consumer Cyclicals Momentum ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1675, 1, 'PSL', 'Invesco DWA Consumer Staples Momentum ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1676, 1, 'PIZ', 'Invesco DWA Developed Markets Momentum ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1677, 1, 'PIE', 'Invesco DWA Emerging Markets Momentum ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1678, 1, 'PXI', 'Invesco DWA Energy Momentum ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1679, 1, 'PFI', 'Invesco DWA Financial Momentum ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1680, 1, 'PTH', 'Invesco DWA Healthcare Momentum ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1681, 1, 'PRN', 'Invesco DWA Industrials Momentum ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1682, 1, 'DWLV', 'Invesco DWA Momentum & Low Volatility Rotation ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1683, 1, 'PDP', 'Invesco DWA Momentum ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1684, 1, 'DWAQ', 'Invesco DWA NASDAQ Momentum ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1685, 1, 'DWAS', 'Invesco DWA SmallCap Momentum ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1686, 1, 'DWIN', 'Invesco DWA Tactical Multi-Asset Income ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1687, 1, 'DWTR', 'Invesco DWA Tactical Sector Rotation ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1688, 1, 'PTF', 'Invesco DWA Technology Momentum ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1689, 1, 'PUI', 'Invesco DWA Utilities Momentum ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1690, 1, 'IDLB', 'Invesco FTSE International Low Beta Equal Weight ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1691, 1, 'PRFZ', 'Invesco FTSE RAFI US 1500 Small-Mid ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1692, 1, 'PAGG', 'Invesco Global Agriculture ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1693, 1, 'PSAU', 'Invesco Global Gold and Precious Metals ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1694, 1, 'PIO', 'Invesco Global Water ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1695, 1, 'PGJ', 'Invesco Golden Dragon China ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1696, 1, 'PEY', 'Invesco High Yield Equity Dividend Achievers ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1697, 1, 'IPKW', 'Invesco International BuyBack Achievers ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1698, 1, 'PID', 'Invesco International Dividend Achievers ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1699, 1, 'KBWB', 'Invesco KBW Bank ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1700, 1, 'KBWD', 'Invesco KBW High Dividend Yield Financial ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1701, 1, 'KBWY', 'Invesco KBW Premium Yield Equity REIT ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1702, 1, 'KBWP', 'Invesco KBW Property & Casualty Insurance ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1703, 1, 'KBWR', 'Invesco KBW Regional Banking ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1704, 1, 'LDRI', 'Invesco LadderRite 0-5 Year Corporate Bond ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1705, 1, 'LALT', 'Invesco Multi-Strategy Alternative ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1706, 1, 'PNQI', 'Invesco Nasdaq Internet ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1707, 1, 'PDBC', 'Invesco Optimum Yield Diversified Commodity Strategy No K-1 ET');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1708, 1, 'QQQ', 'Invesco QQQ Trust, Series 1');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1709, 1, 'USLB', 'Invesco Russell 1000 Low Beta Equal Weight ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1710, 1, 'PSCD', 'Invesco S&P SmallCap Consumer Discretionary ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1711, 1, 'PSCC', 'Invesco S&P SmallCap Consumer Staples ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1712, 1, 'PSCE', 'Invesco S&P SmallCap Energy ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1713, 1, 'PSCF', 'Invesco S&P SmallCap Financials ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1714, 1, 'PSCH', 'Invesco S&P SmallCap Health Care ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1715, 1, 'PSCI', 'Invesco S&P SmallCap Industrials ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1716, 1, 'PSCT', 'Invesco S&P SmallCap Information Technology ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1717, 1, 'PSCM', 'Invesco S&P SmallCap Materials ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1718, 1, 'PSCU', 'Invesco S&P SmallCap Utilities ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1719, 1, 'ISDX', 'Invesco Strategic Developed ex-US ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1827, 1, 'JASN', 'Jason Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1720, 1, 'ISDS', 'Invesco Strategic Developed ex-US Small Company ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1721, 1, 'ISEM', 'Invesco Strategic Emerging Markets ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1722, 1, 'IUS', 'Invesco Strategic US ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1723, 1, 'IUSS', 'Invesco Strategic US Small Company ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1724, 1, 'VRIG', 'Invesco Variable Rate Investment Grade ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1725, 1, 'PHO', 'Invesco Water Resources ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1726, 1, 'ISTR', 'Investar Holding Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1727, 1, 'ISBC', 'Investors Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1728, 1, 'ITIC', 'Investors Title Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1729, 1, 'NVIV', 'InVivo Therapeutics Holdings Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1730, 1, 'IONS', 'Ionis Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1731, 1, 'IOVA', 'Iovance Biotherapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1732, 1, 'IPAS', 'iPass Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1733, 1, 'IPGP', 'IPG Photonics Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1734, 1, 'IPIC', 'iPic Entertainment Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1735, 1, 'CLRG', 'IQ Chaikin U.S. Large Cap ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1736, 1, 'CSML', 'IQ Chaikin U.S. Small Cap ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1737, 1, 'IQ', 'iQIYI, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1738, 1, 'IRMD', 'iRadimed Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1739, 1, 'IRTC', 'iRhythm Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1740, 1, 'IRIX', 'IRIDEX Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1741, 1, 'IRDM', 'Iridium Communications Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1742, 1, 'IRDMB', 'Iridium Communications Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1743, 1, 'IRBT', 'iRobot Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1744, 1, 'IRWD', 'Ironwood Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1745, 1, 'IRCP', 'IRSA Propiedades Comerciales S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1746, 1, 'SLQD', 'iShares 0-5 Year Investment Grade Corporate Bond ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1747, 1, 'ISHG', 'iShares 1-3 Year International Treasury Bond ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1748, 1, 'SHY', 'iShares 1-3 Year Treasury Bond ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1749, 1, 'TLT', 'iShares 20+ Year Treasury Bond ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1750, 1, 'IEI', 'iShares 3-7 Year Treasury Bond ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1751, 1, 'IEF', 'iShares 7-10 Year Treasury Bond ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1752, 1, 'AIA', 'iShares Asia 50 ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1753, 1, 'USIG', 'iShares Broad USD Investment Grade Corporate Bond ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1754, 1, 'COMT', 'iShares Commodities Select Strategy ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1755, 1, 'ISTB', 'iShares Core 1-5 Year USD Bond ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1756, 1, 'IXUS', 'iShares Core MSCI Total International Stock ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1757, 1, 'IUSG', 'iShares Core S&P U.S. Growth ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1758, 1, 'IUSV', 'iShares Core S&P U.S. Value ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1759, 1, 'IUSB', 'iShares Core Total USD Bond Market ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1760, 1, 'HEWG', 'iShares Currency Hedged MSCI Germany ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1761, 1, 'SUSB', 'iShares ESG 1-5 Year USD Corporate Bond ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1762, 1, 'ESGD', 'iShares ESG MSCI EAFE ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1763, 1, 'ESGE', 'iShares ESG MSCI EM ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1764, 1, 'ESGU', 'iShares ESG MSCI USA ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1765, 1, 'SUSC', 'iShares ESG USD Corporate Bond ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1766, 1, 'XT', 'iShares Exponential Technologies ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1767, 1, 'FALN', 'iShares Fallen Angels USD Bond ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1768, 1, 'IFEU', 'iShares FTSE EPRA/NAREIT Europe Index Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1769, 1, 'IFGL', 'iShares FTSE EPRA/NAREIT Global Real Estate ex-U.S. Index Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1770, 1, 'BGRN', 'iShares Global Green Bond ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1771, 1, 'IGF', 'iShares Global Infrastructure ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1772, 1, 'GNMA', 'iShares GNMA Bond ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1773, 1, 'HYXE', 'iShares iBoxx $ High Yield ex Oil & Gas Corporate Bond ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1774, 1, 'IGIB', 'iShares Intermediate-Term Corporate Bond ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1775, 1, 'IGOV', 'iShares International Treasury Bond ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1776, 1, 'EMB', 'iShares J.P. Morgan USD Emerging Markets Bond ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1777, 1, 'MBB', 'iShares MBS ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1778, 1, 'JKI', 'iShares Morningstar Mid-Cap ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1779, 1, 'ACWX', 'iShares MSCI ACWI ex US Index Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1780, 1, 'ACWI', 'iShares MSCI ACWI Index Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1781, 1, 'AAXJ', 'iShares MSCI All Country Asia ex Japan Index Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1782, 1, 'EWZS', 'iShares MSCI Brazil Small-Cap ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1783, 1, 'MCHI', 'iShares MSCI China ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1784, 1, 'SCZ', 'iShares MSCI EAFE Small-Cap ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1785, 1, 'EEMA', 'iShares MSCI Emerging Markets Asia ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1786, 1, 'EMXC', 'iShares MSCI Emerging Markets ex China ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1787, 1, 'EUFN', 'iShares MSCI Europe Financials Sector Index Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1788, 1, 'IEUS', 'iShares MSCI Europe Small-Cap ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1789, 1, 'RING', 'iShares MSCI Global Gold Miners ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1790, 1, 'SDG', 'iShares MSCI Global Impact ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1791, 1, 'ENZL', 'iShares MSCI New Zealand ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1792, 1, 'QAT', 'iShares MSCI Qatar ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1793, 1, 'TUR', 'iShares MSCI Turkey ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1794, 1, 'UAE', 'iShares MSCI UAE ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1795, 1, 'IBB', 'iShares Nasdaq Biotechnology Index Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1796, 1, 'SOXX', 'iShares PHLX SOX Semiconductor Sector Index Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1797, 1, 'AMCA', 'iShares Russell 1000 Pure U.S. Revenue ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1798, 1, 'EMIF', 'iShares S&P Emerging Markets Infrastructure Index Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1799, 1, 'ICLN', 'iShares S&P Global Clean Energy Index Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1800, 1, 'WOOD', 'iShares S&P Global Timber & Forestry Index Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1801, 1, 'INDY', 'iShares S&P India Nifty 50 Index Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1802, 1, 'IJT', 'iShares S&P Small-Cap 600 Growth ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1803, 1, 'DVY', 'iShares Select Dividend ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1804, 1, 'SHV', 'iShares Short Treasury Bond ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1805, 1, 'IGSB', 'iShares Short-Term Corporate Bond ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1806, 1, 'PFF', 'iShares U.S. Preferred Stock ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1807, 1, 'ISRL', 'Isramco, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1808, 1, 'ITI', 'Iteris, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1809, 1, 'ITRM', 'Iterum Therapeutics plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1810, 1, 'ITRI', 'Itron, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1811, 1, 'ITRN', 'Ituran Location and Control Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1812, 1, 'IVENC', 'Ivy NextShares');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1813, 1, 'IVFGC', 'Ivy NextShares');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1814, 1, 'IVFVC', 'Ivy NextShares');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1815, 1, 'IZEA', 'IZEA Worldwide, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1816, 1, 'JJSF', 'J & J Snack Foods Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1817, 1, 'MAYS', 'J. W. Mays, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1818, 1, 'JBHT', 'J.B. Hunt Transport Services, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1819, 1, 'JCOM', 'j2 Global, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1820, 1, 'JKHY', 'Jack Henry & Associates, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1821, 1, 'JACK', 'Jack In The Box Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1822, 1, 'JAGX', 'Jaguar Health, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1823, 1, 'JAKK', 'JAKKS Pacific, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1824, 1, 'JRVR', 'James River Group Holdings, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1825, 1, 'JSML', 'Janus Henderson Small Cap Growth Alpha ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1826, 1, 'JSMD', 'Janus Henderson Small/Mid Cap Growth Alpha ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1828, 1, 'JASNW', 'Jason Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1829, 1, 'JAZZ', 'Jazz Pharmaceuticals plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1830, 1, 'JD', 'JD.com, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1831, 1, 'JSYN', 'Jensyn Acquistion Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1832, 1, 'JSYNR', 'Jensyn Acquistion Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1833, 1, 'JSYNU', 'Jensyn Acquistion Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1834, 1, 'JSYNW', 'Jensyn Acquistion Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1835, 1, 'JRSH', 'Jerash Holdings (US), Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1836, 1, 'JBLU', 'JetBlue Airways Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1837, 1, 'JTPY', 'JetPay Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1838, 1, 'JCTCF', 'Jewett-Cameron Trading Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1839, 1, 'JMU', 'JMU Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1840, 1, 'JBSS', 'John B. Sanfilippo & Son, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1841, 1, 'JOUT', 'Johnson Outdoors Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1842, 1, 'JNCE', 'Jounce Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1843, 1, 'KALU', 'Kaiser Aluminum Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1844, 1, 'KALA', 'Kala Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1845, 1, 'KALV', 'KalVista Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1846, 1, 'KMDA', 'Kamada Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1847, 1, 'KNDI', 'Kandi Technologies Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1848, 1, 'KPTI', 'Karyopharm Therapeutics Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1849, 1, 'KZIA', 'Kazia Therapeutics Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1850, 1, 'KBLM', 'KBL Merger Corp. IV');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1851, 1, 'KBLMR', 'KBL Merger Corp. IV');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1852, 1, 'KBLMU', 'KBL Merger Corp. IV');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1853, 1, 'KBLMW', 'KBL Merger Corp. IV');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1854, 1, 'KBSF', 'KBS Fashion Group Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1855, 1, 'KCAP', 'KCAP Financial, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1856, 1, 'KCAPL', 'KCAP Financial, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1857, 1, 'KRNY', 'Kearny Financial');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1858, 1, 'KELYA', 'Kelly Services, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1859, 1, 'KELYB', 'Kelly Services, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1860, 1, 'KMPH', 'KemPharm, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1861, 1, 'KFFB', 'Kentucky First Federal Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1862, 1, 'KERX', 'Keryx Biopharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1863, 1, 'KEQU', 'Kewaunee Scientific Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1864, 1, 'KTCC', 'Key Tronic Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1865, 1, 'KZR', 'Kezar Life Sciences, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1866, 1, 'KFRC', 'Kforce, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1867, 1, 'KE', 'Kimball Electronics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1868, 1, 'KBAL', 'Kimball International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1869, 1, 'KIN', 'Kindred Biosciences, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1870, 1, 'KGJI', 'Kingold Jewelry Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1871, 1, 'KINS', 'Kingstone Companies, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1872, 1, 'KNSA', 'Kiniksa Pharmaceuticals, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1873, 1, 'KNSL', 'Kinsale Capital Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1874, 1, 'KIRK', 'Kirkland''s, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1875, 1, 'KTOV', 'Kitov Pharma Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1876, 1, 'KTOVW', 'Kitov Pharma Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1877, 1, 'KLAC', 'KLA-Tencor Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1878, 1, 'KLXE', 'KLX Energy Services Holdings, Inc. ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1879, 1, 'KOD', 'Kodiak Sciences Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1880, 1, 'KONA', 'Kona Grill, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1881, 1, 'KOPN', 'Kopin Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1882, 1, 'KRNT', 'Kornit Digital Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1883, 1, 'KOSS', 'Koss Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1884, 1, 'KWEB', 'KraneShares Trust KraneShares CSI China Internet ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1885, 1, 'KTOS', 'Kratos Defense & Security Solutions, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1886, 1, 'KRYS', 'Krystal Biotech, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1887, 1, 'KLIC', 'Kulicke and Soffa Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1888, 1, 'KURA', 'Kura Oncology, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1889, 1, 'KVHI', 'KVH Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1890, 1, 'FSTR', 'L.B. Foster Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1891, 1, 'LJPC', 'La Jolla Pharmaceutical Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1892, 1, 'LSBK', 'Lake Shore Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1893, 1, 'LBAI', 'Lakeland Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1894, 1, 'LKFN', 'Lakeland Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1895, 1, 'LAKE', 'Lakeland Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1896, 1, 'LRCX', 'Lam Research Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1897, 1, 'LAMR', 'Lamar Advertising Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1898, 1, 'LANC', 'Lancaster Colony Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1899, 1, 'LNDC', 'Landec Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1900, 1, 'LARK', 'Landmark Bancorp Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1901, 1, 'LMRK', 'Landmark Infrastructure Partners LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1902, 1, 'LMRKN', 'Landmark Infrastructure Partners LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1903, 1, 'LMRKO', 'Landmark Infrastructure Partners LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1904, 1, 'LMRKP', 'Landmark Infrastructure Partners LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1905, 1, 'LE', 'Lands'' End, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1906, 1, 'LSTR', 'Landstar System, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1907, 1, 'LNTH', 'Lantheus Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1908, 1, 'LTRX', 'Lantronix, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1909, 1, 'LSCC', 'Lattice Semiconductor Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1910, 1, 'LAUR', 'Laureate Education, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1911, 1, 'LAWS', 'Lawson Products, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1912, 1, 'LAZY', 'Lazydays Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1913, 1, 'LCNB', 'LCNB Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1914, 1, 'LPTX', 'LEAP THERAPEUTICS, INC.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1915, 1, 'LGCY', 'Legacy Reserves Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1916, 1, 'LTXB', 'LegacyTexas Financial Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1917, 1, 'DDBI', 'Legg Mason Developed EX-US Diversified Core ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1918, 1, 'EDBI', 'Legg Mason Emerging Markets Diversified Core ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1919, 1, 'INFR', 'Legg Mason Global Infrastructure ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1920, 1, 'LVHD', 'Legg Mason Low Volatility High Dividend ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1921, 1, 'SQLV', 'Legg Mason Small-Cap Quality Value ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1922, 1, 'UDBI', 'Legg Mason US Diversified Core ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1923, 1, 'LACQ', 'Leisure Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1924, 1, 'LACQU', 'Leisure Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1925, 1, 'LACQW', 'Leisure Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1926, 1, 'LMAT', 'LeMaitre Vascular, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1927, 1, 'TREE', 'LendingTree, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1928, 1, 'LEVL', 'Level One Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1929, 1, 'LXRX', 'Lexicon Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1930, 1, 'LX', 'LexinFintech Holdings Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1931, 1, 'LFAC', 'LF Capital Acquistion Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1932, 1, 'LFACU', 'LF Capital Acquistion Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1933, 1, 'LFACW', 'LF Capital Acquistion Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1934, 1, 'LGIH', 'LGI Homes, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1935, 1, 'LHCG', 'LHC Group');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1936, 1, 'LLIT', 'Lianluo Smart Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1937, 1, 'LBRDA', 'Liberty Broadband Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1938, 1, 'LBRDK', 'Liberty Broadband Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1939, 1, 'LEXEA', 'Liberty Expedia Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1940, 1, 'LEXEB', 'Liberty Expedia Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1941, 1, 'LBTYA', 'Liberty Global plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1942, 1, 'LBTYB', 'Liberty Global plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1943, 1, 'LBTYK', 'Liberty Global plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1944, 1, 'LILA', 'Liberty Latin America Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1945, 1, 'LILAK', 'Liberty Latin America Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1946, 1, 'BATRA', 'Liberty Media Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1947, 1, 'BATRK', 'Liberty Media Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1948, 1, 'FWONA', 'Liberty Media Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1949, 1, 'FWONK', 'Liberty Media Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1950, 1, 'LSXMA', 'Liberty Media Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1951, 1, 'LSXMB', 'Liberty Media Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1952, 1, 'LSXMK', 'Liberty Media Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1953, 1, 'LTRPA', 'Liberty TripAdvisor Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1954, 1, 'LTRPB', 'Liberty TripAdvisor Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1955, 1, 'LCUT', 'Lifetime Brands, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1956, 1, 'LFVN', 'Lifevantage Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1957, 1, 'LWAY', 'Lifeway Foods, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1958, 1, 'LGND', 'Ligand Pharmaceuticals Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1959, 1, 'LTBR', 'Lightbridge Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1960, 1, 'LPTH', 'LightPath Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1961, 1, 'LLEX', 'Lilis Energy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1962, 1, 'LMB', 'Limbach Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1963, 1, 'LLNW', 'Limelight Networks, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1964, 1, 'LMST', 'Limestone Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1965, 1, 'LMNR', 'Limoneira Co');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1966, 1, 'LINC', 'Lincoln Educational Services Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1967, 1, 'LECO', 'Lincoln Electric Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1968, 1, 'LIND', 'Lindblad Expeditions Holdings Inc. ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1969, 1, 'LINDW', 'Lindblad Expeditions Holdings Inc. ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1970, 1, 'LPCN', 'Lipocine Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1971, 1, 'YVR', 'Liquid Media Group Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1972, 1, 'OLD', 'The Long-Term Care ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1973, 1, 'LQDA', 'Liquidia Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1974, 1, 'LQDT', 'Liquidity Services, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1975, 1, 'LFUS', 'Littelfuse, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1976, 1, 'LIVN', 'LivaNova PLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1977, 1, 'LOB', 'Live Oak Bancshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1978, 1, 'LIVE', 'Live Ventures Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1979, 1, 'LPSN', 'LivePerson, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1980, 1, 'LIVX', 'LiveXLive Media, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1981, 1, 'LKQ', 'LKQ Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1982, 1, 'LMFA', 'LM Funding America, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1983, 1, 'LMFAW', 'LM Funding America, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1984, 1, 'LOGC', 'LogicBio Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1985, 1, 'LOGI', 'Logitech International S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1986, 1, 'LOGM', 'LogMein, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1987, 1, 'CNCR', 'Loncar Cancer Immunotherapy ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1988, 1, 'CHNA', 'Loncar China BioPharma ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1989, 1, 'LONE', 'Lonestar Resources US Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1990, 1, 'LOAC', 'Longevity Acquisition Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1991, 1, 'LOACR', 'Longevity Acquisition Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1992, 1, 'LOACU', 'Longevity Acquisition Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1993, 1, 'LOACW', 'Longevity Acquisition Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1994, 1, 'LOOP', 'Loop Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1995, 1, 'LORL', 'Loral Space and Communications, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1996, 1, 'LOXO', 'Loxo Oncology, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1997, 1, 'LPLA', 'LPL Financial Holdings Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1998, 1, 'LRAD', 'LRAD Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(1999, 1, 'LYTS', 'LSI Industries Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2000, 1, 'LULU', 'lululemon athletica inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2001, 1, 'LITE', 'Lumentum Holdings Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2002, 1, 'LMNX', 'Luminex Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2003, 1, 'LUNA', 'Luna Innovations Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2004, 1, 'LBC', 'Luther Burbank Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2005, 1, 'MBTF', 'M B T Financial Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2006, 1, 'MCBC', 'Macatawa Bank Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2007, 1, 'MFNC', 'Mackinac Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2008, 1, 'MTSI', 'MACOM Technology Solutions Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2009, 1, 'MGNX', 'MacroGenics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2010, 1, 'MDGL', 'Madrigal Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2011, 1, 'MAGS', 'Magal Security Systems Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2012, 1, 'MGLN', 'Magellan Health, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2013, 1, 'MGTA', 'Magenta Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2014, 1, 'MGIC', 'Magic Software Enterprises Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2015, 1, 'MNGA', 'MagneGas Applied Technology Solutions, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2016, 1, 'MGYR', 'Magyar Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2017, 1, 'MHLD', 'Maiden Holdings, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2018, 1, 'MMYT', 'MakeMyTrip Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2019, 1, 'MBUU', 'Malibu Boats, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2020, 1, 'MLVF', 'Malvern Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2021, 1, 'MAMS', 'MAM Software Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2022, 1, 'TUSK', 'Mammoth Energy Services, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2023, 1, 'RPIBC', 'Managed Portfolio Series');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2024, 1, 'MANH', 'Manhattan Associates, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2025, 1, 'LOAN', 'Manhattan Bridge Capital, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2026, 1, 'BBP', 'Virtus LifeSci Biotech Products ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2027, 1, 'MNTX', 'Manitex International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2028, 1, 'MTEX', 'Mannatech, Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2029, 1, 'MNKD', 'MannKind Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2030, 1, 'MANT', 'ManTech International Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2031, 1, 'MAPI', 'Mapi - Pharma Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2032, 1, 'MARA', 'Marathon Patent Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2033, 1, 'MCHX', 'Marchex, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2034, 1, 'MRIN', 'Marin Software Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2035, 1, 'MARPS', 'Marine Petroleum Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2036, 1, 'MRNS', 'Marinus Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2037, 1, 'MRKR', 'Marker Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2038, 1, 'MKTX', 'MarketAxess Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2039, 1, 'MRLN', 'Marlin Business Services Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2040, 1, 'MAR', 'Marriott International');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2041, 1, 'MBII', 'Marrone Bio Innovations, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2042, 1, 'MRTN', 'Marten Transport, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2043, 1, 'MMLP', 'Martin Midstream Partners L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2044, 1, 'MRVL', 'Marvell Technology Group Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2045, 1, 'MASI', 'Masimo Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2046, 1, 'MCFT', 'MasterCraft Boat Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2047, 1, 'MTCH', 'Match Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2048, 1, 'MTLS', 'Materialise NV');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2049, 1, 'MTRX', 'Matrix Service Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2050, 1, 'MAT', 'Mattel, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2051, 1, 'MATW', 'Matthews International Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2052, 1, 'MXIM', 'Maxim Integrated Products, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2053, 1, 'MXWL', 'Maxwell Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2054, 1, 'MZOR', 'Mazor Robotics Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2055, 1, 'MBFI', 'MB Financial Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2056, 1, 'MBFIO', 'MB Financial Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2057, 1, 'MGRC', 'McGrath RentCorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2058, 1, 'MDCA', 'MDC Partners Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2059, 1, 'MDRR', 'Medalist Diversified REIT, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2060, 1, 'MFIN', 'Medallion Financial Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2061, 1, 'MFINL', 'Medallion Financial Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2062, 1, 'MTBC', 'Medical Transcription Billing, Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2063, 1, 'MTBCP', 'Medical Transcription Billing, Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2065, 1, 'MDSO', 'Medidata Solutions, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2066, 1, 'MDGS', 'Medigus Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2067, 1, 'MDGSW', 'Medigus Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2068, 1, 'MDWD', 'MediWound Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2069, 1, 'MEDP', 'Medpace Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2070, 1, 'MEIP', 'MEI Pharma, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2071, 1, 'MGTX', 'MeiraGTx Holdings plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2072, 1, 'MLCO', 'Melco Resorts & Entertainment Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2073, 1, 'MLNT', 'Melinta Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2074, 1, 'MLNX', 'Mellanox Technologies, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2075, 1, 'MELR', 'Melrose Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2076, 1, 'MNLO', 'Menlo Therapeutics Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2077, 1, 'MTSL', 'MER Telemanagement Solutions Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2078, 1, 'MELI', 'MercadoLibre, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2079, 1, 'AMTB', 'Mercantil Bank Holding Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2080, 1, 'AMTBB', 'Mercantil Bank Holding Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2081, 1, 'MBWM', 'Mercantile Bank Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2082, 1, 'MERC', 'Mercer International Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2083, 1, 'MBIN', 'Merchants Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2084, 1, 'MRCY', 'Mercury Systems Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2085, 1, 'MREO', 'Mereo BioPharma Group plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2086, 1, 'EBSB', 'Meridian Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2087, 1, 'VIVO', 'Meridian Bioscience Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2088, 1, 'MRBK', 'Meridian Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2089, 1, 'MMSI', 'Merit Medical Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2090, 1, 'MACK', 'Merrimack Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2091, 1, 'MRSN', 'Mersana Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2092, 1, 'MRUS', 'Merus N.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2093, 1, 'MESA', 'Mesa Air Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2094, 1, 'MLAB', 'Mesa Laboratories, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2095, 1, 'MESO', 'Mesoblast Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2096, 1, 'CASH', 'Meta Financial Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2097, 1, 'MEOH', 'Methanex Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2098, 1, 'MGEE', 'MGE Energy Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2099, 1, 'MGPI', 'MGP Ingredients, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2100, 1, 'MBOT', 'Microbot Medical Inc. ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2101, 1, 'MCHP', 'Microchip Technology Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2102, 1, 'MU', 'Micron Technology, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2103, 1, 'MSFT', 'Microsoft Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2104, 1, 'MSTR', 'MicroStrategy Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2105, 1, 'MVIS', 'Microvision, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2106, 1, 'MICT', 'MICT, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2107, 1, 'MPB', 'Mid Penn Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2108, 1, 'MTP', 'Midatech Pharma PLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2109, 1, 'MCEP', 'Mid-Con Energy Partners, LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2110, 1, 'MBCN', 'Middlefield Banc Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2111, 1, 'MSEX', 'Middlesex Water Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2112, 1, 'MSBI', 'Midland States Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2113, 1, 'MSVB', 'Mid-Southern Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2114, 1, 'MOFG', 'MidWestOne Financial Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2115, 1, 'MIME', 'Mimecast Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2116, 1, 'MNDO', 'MIND C.T.I. Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2117, 1, 'MB', 'MINDBODY, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2118, 1, 'NERV', 'Minerva Neurosciences, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2119, 1, 'MGEN', 'Miragen Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2120, 1, 'MRTX', 'Mirati Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2121, 1, 'MSON', 'MISONIX, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2122, 1, 'MIND', 'Mitcham Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2123, 1, 'MINDP', 'Mitcham Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2124, 1, 'MITK', 'Mitek Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2125, 1, 'MITL', 'Mitel Networks Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2126, 1, 'MKSI', 'MKS Instruments, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2127, 1, 'MMAC', 'MMA Capital Management, LLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2128, 1, 'MINI', 'Mobile Mini, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2129, 1, 'MOBL', 'MobileIron, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2130, 1, 'MMDM', 'Modern Media Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2131, 1, 'MMDMR', 'Modern Media Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2132, 1, 'MMDMU', 'Modern Media Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2133, 1, 'MMDMW', 'Modern Media Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2134, 1, 'MOGO', 'Mogo Finance Technology Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2135, 1, 'MTEM', 'Molecular Templates, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2136, 1, 'MBRX', 'Moleculin Biotech, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2137, 1, 'MNTA', 'Momenta Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2138, 1, 'MOMO', 'Momo Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2139, 1, 'MKGI', 'Monaker Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2140, 1, 'MCRI', 'Monarch Casino & Resort, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2141, 1, 'MDLZ', 'Mondelez International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2142, 1, 'MGI', 'Moneygram International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2143, 1, 'MDB', 'MongoDB, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2144, 1, 'MPWR', 'Monolithic Power Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2145, 1, 'TYPE', 'Monotype Imaging Holdings Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2146, 1, 'MNRO', 'Monro, Inc. ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2147, 1, 'MRCC', 'Monroe Capital Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2148, 1, 'MRCCL', 'Monroe Capital Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2149, 1, 'MNST', 'Monster Beverage Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2150, 1, 'MORN', 'Morningstar, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2151, 1, 'MOR', 'MorphoSys AG');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2152, 1, 'MOSY', 'MoSys, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2153, 1, 'MOTA', 'Mota Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2154, 1, 'MTFB', 'Motif Bio plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2155, 1, 'MTFBW', 'Motif Bio plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2156, 1, 'MPAA', 'Motorcar Parts of America, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2157, 1, 'MOTS', 'Motus GI Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2158, 1, 'MPVD', 'Mountain Province Diamonds Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2159, 1, 'MOXC', 'Moxian, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2160, 1, 'COOP', 'Mr. Cooper Group Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2161, 1, 'MRIC', 'MRI Interventions Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2162, 1, 'MSBF', 'MSB Financial Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2163, 1, 'MTEC', 'MTech Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2164, 1, 'MTECU', 'MTech Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2165, 1, 'MTECW', 'MTech Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2166, 1, 'MTSC', 'MTS Systems Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2167, 1, 'MUDS', 'Mudrick Capital Acquisition Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2168, 1, 'MUDSU', 'Mudrick Capital Acquisition Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2169, 1, 'MUDSW', 'Mudrick Capital Acquisition Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2170, 1, 'LABL', 'Multi-Color Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2171, 1, 'MBIO', 'Mustang Bio, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2172, 1, 'MFSF', 'MutualFirst Financial Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2173, 1, 'MVBF', 'MVB Financial Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2174, 1, 'MYSZ', 'My Size, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2175, 1, 'MYL', 'Mylan N.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2176, 1, 'MYND', 'MYnd Analytics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2177, 1, 'MYNDW', 'MYnd Analytics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2178, 1, 'MYOK', 'MyoKardia, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2179, 1, 'MYOS', 'MYOS RENS Technology Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2180, 1, 'MYRG', 'MYR Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2181, 1, 'MYGN', 'Myriad Genetics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2182, 1, 'NBRV', 'Nabriva Therapeutics plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2183, 1, 'NAKD', 'Naked Brand Group Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2184, 1, 'NNDM', 'Nano Dimension Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2185, 1, 'NANO', 'Nanometrics Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2186, 1, 'NSTG', 'NanoString Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2187, 1, 'NAOV', 'NanoVibronix, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2188, 1, 'NH', 'NantHealth, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2189, 1, 'NK', 'NantKwest, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2190, 1, 'NSSC', 'NAPCO Security Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2191, 1, 'NDAQ', 'Nasdaq, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2192, 1, 'NTRA', 'Natera, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2193, 1, 'NATH', 'Nathan''s Famous, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2194, 1, 'NAUH', 'National American University Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2195, 1, 'NKSH', 'National Bankshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2196, 1, 'FIZZ', 'National Beverage Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2197, 1, 'NCMI', 'National CineMedia, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2198, 1, 'NCOM', 'National Commerce Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2199, 1, 'NESR', 'National Energy Services Reunited Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2200, 1, 'NESRW', 'National Energy Services Reunited Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2201, 1, 'NGHC', 'National General Holdings Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2202, 1, 'NGHCN', 'National General Holdings Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2203, 1, 'NGHCO', 'National General Holdings Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2204, 1, 'NGHCP', 'National General Holdings Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2205, 1, 'NGHCZ', 'National General Holdings Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2206, 1, 'NHLD', 'National Holdings Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2207, 1, 'NHLDW', 'National Holdings Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2208, 1, 'NATI', 'National Instruments Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2209, 1, 'NRC', 'National Research Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2210, 1, 'NSEC', 'National Security Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2211, 1, 'EYE', 'National Vision Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2212, 1, 'NWLI', 'National Western Life Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2213, 1, 'NAII', 'Natural Alternatives International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2214, 1, 'NHTC', 'Natural Health Trends Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2215, 1, 'NATR', 'Nature''s Sunshine Products, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2216, 1, 'BABY', 'Natus Medical Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2217, 1, 'JSM', 'Navient Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2218, 1, 'NAVI', 'Navient Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2219, 1, 'NMCI', 'Navios Maritime Containers L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2220, 1, 'NBCP', 'NB Capital Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2221, 1, 'NBTB', 'NBT Bancorp Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2222, 1, 'NCSM', 'NCS Multistage Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2223, 1, 'NEBU', 'Nebula Acquisition Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2224, 1, 'NEBUU', 'Nebula Acquisition Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2225, 1, 'NEBUW', 'Nebula Acquisition Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2226, 1, 'NKTR', 'Nektar Therapeutics');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2227, 1, 'NMRD', 'Nemaura Medical Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2228, 1, 'NEOG', 'Neogen Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2229, 1, 'NEO', 'NeoGenomics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2230, 1, 'NTGN', 'Neon Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2231, 1, 'NEON', 'Neonode Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2232, 1, 'NEOS', 'Neos Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2233, 1, 'NVCN', 'Neovasc Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2234, 1, 'NEPT', 'Neptune Wellness Solutions Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2235, 1, 'UEPS', 'Net 1 UEPS Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2236, 1, 'NETE', 'Net Element, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2237, 1, 'NTAP', 'NetApp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2238, 1, 'NTES', 'NetEase, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2239, 1, 'NFLX', 'Netflix, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2240, 1, 'NTGR', 'NETGEAR, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2241, 1, 'NTCT', 'NetScout Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2242, 1, 'NTWK', 'NetSol Technologies Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2243, 1, 'CUR', 'Neuralstem, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2244, 1, 'NBIX', 'Neurocrine Biosciences, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2245, 1, 'NURO', 'NeuroMetrix, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2246, 1, 'NUROW', 'NeuroMetrix, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2247, 1, 'STIM', 'Neuronetics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2248, 1, 'NTRP', 'Neurotrope, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2249, 1, 'NBEV', 'New Age Beverages Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2250, 1, 'NYMT', 'New York Mortgage Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2251, 1, 'NYMTN', 'New York Mortgage Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2252, 1, 'NYMTO', 'New York Mortgage Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2253, 1, 'NYMTP', 'New York Mortgage Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2254, 1, 'NEWA', 'Newater Technology, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2255, 1, 'NLNK', 'NewLink Genetics Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2256, 1, 'NMRK', 'Newmark Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2257, 1, 'NMRKV', 'Newmark Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2258, 1, 'NWS', 'News Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2259, 1, 'NWSA', 'News Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2260, 1, 'NEWT', 'Newtek Business Services Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2261, 1, 'NEWTI', 'Newtek Business Services Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2262, 1, 'NEWTZ', 'Newtek Business Services Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2263, 1, 'NXEO', 'Nexeo Solutions, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2264, 1, 'NXEOU', 'Nexeo Solutions, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2265, 1, 'NXEOW', 'Nexeo Solutions, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2266, 1, 'NXMD', 'Nexeon Medsystems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2267, 1, 'NXST', 'Nexstar Media Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2268, 1, 'NEXT', 'NextDecade Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2269, 1, 'NXGN', 'NextGen Healthcare, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2270, 1, 'NFEC', 'NF Energy Saving Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2271, 1, 'NODK', 'NI Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2272, 1, 'EGOV', 'NIC Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2273, 1, 'NICE', 'NICE Ltd');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2274, 1, 'NICK', 'Nicholas Financial, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2275, 1, 'NCBS', 'Nicolet Bankshares Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2276, 1, 'NITE', 'Nightstar Therapeutics plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2277, 1, 'NIHD', 'NII Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2278, 1, 'NIU', 'Niu Technologies');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2279, 1, 'LASR', 'nLIGHT, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2280, 1, 'NMIH', 'NMI Holdings Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2281, 1, 'NNBR', 'NN, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2282, 1, 'NDLS', 'Noodles & Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2283, 1, 'NDSN', 'Nordson Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2284, 1, 'NSYS', 'Nortech Systems Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2285, 1, 'NBN', 'Northeast Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2286, 1, 'NTIC', 'Northern Technologies International Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2287, 1, 'NTRS', 'Northern Trust Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2288, 1, 'NTRSP', 'Northern Trust Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2289, 1, 'NFBK', 'Northfield Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2290, 1, 'NRIM', 'Northrim BanCorp Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2291, 1, 'NWBI', 'Northwest Bancshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2292, 1, 'NWPX', 'Northwest Pipe Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2293, 1, 'NCLH', 'Norwegian Cruise Line Holdings Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2294, 1, 'NWFL', 'Norwood Financial Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2295, 1, 'NVFY', 'Nova Lifestyle, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2296, 1, 'NVMI', 'Nova Measuring Instruments Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2297, 1, 'NOVN', 'Novan, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2298, 1, 'NOVT', 'Novanta Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2299, 1, 'NVAX', 'Novavax, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2300, 1, 'NVLN', 'Novelion Therapeutics Inc. ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2301, 1, 'NVCR', 'NovoCure Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2302, 1, 'NVMM', 'Novume Solutions, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2303, 1, 'NVUS', 'Novus Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2304, 1, 'NUAN', 'Nuance Communications, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2305, 1, 'NCNA', 'NuCana plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2306, 1, 'NTNX', 'Nutanix, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2307, 1, 'NTRI', 'NutriSystem Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2308, 1, 'NUVA', 'NuVasive, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2309, 1, 'NVTR', 'Nuvectra Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2310, 1, 'QQQX', 'Nuveen NASDAQ 100 Dynamic Overwrite Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2311, 1, 'NVEE', 'NV5 Global, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2312, 1, 'NVEC', 'NVE Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2313, 1, 'NVDA', 'NVIDIA Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2314, 1, 'NXPI', 'NXP Semiconductors N.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2315, 1, 'NXTM', 'NxStage Medical, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2316, 1, 'NXTD', 'NXT-ID Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2317, 1, 'NXTDW', 'NXT-ID Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2318, 1, 'NYMX', 'Nymox Pharmaceutical Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2319, 1, 'OIIM', 'O2Micro International Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2320, 1, 'OVLY', 'Oak Valley Bancorp (CA)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2321, 1, 'OCSL', 'Oaktree Specialty Lending Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2322, 1, 'OCSLL', 'Oaktree Specialty Lending Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2323, 1, 'OCSI', 'Oaktree Strategic Income Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2324, 1, 'OASM', 'Oasmia Pharmaceutical AB');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2325, 1, 'OBLN', 'Obalon Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2326, 1, 'OBSV', 'ObsEva SA');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2327, 1, 'OBCI', 'Ocean Bio-Chem, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2328, 1, 'OPTT', 'Ocean Power Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2329, 1, 'ORIG', 'Ocean Rig UDW Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2330, 1, 'OCFC', 'OceanFirst Financial Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2331, 1, 'OCLR', 'Oclaro, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2332, 1, 'OFED', 'Oconee Federal Financial Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2333, 1, 'OCUL', 'Ocular Therapeutix, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2334, 1, 'ODT', 'Odonate Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2335, 1, 'OMEX', 'Odyssey Marine Exploration, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2336, 1, 'ODP', 'Office Depot, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2337, 1, 'OFS', 'OFS Capital Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2338, 1, 'OFSSL', 'OFS Capital Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2339, 1, 'OFSSZ', 'OFS Capital Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2340, 1, 'OCCI', 'OFS Credit Company, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2341, 1, 'OHAI', 'OHA Investment Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2342, 1, 'OVBC', 'Ohio Valley Banc Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2343, 1, 'OHRP', 'Ohr Pharmaceutical, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2344, 1, 'OKTA', 'Okta, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2345, 1, 'ODFL', 'Old Dominion Freight Line, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2346, 1, 'OLBK', 'Old Line Bancshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2347, 1, 'ONB', 'Old National Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2348, 1, 'OPOF', 'Old Point Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2349, 1, 'OSBC', 'Old Second Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2350, 1, 'OSBCP', 'Old Second Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2351, 1, 'OLLI', 'Ollie''s Bargain Outlet Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2352, 1, 'ZEUS', 'Olympic Steel, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2353, 1, 'OFLX', 'Omega Flex, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2354, 1, 'OMER', 'Omeros Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2355, 1, 'OMCL', 'Omnicell, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2356, 1, 'ON', 'ON Semiconductor Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2357, 1, 'OTIV', 'On Track Innovations Ltd');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2358, 1, 'ONS', 'Oncobiologics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2359, 1, 'ONSIW', 'Oncobiologics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2360, 1, 'ONCY', 'Oncolytics Biotech Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2361, 1, 'OMED', 'OncoMed Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2362, 1, 'ONTX', 'Onconova Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2363, 1, 'ONTXW', 'Onconova Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2364, 1, 'ONCS', 'OncoSec Medical Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2365, 1, 'OHGI', 'One Horizon Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2366, 1, 'OSS', 'One Stop Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2367, 1, 'OSPN', 'OneSpan Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2368, 1, 'OPBK', 'OP Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2369, 1, 'OTEX', 'Open Text Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2370, 1, 'OPRA', 'Opera Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2371, 1, 'OPES', 'Opes Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2372, 1, 'OPESU', 'Opes Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2373, 1, 'OPESW', 'Opes Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2374, 1, 'OPGN', 'OpGen, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2375, 1, 'OPGNW', 'OpGen, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2376, 1, 'OPHT', 'Ophthotech Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2377, 1, 'OPNT', 'Opiant Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2378, 1, 'OPK', 'Opko Health, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2379, 1, 'OBAS', 'Optibase Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2380, 1, 'OCC', 'Optical Cable Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2381, 1, 'OPRX', 'OptimizeRx Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2382, 1, 'OPHC', 'OptimumBank Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2383, 1, 'OPTN', 'OptiNose, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2384, 1, 'OPB', 'Opus Bank');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2385, 1, 'ORMP', 'Oramed Pharmaceuticals Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2386, 1, 'OSUR', 'OraSure Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2387, 1, 'ORBC', 'ORBCOMM Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2388, 1, 'ORBK', 'Orbotech Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2389, 1, 'ORTX', 'Orchard Therapeutics plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2390, 1, 'ORLY', 'O''Reilly Automotive, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2391, 1, 'ONVO', 'Organovo Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2392, 1, 'ORGS', 'Orgenesis Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2393, 1, 'SEED', 'Origin Agritech Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2394, 1, 'OBNK', 'Origin Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2395, 1, 'OESX', 'Orion Energy Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2396, 1, 'ORIT', 'Oritani Financial Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2397, 1, 'ORRF', 'Orrstown Financial Services Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2398, 1, 'OFIX', 'Orthofix Medical Inc. ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2399, 1, 'KIDS', 'OrthoPediatrics Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2400, 1, 'OSIS', 'OSI Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2401, 1, 'OSIR', 'Osiris Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2402, 1, 'OSMT', 'Osmotica Pharmaceuticals plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2403, 1, 'OSN', 'Ossen Innovation Co., Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2404, 1, 'OTEL', 'Otelco Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2405, 1, 'OTG', 'OTG EXP, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2406, 1, 'OTIC', 'Otonomy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2407, 1, 'OTTW', 'Ottawa Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2408, 1, 'OTTR', 'Otter Tail Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2409, 1, 'OVAS', 'OvaScience Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2410, 1, 'OSTK', 'Overstock.com, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2411, 1, 'OVID', 'Ovid Therapeutics Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2412, 1, 'OXBR', 'Oxbridge Re Holdings Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2413, 1, 'OXBRW', 'Oxbridge Re Holdings Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2414, 1, 'OXFD', 'Oxford Immunotec Global PLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2415, 1, 'OXLC', 'Oxford Lane Capital Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2416, 1, 'OXLCM', 'Oxford Lane Capital Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2417, 1, 'OXLCO', 'Oxford Lane Capital Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2418, 1, 'OXSQ', 'Oxford Square Capital Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2419, 1, 'OXSQL', 'Oxford Square Capital Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2420, 1, 'PFIN', 'P & F Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2421, 1, 'PTSI', 'P.A.M. Transportation Services, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2422, 1, 'PCAR', 'PACCAR Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2423, 1, 'VETS', 'Pacer Military Times Best Employers ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2424, 1, 'PACB', 'Pacific Biosciences of California, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2425, 1, 'PCB', 'Pacific City Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2426, 1, 'PEIX', 'Pacific Ethanol, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2427, 1, 'PMBC', 'Pacific Mercantile Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2428, 1, 'PPBI', 'Pacific Premier Bancorp Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2429, 1, 'PCRX', 'Pacira Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2430, 1, 'PACW', 'PacWest Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2431, 1, 'PTIE', 'Pain Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2432, 1, 'PAAS', 'Pan American Silver Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2433, 1, 'PANL', 'Pangaea Logistics Solutions Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2434, 1, 'PZZA', 'Papa John''s International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2435, 1, 'FRSH', 'Papa Murphy''s Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2436, 1, 'PRTK', 'Paratek Pharmaceuticals, Inc. ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2437, 1, 'TEUM', 'Pareteum Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2438, 1, 'PNRL', 'Paringa Resources Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2439, 1, 'PCYG', 'Park City Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2440, 1, 'PKBK', 'Parke Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2441, 1, 'PKOH', 'Park-Ohio Holdings Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2442, 1, 'PTNR', 'Partner Communications Company Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2443, 1, 'PBHC', 'Pathfinder Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2444, 1, 'PATK', 'Patrick Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2445, 1, 'PNBK', 'Patriot National Bancorp Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2446, 1, 'PATI', 'Patriot Transportation Holding, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2447, 1, 'PEGI', 'Pattern Energy Group Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2448, 1, 'PDCO', 'Patterson Companies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2449, 1, 'PTEN', 'Patterson-UTI Energy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2450, 1, 'PAVM', 'PAVmed Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2451, 1, 'PAVMW', 'PAVmed Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2452, 1, 'PAVMZ', 'PAVmed Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2453, 1, 'PAYX', 'Paychex, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2454, 1, 'PCTY', 'Paylocity Holding Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2455, 1, 'PYDS', 'Payment Data Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2456, 1, 'PYPL', 'PayPal Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2457, 1, 'PBBI', 'PB Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2458, 1, 'CNXN', 'PC Connection, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2459, 1, 'PCMI', 'PCM, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2460, 1, 'PCSB', 'PCSB Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2461, 1, 'PCTI', 'PC-Tel, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2462, 1, 'PDCE', 'PDC Energy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2463, 1, 'PDFS', 'PDF Solutions, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2464, 1, 'PDLI', 'PDL BioPharma, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2465, 1, 'PDLB', 'PDL Community Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2466, 1, 'PDVW', 'pdvWireless, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2467, 1, 'SKIS', 'Peak Resorts, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2468, 1, 'PGC', 'Peapack-Gladstone Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2469, 1, 'PEER', 'PeerStream, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2470, 1, 'PEGA', 'Pegasystems Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2471, 1, 'PENN', 'Penn National Gaming, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2472, 1, 'PVAC', 'Penn Virginia Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2473, 1, 'PFLT', 'PennantPark Floating Rate Capital Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2474, 1, 'PNNT', 'PennantPark Investment Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2475, 1, 'PWOD', 'Penns Woods Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2476, 1, 'WRLS', 'Pensare Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2477, 1, 'WRLSR', 'Pensare Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2478, 1, 'WRLSU', 'Pensare Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2479, 1, 'WRLSW', 'Pensare Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2480, 1, 'PEBO', 'Peoples Bancorp Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2481, 1, 'PEBK', 'Peoples Bancorp of North Carolina, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2482, 1, 'PFIS', 'Peoples Financial Services Corp. ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2483, 1, 'PBCT', 'People''s United Financial, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2484, 1, 'PBCTP', 'People''s United Financial, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2485, 1, 'PUB', 'People''s Utah Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2486, 1, 'KPFS', 'Pepper Food Service Co., Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2487, 1, 'PEP', 'Pepsico, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2488, 1, 'PRCP', 'Perceptron, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2489, 1, 'PRFT', 'Perficient, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2490, 1, 'PFMT', 'Performant Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2491, 1, 'PERI', 'Perion Network Ltd');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2492, 1, 'PESI', 'Perma-Fix Environmental Services, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2493, 1, 'PPIH', 'Perma-Pipe International Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2494, 1, 'PTX', 'Pernix Therapeutics Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2495, 1, 'PGLC', 'Pershing Gold Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2496, 1, 'PETQ', 'PetIQ, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2497, 1, 'PETS', 'PetMed Express, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2498, 1, 'PFSW', 'PFSweb, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2499, 1, 'PGTI', 'PGT Innovations, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2500, 1, 'PHAS', 'PhaseBio Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2501, 1, 'PHII', 'PHI, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2502, 1, 'PHIIK', 'PHI, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2503, 1, 'PAHC', 'Phibro Animal Health Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2504, 1, 'PHIO', 'Phio Pharmaceuticals Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2505, 1, 'PHIOW', 'Phio Pharmaceuticals Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2506, 1, 'PLAB', 'Photronics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2507, 1, 'PICO', 'PICO Holdings Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2508, 1, 'PLLL', 'Piedmont Lithium Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2509, 1, 'PIRS', 'Pieris Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2510, 1, 'PPC', 'Pilgrim''s Pride Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2511, 1, 'PDD', 'Pinduoduo Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2512, 1, 'PME', 'Pingtan Marine Enterprise Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2513, 1, 'PNFP', 'Pinnacle Financial Partners, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2514, 1, 'PT', 'Pintec Technology Holdings Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2515, 1, 'PPSI', 'Pioneer Power Solutions, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2516, 1, 'PXLW', 'Pixelworks, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2517, 1, 'EAGL', 'Platinum Eagle Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2518, 1, 'EAGLU', 'Platinum Eagle Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2519, 1, 'EAGLW', 'Platinum Eagle Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2520, 1, 'PLYA', 'Playa Hotels & Resorts N.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2521, 1, 'PLXS', 'Plexus Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2522, 1, 'PLUG', 'Plug Power, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2523, 1, 'PLBC', 'Plumas Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2524, 1, 'PS', 'Pluralsight, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2525, 1, 'PSTI', 'Pluristem Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2526, 1, 'PLXP', 'PLx Pharma Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2527, 1, 'PBSK', 'Poage Bankshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2528, 1, 'PNTR', 'Pointer Telocation Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2529, 1, 'PCOM', 'Points International, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2530, 1, 'POLA', 'Polar Power, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2531, 1, 'PTE', 'PolarityTE, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2532, 1, 'POLY', 'PolyPid Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2533, 1, 'POOL', 'Pool Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2534, 1, 'POPE', 'Pope Resources');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2535, 1, 'BPOP', 'Popular, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2536, 1, 'BPOPM', 'Popular, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2537, 1, 'BPOPN', 'Popular, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2538, 1, 'PTLA', 'Portola Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2539, 1, 'PBPB', 'Potbelly Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2540, 1, 'PCH', 'PotlatchDeltic Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2541, 1, 'POWL', 'Powell Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2542, 1, 'POWI', 'Power Integrations, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2543, 1, 'PRAA', 'PRA Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2544, 1, 'PRAH', 'PRA Health Sciences, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2545, 1, 'PRAN', 'Prana Biotechnology Ltd');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2546, 1, 'PRPO', 'Precipio, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2547, 1, 'AIPT', 'Precision Therapeutics Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2548, 1, 'PFBC', 'Preferred Bank');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2549, 1, 'PLPC', 'Preformed Line Products Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2550, 1, 'PFBI', 'Premier Financial Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2551, 1, 'PINC', 'Premier, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2552, 1, 'LENS', 'Presbia PLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2553, 1, 'PSDO', 'Presidio, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2554, 1, 'PBIO', 'Pressure BioSciences, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2555, 1, 'PRGX', 'PRGX Global, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2556, 1, 'PSMT', 'PriceSmart, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2557, 1, 'PNRG', 'PrimeEnergy Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2558, 1, 'PRMW', 'Primo Water Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2559, 1, 'PRIM', 'Primoris Services Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2560, 1, 'PVAL', 'Principal Contrarian Value Index ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2561, 1, 'PFG', 'Principal Financial Group Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2562, 1, 'BTEC', 'Principal Healthcare Innovators Index ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2563, 1, 'PXUS', 'Principal International Multi-Factor Index ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2564, 1, 'GENY', 'Principal Millennials Index ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2565, 1, 'PSET', 'Principal Price Setters Index ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2566, 1, 'PY', 'Principal Shareholder Yield Index ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2567, 1, 'PMOM', 'Principal Sustainable Momentum Index ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2568, 1, 'USMC', 'Principal U.S. Mega-Cap Multi-Factor Index ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2569, 1, 'PSC', 'Principal U.S. Small-Cap Multi-Factor Index ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2570, 1, 'PRNB', 'Principia Biopharma Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2571, 1, 'PRTH', 'Priority Technology Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2572, 1, 'PRTHU', 'Priority Technology Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2573, 1, 'PRTHW', 'Priority Technology Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2574, 1, 'PDEX', 'Pro-Dex, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2575, 1, 'IPDN', 'Professional Diversity Network, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2576, 1, 'PFIE', 'Profire Energy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2577, 1, 'PGNX', 'Progenics Pharmaceuticals Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2578, 1, 'PRGS', 'Progress Software Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2579, 1, 'LUNG', 'ProLung, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2580, 1, 'PFPT', 'Proofpoint, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2581, 1, 'PRPH', 'ProPhase Labs, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2582, 1, 'PRQR', 'ProQR Therapeutics N.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2583, 1, 'EQRR', 'ProShares Equities for Rising Rates ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2584, 1, 'BIB', 'ProShares Ultra Nasdaq Biotechnology');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2585, 1, 'UBIO', 'Proshares UltraPro Nasdaq Biotechnology');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2586, 1, 'TQQQ', 'ProShares UltraPro QQQ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2587, 1, 'ZBIO', 'ProShares UltraPro Short NASDAQ Biotechnology');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2588, 1, 'SQQQ', 'ProShares UltraPro Short QQQ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2589, 1, 'BIS', 'ProShares UltraShort Nasdaq Biotechnology');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2590, 1, 'PSEC', 'Prospect Capital Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2591, 1, 'PTGX', 'Protagonist Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2592, 1, 'PTVCA', 'Protective Insurance Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2593, 1, 'PTVCB', 'Protective Insurance Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2594, 1, 'PRTO', 'Proteon Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2595, 1, 'PTI', 'Proteostasis Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2596, 1, 'PRTA', 'Prothena Corporation plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2597, 1, 'PRVB', 'Provention Bio, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2598, 1, 'PVBC', 'Provident Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2599, 1, 'PROV', 'Provident Financial Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2600, 1, 'PBIP', 'Prudential Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2601, 1, 'PMD', 'Psychemedics Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2602, 1, 'PTC', 'PTC Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2603, 1, 'PTCT', 'PTC Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2604, 1, 'PULM', 'Pulmatrix, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2605, 1, 'PLSE', 'Pulse Biosciences, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2606, 1, 'PBYI', 'Puma Biotechnology Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2607, 1, 'PACQ', 'Pure Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2608, 1, 'PACQU', 'Pure Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2609, 1, 'PACQW', 'Pure Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2610, 1, 'PCYO', 'Pure Cycle Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2611, 1, 'PRPL', 'Purple Innovation, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2612, 1, 'PXS', 'Pyxis Tankers Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2613, 1, 'QADA', 'QAD Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2614, 1, 'QADB', 'QAD Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2615, 1, 'QCRH', 'QCR Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2616, 1, 'QGEN', 'Qiagen N.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2617, 1, 'QIWI', 'QIWI plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2618, 1, 'QRVO', 'Qorvo, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2619, 1, 'QCOM', 'QUALCOMM Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2620, 1, 'QBAK', 'Qualstar Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2621, 1, 'QLYS', 'Qualys, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2622, 1, 'QTNA', 'Quantenna Communications, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2623, 1, 'QTRX', 'Quanterix Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2624, 1, 'QTRH', 'Quarterhill Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2625, 1, 'QRHC', 'Quest Resource Holding Corporation.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2626, 1, 'QUIK', 'QuickLogic Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2627, 1, 'QDEL', 'Quidel Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2628, 1, 'QNST', 'QuinStreet, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2629, 1, 'QUMU', 'Qumu Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2630, 1, 'QTNT', 'Quotient Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2631, 1, 'QRTEA', 'Qurate Retail, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2632, 1, 'QRTEB', 'Qurate Retail, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2633, 1, 'QTT', 'Qutoutiao Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2634, 1, 'RRD', 'R.R. Donnelley & Sons Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2635, 1, 'RCM', 'R1 RCM Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2636, 1, 'RARX', 'Ra Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2637, 1, 'RADA', 'RADA Electronic Industries Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2638, 1, 'RDCM', 'Radcom Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2639, 1, 'RSYS', 'RadiSys Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2640, 1, 'RDUS', 'Radius Health, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2641, 1, 'RDNT', 'RadNet, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2642, 1, 'RDWR', 'Radware Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2643, 1, 'METC', 'Ramaco Resources, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2644, 1, 'RMBS', 'Rambus, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2645, 1, 'RAND', 'Rand Capital Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2646, 1, 'GOLD', 'Randgold Resources Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2647, 1, 'RNDB', 'Randolph Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2648, 1, 'RPD', 'Rapid7, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2649, 1, 'RAVE', 'Rave Restaurant Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2650, 1, 'RAVN', 'Raven Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2651, 1, 'RBB', 'RBB Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2652, 1, 'ROLL', 'RBC Bearings Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2653, 1, 'RICK', 'RCI Hospitality Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2654, 1, 'RCMT', 'RCM Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2655, 1, 'RDI', 'Reading International Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2656, 1, 'RDIB', 'Reading International Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2657, 1, 'RGSE', 'Real Goods Solar, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2658, 1, 'BCNA', 'Reality Shares Nasdaq NexGen Economy China ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2659, 1, 'BLCN', 'Reality Shares Nasdaq NextGen Economy ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2660, 1, 'RLM', 'Realm Therapeutics plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2662, 1, 'RP', 'RealPage, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2663, 1, 'RETA', 'Reata Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2664, 1, 'RCON', 'Recon Technology, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2665, 1, 'REPH', 'Recro Pharma, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2666, 1, 'RRGB', 'Red Robin Gourmet Burgers, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2667, 1, 'RRR', 'Red Rock Resorts, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2668, 1, 'RDVT', 'Red Violet, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2669, 1, 'RDFN', 'Redfin Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2670, 1, 'RDHL', 'Redhill Biopharma Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2671, 1, 'REG', 'Regency Centers Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2672, 1, 'REGN', 'Regeneron Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2673, 1, 'RGNX', 'REGENXBIO Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2674, 1, 'RGLS', 'Regulus Therapeutics Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2675, 1, 'RBNC', 'Reliant Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2676, 1, 'RELV', 'Reliv'' International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2677, 1, 'MARK', 'Remark Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2678, 1, 'RRI', 'Remora Royalties, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2679, 1, 'RNST', 'Renasant Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2680, 1, 'REGI', 'Renewable Energy Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2681, 1, 'ABAC', 'Renmin Tianli Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2682, 1, 'RCII', 'Rent-A-Center Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2683, 1, 'RGEN', 'Repligen Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2684, 1, 'REPL', 'Replimune Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2685, 1, 'RBCAA', 'Republic Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2686, 1, 'FRBK', 'Republic First Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2687, 1, 'REFR', 'Research Frontiers Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2688, 1, 'RSLS', 'ReShape Lifesciences Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2689, 1, 'RESN', 'Resonant Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2690, 1, 'RECN', 'Resources Connection, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2691, 1, 'HAIR', 'Restoration Robotics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2692, 1, 'TORC', 'resTORbio, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2693, 1, 'ROIC', 'Retail Opportunity Investments Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2694, 1, 'RETO', 'ReTo Eco-Solutions, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2695, 1, 'RTRX', 'Retrophin, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2696, 1, 'RVNC', 'Revance Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2697, 1, 'RVEN', 'Reven Housing REIT, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2698, 1, 'RVLT', 'Revolution Lighting Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2699, 1, 'RWLK', 'ReWalk Robotics Ltd');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2700, 1, 'RFIL', 'RF Industries, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2701, 1, 'RGCO', 'RGC Resources Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2702, 1, 'RYTM', 'Rhythm Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2703, 1, 'RBBN', 'Ribbon Communications Inc. ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2704, 1, 'RIBT', 'RiceBran Technologies');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2705, 1, 'RIBTW', 'RiceBran Technologies');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2706, 1, 'RELL', 'Richardson Electronics, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2707, 1, 'RIGL', 'Rigel Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2708, 1, 'RNET', 'RigNet, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2709, 1, 'RMNI', 'Rimini Street, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2710, 1, 'RIOT', 'Riot Blockchain, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2711, 1, 'REDU', 'RISE Education Cayman Ltd');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2712, 1, 'RTTR', 'Ritter Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2713, 1, 'RVSB', 'Riverview Bancorp Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2714, 1, 'RIVE', 'Riverview Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2715, 1, 'RCKT', 'Rocket Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2716, 1, 'RMTI', 'Rockwell Medical, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2717, 1, 'RCKY', 'Rocky Brands, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2718, 1, 'RMCF', 'Rocky Mountain Chocolate Factory, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2719, 1, 'ROKU', 'Roku, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2720, 1, 'ROSE', 'Rosehill Resources Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2721, 1, 'ROSEU', 'Rosehill Resources Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2722, 1, 'ROSEW', 'Rosehill Resources Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2723, 1, 'ROST', 'Ross Stores, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2724, 1, 'RGLD', 'Royal Gold, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2725, 1, 'RTIX', 'RTI Surgical, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2726, 1, 'RBCN', 'Rubicon Technology, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2727, 1, 'RUBY', 'Rubius Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2728, 1, 'RMBL', 'RumbleOn, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2729, 1, 'RUSHA', 'Rush Enterprises, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2730, 1, 'RUSHB', 'Rush Enterprises, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2731, 1, 'RUTH', 'Ruth''s Hospitality Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2732, 1, 'RYAAY', 'Ryanair Holdings plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2733, 1, 'STBA', 'S&T Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2734, 1, 'SANW', 'S&W Seed Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2735, 1, 'SCAC', 'Saban Capital Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2736, 1, 'SCACU', 'Saban Capital Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2737, 1, 'SCACW', 'Saban Capital Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2738, 1, 'SBRA', 'Sabra Health Care REIT, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2739, 1, 'SABR', 'Sabre Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2740, 1, 'SAEX', 'SAExploration Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2741, 1, 'SFET', 'Safe-T Group Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2742, 1, 'SAFT', 'Safety Insurance Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2743, 1, 'SGA', 'Saga Communications, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2744, 1, 'SAGE', 'Sage Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2745, 1, 'SAIA', 'Saia, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2746, 1, 'SALM', 'Salem Media Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2747, 1, 'SAL', 'Salisbury Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2748, 1, 'SAFM', 'Sanderson Farms, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2749, 1, 'SASR', 'Sandy Spring Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2750, 1, 'SGMO', 'Sangamo Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2751, 1, 'SANM', 'Sanmina Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2752, 1, 'GCVRZ', 'Sanofi');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2753, 1, 'SPNS', 'Sapiens International Corporation N.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2754, 1, 'SRPT', 'Sarepta Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2755, 1, 'SVRA', 'Savara, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2756, 1, 'SBFG', 'SB Financial Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2757, 1, 'SBFGP', 'SB Financial Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2758, 1, 'SBBX', 'SB One Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2759, 1, 'SBAC', 'SBA Communications Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2760, 1, 'SCSC', 'ScanSource, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2761, 1, 'SMIT', 'Schmitt Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2762, 1, 'SCHN', 'Schnitzer Steel Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2763, 1, 'SRRK', 'Scholar Rock Holding Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2764, 1, 'SCHL', 'Scholastic Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2765, 1, 'SGMS', 'Scientific Games Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2766, 1, 'SCPH', 'scPharmaceuticals Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2767, 1, 'SCYX', 'SCYNEXIS, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2768, 1, 'SEAC', 'SeaChange International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2769, 1, 'SBCF', 'Seacoast Banking Corporation of Florida');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2770, 1, 'STX', 'Seagate Technology PLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2771, 1, 'SHIP', 'Seanergy Maritime Holdings Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2772, 1, 'SHIPW', 'Seanergy Maritime Holdings Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2773, 1, 'SHOS', 'Sears Hometown and Outlet Stores, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2774, 1, 'SPNE', 'SeaSpine Holdings Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2775, 1, 'SGEN', 'Seattle Genetics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2776, 1, 'EYES', 'Second Sight Medical Products, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2777, 1, 'EYESW', 'Second Sight Medical Products, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2778, 1, 'SECO', 'Secoo Holding Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2779, 1, 'SCWX', 'SecureWorks Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2780, 1, 'SNFCA', 'Security National Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2781, 1, 'SEIC', 'SEI Investments Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2782, 1, 'SLCT', 'Select Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2783, 1, 'SIR', 'Select Income REIT');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2784, 1, 'SIC', 'Select Interior Concepts, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2785, 1, 'SELB', 'Selecta Biosciences, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2786, 1, 'SIGI', 'Selective Insurance Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2787, 1, 'SLS', 'SELLAS Life Sciences Group, Inc. ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2788, 1, 'LEDS', 'SemiLEDS Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2789, 1, 'SMTC', 'Semtech Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2790, 1, 'SENEA', 'Seneca Foods Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2791, 1, 'SENEB', 'Seneca Foods Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2792, 1, 'SNES', 'SenesTech, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2793, 1, 'SNH', 'Senior Housing Properties Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2794, 1, 'SNHNI', 'Senior Housing Properties Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2795, 1, 'SNHNL', 'Senior Housing Properties Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2796, 1, 'AIHS', 'Senmiao Technology Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2797, 1, 'SRTS', 'Sensus Healthcare, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2798, 1, 'SRTSW', 'Sensus Healthcare, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2799, 1, 'STNL', 'Sentinel Energy Services Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2800, 1, 'STNLU', 'Sentinel Energy Services Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2801, 1, 'STNLW', 'Sentinel Energy Services Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2802, 1, 'SQBG', 'Sequential Brands Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2803, 1, 'MCRB', 'Seres Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2804, 1, 'SREV', 'ServiceSource International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2805, 1, 'SFBS', 'ServisFirst Bancshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2806, 1, 'SESN', 'Sesen Bio, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2807, 1, 'SVBI', 'Severn Bancorp Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2808, 1, 'SGBX', 'SG Blocks, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2809, 1, 'SGOC', 'SGOCO Group, Ltd');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2810, 1, 'SEII', 'Sharing Economy International Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2811, 1, 'SMED', 'Sharps Compliance Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2812, 1, 'SHSP', 'SharpSpring, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2813, 1, 'SHEN', 'Shenandoah Telecommunications Co');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2814, 1, 'PIXY', 'ShiftPixy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2815, 1, 'SHLO', 'Shiloh Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2816, 1, 'SCCI', 'Shimmick Construction Company, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2817, 1, 'TYHT', 'Shineco, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2818, 1, 'SHPG', 'Shire plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2819, 1, 'SCVL', 'Shoe Carnival, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2820, 1, 'SHBI', 'Shore Bancshares Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2821, 1, 'SSTI', 'ShotSpotter, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2822, 1, 'SFLY', 'Shutterfly, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2823, 1, 'SIFI', 'SI Financial Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2824, 1, 'SIBN', 'SI-BONE, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2825, 1, 'SIEB', 'Siebert Financial Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2826, 1, 'SNNA', 'Sienna Biopharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2827, 1, 'SIEN', 'Sientra, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2828, 1, 'BSRR', 'Sierra Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2829, 1, 'SRRA', 'Sierra Oncology, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2830, 1, 'SWIR', 'Sierra Wireless, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2831, 1, 'SIFY', 'Sify Technologies Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2832, 1, 'SIGA', 'SIGA Technologies Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2833, 1, 'SGLB', 'Sigma Labs, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2834, 1, 'SGLBW', 'Sigma Labs, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2835, 1, 'SGMA', 'SigmaTron International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2836, 1, 'SBNY', 'Signature Bank');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2837, 1, 'SBNYW', 'Signature Bank');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2838, 1, 'SLGN', 'Silgan Holdings Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2839, 1, 'SILC', 'Silicom Ltd');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2840, 1, 'SLAB', 'Silicon Laboratories, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2841, 1, 'SIMO', 'Silicon Motion Technology Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2842, 1, 'SAMG', 'Silvercrest Asset Management Group Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2843, 1, 'SSNT', 'SilverSun Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2844, 1, 'SFNC', 'Simmons First National Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2845, 1, 'SLP', 'Simulations Plus, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2846, 1, 'SINA', 'Sina Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2847, 1, 'SBGI', 'Sinclair Broadcast Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2848, 1, 'SINO', 'Sino-Global Shipping America, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2849, 1, 'SVA', 'Sinovac Biotech, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2850, 1, 'SINT', 'SiNtx Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2851, 1, 'SG', 'Sirius International Insurance Group, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2852, 1, 'SIRI', 'Sirius XM Holdings Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2853, 1, 'SRVA', 'SIRVA, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2854, 1, 'SITO', 'SITO Mobile, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2855, 1, 'SKYS', 'Sky Solar Holdings, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2856, 1, 'SKYW', 'SkyWest, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2857, 1, 'SWKS', 'Skyworks Solutions, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2858, 1, 'SNBR', 'Sleep Number Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2859, 1, 'SLM', 'SLM Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2860, 1, 'SLMBP', 'SLM Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2861, 1, 'SGH', 'SMART Global Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2862, 1, 'SND', 'Smart Sand, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2863, 1, 'SMBK', 'SmartFinancial, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2864, 1, 'SMSI', 'Smith Micro Software, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2865, 1, 'SMTX', 'SMTC Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2866, 1, 'SRAX', 'Social Reality, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2867, 1, 'SCKT', 'Socket Mobile, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2868, 1, 'SODA', 'SodaStream International Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2869, 1, 'SOHU', 'Sohu.com Limited ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2870, 1, 'SLRC', 'Solar Capital Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2871, 1, 'SUNS', 'Solar Senior Capital Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2872, 1, 'SEDG', 'SolarEdge Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2873, 1, 'SLNO', 'Soleno Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2874, 1, 'SLNOW', 'Soleno Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2875, 1, 'SLGL', 'Sol-Gel Technologies Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2876, 1, 'SLDB', 'Solid Biosciences Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2877, 1, 'SNGX', 'Soligenix, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2878, 1, 'SNGXW', 'Soligenix, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2879, 1, 'SONC', 'Sonic Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2880, 1, 'SOFO', 'Sonic Foundry, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2881, 1, 'SNOA', 'Sonoma Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2882, 1, 'SNOAW', 'Sonoma Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2883, 1, 'SONO', 'Sonos, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2884, 1, 'SPHS', 'Sophiris Bio, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2885, 1, 'SORL', 'SORL Auto Parts, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2886, 1, 'SRNE', 'Sorrento Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2887, 1, 'SOHO', 'Sotherly Hotels Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2888, 1, 'SOHOB', 'Sotherly Hotels Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2889, 1, 'SOHOO', 'Sotherly Hotels Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2890, 1, 'SOHOK', 'Sotherly Hotels LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2891, 1, 'SFBC', 'Sound Financial Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2892, 1, 'SSB', 'South State Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2893, 1, 'SFST', 'Southern First Bancshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2894, 1, 'SMBC', 'Southern Missouri Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2895, 1, 'SONA', 'Southern National Bancorp of Virginia, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2896, 1, 'SBSI', 'Southside Bancshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2898, 1, 'SGRP', 'SPAR Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2899, 1, 'SPKE', 'Spark Energy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2900, 1, 'SPKEP', 'Spark Energy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2901, 1, 'VRTU', 'Virtusa Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2902, 1, 'ONCE', 'Spark Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2903, 1, 'SPAR', 'Spartan Motors, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2904, 1, 'SPTN', 'SpartanNash Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2905, 1, 'DWFI', 'SPDR Dorsey Wright Fixed Income Allocation ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2906, 1, 'SPPI', 'Spectrum Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2907, 1, 'SPRO', 'Spero Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2908, 1, 'ANY', 'Sphere 3D Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2909, 1, 'SPEX', 'Spherix Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2910, 1, 'SPI', 'SPI Energy Co., Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2911, 1, 'SAVE', 'Spirit Airlines, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2912, 1, 'STXB', 'Spirit of Texas Bancshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2913, 1, 'SPLK', 'Splunk Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2914, 1, 'SPOK', 'Spok Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2915, 1, 'SPWH', 'Sportsman''s Warehouse Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2916, 1, 'SBPH', 'Spring Bank Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2917, 1, 'FUND', 'Sprott Focus Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2918, 1, 'SFM', 'Sprouts Farmers Market, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2919, 1, 'SPSC', 'SPS Commerce, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2920, 1, 'SSNC', 'SS&C Technologies Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2921, 1, 'SSLJ', 'SSLJ.com Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2922, 1, 'SSRM', 'SSR Mining Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2923, 1, 'STAA', 'STAAR Surgical Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2924, 1, 'STAF', 'Staffing 360 Solutions, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2925, 1, 'STMP', 'Stamps.com Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2926, 1, 'STND', 'Standard AVB Financial Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2927, 1, 'SBLK', 'Star Bulk Carriers Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2928, 1, 'SBLKZ', 'Star Bulk Carriers Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2929, 1, 'SBUX', 'Starbucks Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2930, 1, 'STFC', 'State Auto Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2931, 1, 'STBZ', 'State Bank Financial Corporation.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2932, 1, 'GASS', 'StealthGas, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2933, 1, 'STCN', 'Steel Connect, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2934, 1, 'STLD', 'Steel Dynamics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2935, 1, 'SMRT', 'Stein Mart, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2936, 1, 'STLR', 'Stellar Acquisition III Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2937, 1, 'STLRU', 'Stellar Acquisition III Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2938, 1, 'STLRW', 'Stellar Acquisition III Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2939, 1, 'SBOT', 'Stellar Biotechnologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2940, 1, 'STML', 'Stemline Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2941, 1, 'SRCL', 'Stericycle, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2942, 1, 'SBT', 'Sterling Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2943, 1, 'STRL', 'Sterling Construction Company Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2944, 1, 'SHOO', 'Steven Madden, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2945, 1, 'SSFN', 'Stewardship Financial Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2946, 1, 'SFIX', 'Stitch Fix, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2947, 1, 'SYBT', 'Stock Yards Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2948, 1, 'BANX', 'StoneCastle Financial Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2949, 1, 'STNE', 'StoneCo Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2950, 1, 'SSKN', 'Strata Skin Sciences, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2951, 1, 'SSYS', 'Stratasys, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2952, 1, 'STRA', 'Strategic Education, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2953, 1, 'HNDL', 'Strategy Shares Nasdaq 7HANDL Index ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2954, 1, 'STRT', 'Strattec Security Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2955, 1, 'STRS', 'Stratus Properties Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2956, 1, 'STRM', 'Streamline Health Solutions, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2957, 1, 'SBBP', 'Strongbridge Biopharma plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2958, 1, 'SUMR', 'Summer Infant, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2959, 1, 'SMMF', 'Summit Financial Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2960, 1, 'SSBI', 'Summit State Bank');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2961, 1, 'SMMT', 'Summit Therapeutics plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2962, 1, 'WISA', 'Summit Wireless Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2963, 1, 'SNHY', 'Sun Hydraulics Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2964, 1, 'SNDE', 'Sundance Energy Australia Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2965, 1, 'SNSS', 'Sunesis Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2966, 1, 'STKL', 'SunOpta, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2967, 1, 'SPWR', 'SunPower Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2968, 1, 'RUN', 'Sunrun Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2969, 1, 'SUNW', 'Sunworks, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2970, 1, 'SPCB', 'SuperCom, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2971, 1, 'SCON', 'Superconductor Technologies Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2972, 1, 'SGC', 'Superior Group of Companies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2973, 1, 'SUPN', 'Supernus Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2974, 1, 'SPRT', 'support.com, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2975, 1, 'SURF', 'Surface Oncology, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2976, 1, 'SGRY', 'Surgery Partners, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2977, 1, 'SRDX', 'Surmodics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2978, 1, 'STRO', 'Sutro Biopharma, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2979, 1, 'SIVB', 'SVB Financial Group');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2980, 1, 'SVMK', 'SVMK Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2981, 1, 'SYKE', 'Sykes Enterprises, Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2982, 1, 'SYMC', 'Symantec Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2983, 1, 'SYNC', 'Synacor, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2984, 1, 'SYNL', 'Synalloy Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2985, 1, 'SYNA', 'Synaptics Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2986, 1, 'SNCR', 'Synchronoss Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2987, 1, 'SNDX', 'Syndax Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2988, 1, 'SYNH', 'Syneos Health, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2989, 1, 'SGYP', 'Synergy Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2990, 1, 'SYBX', 'Synlogic, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2991, 1, 'SNPS', 'Synopsys, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2992, 1, 'SES', 'Synthesis Energy Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2993, 1, 'SYPR', 'Sypris Solutions, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2994, 1, 'SYRS', 'Syros Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2995, 1, 'TROW', 'T. Rowe Price Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2996, 1, 'TTOO', 'T2 Biosystems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2997, 1, 'TRHC', 'Tabula Rasa HealthCare, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2998, 1, 'TCMD', 'Tactile Systems Technology, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(2999, 1, 'TAIT', 'Taitron Components Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3000, 1, 'TLC', 'Taiwan Liposome Company, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3001, 1, 'TTWO', 'Take-Two Interactive Software, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3002, 1, 'TLND', 'Talend S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3003, 1, 'TNDM', 'Tandem Diabetes Care, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3004, 1, 'TLF', 'Tandy Leather Factory, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3005, 1, 'TANH', 'Tantech Holdings Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3006, 1, 'TAOP', 'Taoping Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3007, 1, 'TEDU', 'Tarena International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3008, 1, 'TATT', 'TAT Technologies Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3009, 1, 'TAYD', 'Taylor Devices, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3010, 1, 'CGBD', 'TCG BDC, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3011, 1, 'AMTD', 'TD Ameritrade Holding Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3012, 1, 'PETZ', 'TDH Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3013, 1, 'TECD', 'Tech Data Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3014, 1, 'TCCO', 'Technical Communications Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3015, 1, 'TTGT', 'TechTarget, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3016, 1, 'TGLS', 'Tecnoglass Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3017, 1, 'TGEN', 'Tecogen Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3018, 1, 'TNAV', 'Telenav, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3019, 1, 'TLGT', 'Teligent, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3020, 1, 'TELL', 'Tellurian Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3021, 1, 'TENB', 'Tenable Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3022, 1, 'TENX', 'Tenax Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3023, 1, 'TZAC', 'Tenzing Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3024, 1, 'TZACU', 'Tenzing Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3025, 1, 'TZACW', 'Tenzing Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3026, 1, 'TERP', 'TerraForm Power, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3027, 1, 'TRTL', 'Terrapin 4 Acquisition Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3028, 1, 'TBNK', 'Territorial Bancorp Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3029, 1, 'TSRO', 'TESARO, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3030, 1, 'TSLA', 'Tesla, Inc. ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3031, 1, 'TESS', 'TESSCO Technologies Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3032, 1, 'TTEK', 'Tetra Tech, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3033, 1, 'TTPH', 'Tetraphase Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3034, 1, 'TCBI', 'Texas Capital Bancshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3035, 1, 'TCBIL', 'Texas Capital Bancshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3036, 1, 'TCBIP', 'Texas Capital Bancshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3037, 1, 'TCBIW', 'Texas Capital Bancshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3038, 1, 'TXN', 'Texas Instruments Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3039, 1, 'TXRH', 'Texas Roadhouse, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3040, 1, 'TFIG', 'TFI TAB Gida Yatirimlari A.S.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3041, 1, 'TFSL', 'TFS Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3042, 1, 'TGTX', 'TG Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3043, 1, 'ANDE', 'The Andersons, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3044, 1, 'TBBK', 'The Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3045, 1, 'BPRN', 'The Bank of Princeton');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3046, 1, 'CG', 'The Carlyle Group L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3047, 1, 'TCGP', 'The Carlyle Group L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3048, 1, 'CAKE', 'The Cheesecake Factory Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3049, 1, 'CHEF', 'The Chefs'' Warehouse, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3050, 1, 'TCFC', 'The Community Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3051, 1, 'DSGX', 'The Descartes Systems Group Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3052, 1, 'DXYN', 'The Dixie Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3053, 1, 'ENSG', 'The Ensign Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3054, 1, 'XONE', 'The ExOne Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3055, 1, 'FBMS', 'The First Bancshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3056, 1, 'FLIC', 'The First of Long Island Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3057, 1, 'GT', 'The Goodyear Tire & Rubber Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3058, 1, 'HABT', 'The Habit Restaurants, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3059, 1, 'HCKT', 'The Hackett Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3060, 1, 'HAIN', 'The Hain Celestial Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3061, 1, 'CUBA', 'The Herzfeld Caribbean Basin Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3062, 1, 'INTG', 'The Intergroup Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3063, 1, 'JYNT', 'The Joint Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3064, 1, 'KEYW', 'The KEYW Holding Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3065, 1, 'KHC', 'The Kraft Heinz Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3066, 1, 'LOVE', 'The Lovesac Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3067, 1, 'MSG', 'The Madison Square Garden Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3068, 1, 'MDCO', 'The Medicines Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3069, 1, 'MEET', 'The Meet Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3070, 1, 'MIK', 'The Michaels Companies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3071, 1, 'MIDD', 'The Middleby Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3072, 1, 'NAVG', 'The Navigators Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3073, 1, 'SLIM', 'The Obesity ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3074, 1, 'STKS', 'The ONE Group Hospitality, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3075, 1, 'ORG', 'The Organics ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3076, 1, 'PRSC', 'The Providence Service Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3077, 1, 'RMR', 'The RMR Group Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3078, 1, 'SMPL', 'The Simply Good Foods Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3079, 1, 'TSG', 'The Stars Group Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3080, 1, 'TTD', 'The Trade Desk, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3081, 1, 'ULTI', 'The Ultimate Software Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3082, 1, 'YORW', 'The York Water Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3083, 1, 'NCTY', 'The9 Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3084, 1, 'TXMD', 'TherapeuticsMD, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3085, 1, 'TRPX', 'Therapix Biosciences Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3086, 1, 'TBPH', 'Theravance Biopharma, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3087, 1, 'TST', 'TheStreet, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3088, 1, 'TCRD', 'THL Credit, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3089, 1, 'TBRG', 'Thunder Bridge Acquisition, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3090, 1, 'TBRGU', 'Thunder Bridge Acquisition, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3091, 1, 'TBRGW', 'Thunder Bridge Acquisition, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3092, 1, 'TIBR', 'Tiberius Acquisition Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3093, 1, 'TIBRU', 'Tiberius Acquisition Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3094, 1, 'TIBRW', 'Tiberius Acquisition Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3095, 1, 'TTTN', 'TigerShares China-U.S. Internet Titans ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3096, 1, 'TTS', 'Tile Shop Hldgs, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3097, 1, 'TLRY', 'Tilray, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3098, 1, 'TSBK', 'Timberland Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3099, 1, 'TIPT', 'Tiptree Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3100, 1, 'TITN', 'Titan Machinery Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3101, 1, 'TMDI', 'Titan Medical Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3102, 1, 'TTNP', 'Titan Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3103, 1, 'TVTY', 'Tivity Health, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3104, 1, 'TIVO', 'TiVo Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3105, 1, 'TLSA', 'Tiziana Life Sciences plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3106, 1, 'TKKS', 'TKK Symphony Acquisition Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3107, 1, 'TKKSR', 'TKK Symphony Acquisition Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3108, 1, 'TKKSU', 'TKK Symphony Acquisition Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3109, 1, 'TKKSW', 'TKK Symphony Acquisition Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3110, 1, 'TMUS', 'T-Mobile US, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3111, 1, 'TMSR', 'TMSR Holding Company Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3112, 1, 'TOCA', 'Tocagen Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3113, 1, 'TNXP', 'Tonix Pharmaceuticals Holding Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3114, 1, 'TISA', 'Top Image Systems, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3115, 1, 'TOPS', 'TOP Ships Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3116, 1, 'TRCH', 'Torchlight Energy Resources, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3117, 1, 'TRMD', 'TORM plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3118, 1, 'TOTA', 'Tottenham Acquisition I Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3119, 1, 'TOTAR', 'Tottenham Acquisition I Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3120, 1, 'TOTAU', 'Tottenham Acquisition I Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3121, 1, 'TOTAW', 'Tottenham Acquisition I Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3122, 1, 'TBLTU', 'ToughBuilt Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3123, 1, 'TSEM', 'Tower Semiconductor Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3124, 1, 'CLUB', 'Town Sports International Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3125, 1, 'TOWN', 'Towne Bank');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3126, 1, 'TPIC', 'TPI Composites, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3127, 1, 'TCON', 'TRACON Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3128, 1, 'TSCO', 'Tractor Supply Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3129, 1, 'TWMC', 'Trans World Entertainment Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3130, 1, 'TACT', 'TransAct Technologies Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3131, 1, 'TRNS', 'Transcat, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3132, 1, 'TGA', 'TransGlobe Energy Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3133, 1, 'TBIO', 'Translate Bio, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3134, 1, 'TA', 'TravelCenters of America LLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3135, 1, 'TANNI', 'TravelCenters of America LLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3136, 1, 'TANNL', 'TravelCenters of America LLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3137, 1, 'TANNZ', 'TravelCenters of America LLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3138, 1, 'TZOO', 'Travelzoo');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3139, 1, 'TRMT', 'Tremont Mortgage Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3140, 1, 'TRVN', 'Trevena, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3141, 1, 'TPCO', 'Tribune Publishing Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3142, 1, 'TCDA', 'Tricida, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3143, 1, 'TCBK', 'TriCo Bancshares');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3144, 1, 'TDAC', 'Trident Acquisitions Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3145, 1, 'TDACU', 'Trident Acquisitions Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3146, 1, 'TDACW', 'Trident Acquisitions Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3147, 1, 'TRIL', 'Trillium Therapeutics Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3148, 1, 'TRS', 'TriMas Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3149, 1, 'TRMB', 'Trimble Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3150, 1, 'TRIB', 'Trinity Biotech plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3151, 1, 'TMCX', 'Trinity Merger Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3152, 1, 'TMCXU', 'Trinity Merger Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3153, 1, 'TMCXW', 'Trinity Merger Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3154, 1, 'TRIP', 'TripAdvisor, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3155, 1, 'TSC', 'TriState Capital Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3156, 1, 'TSCAP', 'TriState Capital Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3157, 1, 'TBK', 'Triumph Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3158, 1, 'TRVG', 'trivago N.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3159, 1, 'TROV', 'TrovaGene, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3160, 1, 'TRUE', 'TrueCar, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3161, 1, 'THST', 'Truett-Hurst, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3162, 1, 'TRUP', 'Trupanion, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3163, 1, 'TRST', 'TrustCo Bank Corp NY');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3164, 1, 'TRMK', 'Trustmark Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3165, 1, 'TSRI', 'TSR, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3166, 1, 'TTEC', 'TTEC Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3167, 1, 'TTMI', 'TTM Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3168, 1, 'TC', 'TuanChe Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3169, 1, 'TCX', 'Tucows Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3170, 1, 'TUES', 'Tuesday Morning Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3171, 1, 'TOUR', 'Tuniu Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3172, 1, 'HEAR', 'Turtle Beach Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3173, 1, 'TWLV', 'Twelve Seas Investment Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3174, 1, 'TWLVR', 'Twelve Seas Investment Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3175, 1, 'TWLVU', 'Twelve Seas Investment Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3176, 1, 'TWLVW', 'Twelve Seas Investment Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3177, 1, 'FOX', 'Twenty-First Century Fox, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3178, 1, 'FOXA', 'Twenty-First Century Fox, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3179, 1, 'TWIN', 'Twin Disc, Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3180, 1, 'TWST', 'Twist Bioscience Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3181, 1, 'TRCB', 'Two River Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3182, 1, 'TYME', 'Tyme Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3183, 1, 'USCR', 'U S Concrete, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3184, 1, 'PRTS', 'U.S. Auto Parts Network, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3185, 1, 'USEG', 'U.S. Energy Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3186, 1, 'GROW', 'U.S. Global Investors, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3187, 1, 'USAU', 'U.S. Gold Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3188, 1, 'USWS', 'U.S. Well Services, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3189, 1, 'USWSW', 'U.S. Well Services, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3190, 1, 'UBNT', 'Ubiquiti Networks, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3191, 1, 'UFPT', 'UFP Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3192, 1, 'ULTA', 'Ulta Beauty, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3193, 1, 'UCTT', 'Ultra Clean Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3194, 1, 'UPL', 'Ultra Petroleum Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3195, 1, 'RARE', 'Ultragenyx Pharmaceutical Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3196, 1, 'ULBI', 'Ultralife Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3197, 1, 'UMBF', 'UMB Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3198, 1, 'UMPQ', 'Umpqua Holdings Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3199, 1, 'UNAM', 'Unico American Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3200, 1, 'UBSH', 'Union Bankshares Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3201, 1, 'UNB', 'Union Bankshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3202, 1, 'QURE', 'uniQure N.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3203, 1, 'UBCP', 'United Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3204, 1, 'UBOH', 'United Bancshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3205, 1, 'UBSI', 'United Bankshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3206, 1, 'UCBI', 'United Community Banks, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3207, 1, 'UCFC', 'United Community Financial Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3208, 1, 'UAL', 'United Continental Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3209, 1, 'UBNK', 'United Financial Bancorp, Inc. ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3210, 1, 'UFCS', 'United Fire Group, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3211, 1, 'UIHC', 'United Insurance Holdings Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3212, 1, 'UNFI', 'United Natural Foods, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3213, 1, 'UBFO', 'United Security Bancshares');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3214, 1, 'USLM', 'United States Lime & Minerals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3215, 1, 'UTHR', 'United Therapeutics Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3216, 1, 'UG', 'United-Guardian, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3217, 1, 'UNIT', 'Uniti Group Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3218, 1, 'UNTY', 'Unity Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3219, 1, 'UBX', 'Unity Biotechnology, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3220, 1, 'OLED', 'Universal Display Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3221, 1, 'UEIC', 'Universal Electronics Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3222, 1, 'UFPI', 'Universal Forest Products, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3223, 1, 'ULH', 'Universal Logistics Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3224, 1, 'USAP', 'Universal Stainless & Alloy Products, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3225, 1, 'UVSP', 'Univest Corporation of Pennsylvania');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3226, 1, 'UMRX', 'Unum Therapeutics Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3227, 1, 'UPLD', 'Upland Software, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3228, 1, 'UPWK', 'Upwork Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3229, 1, 'UONE', 'Urban One, Inc. ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3230, 1, 'UONEK', 'Urban One, Inc. ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3231, 1, 'URBN', 'Urban Outfitters, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3232, 1, 'URGN', 'UroGen Pharma Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3233, 1, 'UROV', 'Urovant Sciences Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3234, 1, 'ECOL', 'US Ecology, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3235, 1, 'USAT', 'USA Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3236, 1, 'USATP', 'USA Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3237, 1, 'USAK', 'USA Truck, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3238, 1, 'UTMD', 'Utah Medical Products, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3239, 1, 'UTSI', 'UTStarcom Holdings Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3240, 1, 'UXIN', 'Uxin Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3241, 1, 'VCNX', 'Vaccinex, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3242, 1, 'VLRX', 'Valeritas Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3243, 1, 'VALX', 'Validea Market Legends ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3244, 1, 'VLY', 'Valley National Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3245, 1, 'VLYPO', 'Valley National Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3246, 1, 'VLYPP', 'Valley National Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3248, 1, 'VALU', 'Value Line, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3249, 1, 'VNDA', 'Vanda Pharmaceuticals Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3250, 1, 'BBH', 'VanEck Vectors Biotech ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3251, 1, 'GNRX', 'VanEck Vectors Generic Drugs ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3252, 1, 'PPH', 'VanEck Vectors Pharmaceutical ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3253, 1, 'VWOB', 'Vanguard Emerging Markets Government Bond ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3254, 1, 'VNQI', 'Vanguard Global ex-U.S. Real Estate ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3255, 1, 'VCIT', 'Vanguard Intermediate-Term Corporate Bond ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3256, 1, 'VGIT', 'Vanguard Intermediate-Term Treasury ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3257, 1, 'VIGI', 'Vanguard International Dividend Appreciation ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3258, 1, 'VYMI', 'Vanguard International High Dividend Yield ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3259, 1, 'VCLT', 'Vanguard Long-Term Corporate Bond ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3260, 1, 'VGLT', 'Vanguard Long-Treasury ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3261, 1, 'VMBS', 'Vanguard Mortgage-Backed Securities ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3262, 1, 'VONE', 'Vanguard Russell 1000 ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3263, 1, 'VONG', 'Vanguard Russell 1000 Growth ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3264, 1, 'VONV', 'Vanguard Russell 1000 Value ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3265, 1, 'VTWO', 'Vanguard Russell 2000 ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3266, 1, 'VTWG', 'Vanguard Russell 2000 Growth ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3267, 1, 'VTWV', 'Vanguard Russell 2000 Value ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3268, 1, 'VTHR', 'Vanguard Russell 3000 ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3269, 1, 'VCSH', 'Vanguard Short-Term Corporate Bond ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3270, 1, 'VTIP', 'Vanguard Short-Term Inflation-Protected Securities Index Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3271, 1, 'VGSH', 'Vanguard Short-Term Treasury ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3272, 1, 'BND', 'Vanguard Total Bond Market ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3273, 1, 'VTC', 'Vanguard Total Corporate Bond ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3274, 1, 'BNDX', 'Vanguard Total International Bond ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3275, 1, 'VXUS', 'Vanguard Total International Stock ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3276, 1, 'BNDW', 'Vanguard Total World Bond ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3277, 1, 'VEAC', 'Vantage Energy Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3278, 1, 'VEACU', 'Vantage Energy Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3279, 1, 'VEACW', 'Vantage Energy Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3280, 1, 'VREX', 'Varex Imaging Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3281, 1, 'VRNS', 'Varonis Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3282, 1, 'VBLT', 'Vascular Biogenics Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3283, 1, 'VXRT', 'Vaxart, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3284, 1, 'VBIV', 'VBI Vaccines, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3285, 1, 'VTIQ', 'VectoIQ Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3286, 1, 'VTIQU', 'VectoIQ Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3287, 1, 'VTIQW', 'VectoIQ Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3288, 1, 'VECO', 'Veeco Instruments Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3289, 1, 'VEON', 'VEON Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3290, 1, 'VRA', 'Vera Bradley, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3291, 1, 'VCYT', 'Veracyte, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3292, 1, 'VSTM', 'Verastem, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3293, 1, 'VCEL', 'Vericel Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3294, 1, 'VRNT', 'Verint Systems Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3295, 1, 'VRSN', 'VeriSign, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3296, 1, 'VRSK', 'Verisk Analytics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3297, 1, 'VBTX', 'Veritex Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3298, 1, 'VERI', 'Veritone, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3299, 1, 'VRML', 'Vermillion, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3300, 1, 'VRNA', 'Verona Pharma plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3301, 1, 'VRRM', 'Verra Mobility Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3302, 1, 'VRRMW', 'Verra Mobility Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3303, 1, 'VRCA', 'Verrica Pharmaceuticals Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3304, 1, 'VTNR', 'Vertex Energy, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3305, 1, 'VRTX', 'Vertex Pharmaceuticals Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3306, 1, 'VERU', 'Veru Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3307, 1, 'VIA', 'Viacom Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3308, 1, 'VIAB', 'Viacom Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3309, 1, 'VMET', 'Viamet Pharmaceuticals Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3310, 1, 'VSAT', 'ViaSat, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3311, 1, 'VIAV', 'Viavi Solutions Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3312, 1, 'VICL', 'Vical Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3313, 1, 'VICR', 'Vicor Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3314, 1, 'VCTR', 'Victory Capital Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3315, 1, 'CIZ', 'VictoryShares Developed Enhanced Volatility Wtd ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3316, 1, 'VSDA', 'VictoryShares Dividend Accelerator ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3317, 1, 'CEY', 'VictoryShares Emerging Market High Div Volatility Wtd ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3318, 1, 'CEZ', 'VictoryShares Emerging Market Volatility Wtd ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3319, 1, 'CID', 'VictoryShares International High Div Volatility Wtd ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3320, 1, 'CIL', 'VictoryShares International Volatility Wtd ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3321, 1, 'CFO', 'VictoryShares US 500 Enhanced Volatility Wtd ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3322, 1, 'CFA', 'VictoryShares US 500 Volatility Wtd ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3323, 1, 'CSF', 'VictoryShares US Discovery Enhanced Volatility Wtd ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3324, 1, 'CDC', 'VictoryShares US EQ Income Enhanced Volatility Wtd ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3325, 1, 'CDL', 'VictoryShares US Large Cap High Div Volatility Wtd ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3326, 1, 'VSMV', 'VictoryShares US Multi-Factor Minimum Volatility ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3327, 1, 'CSB', 'VictoryShares US Small Cap High Div Volatility Wtd ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3328, 1, 'CSA', 'VictoryShares US Small Cap Volatility Wtd ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3329, 1, 'VRAY', 'ViewRay, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3330, 1, 'VKTX', 'Viking Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3331, 1, 'VKTXW', 'Viking Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3332, 1, 'VBFC', 'Village Bank and Trust Financial Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3333, 1, 'VLGEA', 'Village Super Market, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3334, 1, 'VIOT', 'Viomi Technology Co., Ltd');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3335, 1, 'VNOM', 'Viper Energy Partners LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3336, 1, 'VIRC', 'Virco Manufacturing Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3337, 1, 'VTSI', 'VirTra, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3338, 1, 'VIRT', 'Virtu Financial, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3339, 1, 'VRTS', 'Virtus Investment Partners, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3340, 1, 'VRTSP', 'Virtus Investment Partners, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3341, 1, 'BBC', 'Virtus LifeSci Biotech Clinical Trials ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3342, 1, 'VTGN', 'VistaGen Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3343, 1, 'VC', 'Visteon Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3344, 1, 'VIST', 'Visterra, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3345, 1, 'VTL', 'Vital Therapies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3346, 1, 'VIVE', 'Viveve Medical, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3347, 1, 'VVPR', 'VivoPower International PLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3348, 1, 'VVUS', 'VIVUS, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3349, 1, 'VOD', 'Vodafone Group Plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3350, 1, 'VOXX', 'VOXX International Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3351, 1, 'VYGR', 'Voyager Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3352, 1, 'VSEC', 'VSE Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3353, 1, 'VTVT', 'vTv Therapeutics Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3355, 1, 'WTRH', 'Waitr Holdings Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3356, 1, 'WTRHW', 'Waitr Holdings Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3357, 1, 'WBA', 'Walgreens Boots Alliance, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3358, 1, 'WAFD', 'Washington Federal, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3359, 1, 'WASH', 'Washington Trust Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3360, 1, 'WSBF', 'Waterstone Financial, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3361, 1, 'WVE', 'WAVE Life Sciences Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3362, 1, 'WNFM', 'Wayne Farms, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3363, 1, 'WSTG', 'Wayside Technology Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3364, 1, 'WCFB', 'WCF Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3365, 1, 'WDFC', 'WD-40 Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3366, 1, 'WB', 'Weibo Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3367, 1, 'WTW', 'Weight Watchers International Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3368, 1, 'WEBK', 'Wellesley Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3369, 1, 'WEN', 'Wendy''s Company (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3370, 1, 'WERN', 'Werner Enterprises, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3371, 1, 'WSBC', 'WesBanco, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3372, 1, 'WTBA', 'West Bancorporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3373, 1, 'WABC', 'Westamerica Bancorporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3374, 1, 'WSTL', 'Westell Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3375, 1, 'WBND', 'Western Asset Total Return ETF');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3376, 1, 'WDC', 'Western Digital Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3377, 1, 'WNEB', 'Western New England Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3378, 1, 'WPRT', 'Westport Fuel Systems Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3379, 1, 'WWR', 'Westwater Resources, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3380, 1, 'WEYS', 'Weyco Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3381, 1, 'WHLR', 'Wheeler Real Estate Investment Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3382, 1, 'WHLRD', 'Wheeler Real Estate Investment Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3383, 1, 'WHLRP', 'Wheeler Real Estate Investment Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3384, 1, 'WHLRW', 'Wheeler Real Estate Investment Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3385, 1, 'WHF', 'WhiteHorse Finance, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3386, 1, 'WHLM', 'Wilhelmina International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3387, 1, 'WVVI', 'Willamette Valley Vineyards, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3388, 1, 'WVVIP', 'Willamette Valley Vineyards, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3389, 1, 'WLDN', 'Willdan Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3390, 1, 'WLFC', 'Willis Lease Finance Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3391, 1, 'WLTW', 'Willis Towers Watson Public Limited Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3392, 1, 'WSC', 'WillScot Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3393, 1, 'WIN', 'Windstream Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3394, 1, 'WING', 'Wingstop Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3395, 1, 'WINA', 'Winmark Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3396, 1, 'WINS', 'Wins Finance Holdings Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3397, 1, 'WTFC', 'Wintrust Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3398, 1, 'WTFCM', 'Wintrust Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3399, 1, 'WTFCW', 'Wintrust Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3400, 1, 'AGND', 'WisdomTree Barclays Negative Duration U.S. Aggregate Bond Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3401, 1, 'CXSE', 'WisdomTree China ex-State-Owned Enterprises Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3402, 1, 'EMCG', 'WisdomTree Emerging Markets Consumer Growth Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3403, 1, 'EMCB', 'WisdomTree Emerging Markets Corporate Bond Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3404, 1, 'DGRE', 'WisdomTree Emerging Markets Quality Dividend Growth Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3405, 1, 'DXGE', 'WisdomTree Germany Hedged Equity Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3406, 1, 'HYZD', 'WisdomTree Interest Rate Hedged High Yield Bond Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3407, 1, 'AGZD', 'WisdomTree Interest Rate Hedged U.S. Aggregate Bond Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3408, 1, 'WETF', 'WisdomTree Investments, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3409, 1, 'DXJS', 'WisdomTree Japan Hedged SmallCap Equity Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3410, 1, 'GULF', 'WisdomTree Middle East Dividend Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3411, 1, 'HYND', 'WisdomTree Negative Duration High Yield Bond Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3412, 1, 'DGRW', 'WisdomTree U.S. Quality Dividend Growth Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3413, 1, 'DGRS', 'WisdomTree U.S. SmallCap Quality Dividend Growth Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3414, 1, 'WIX', 'Wix.com Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3415, 1, 'WWD', 'Woodward, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3416, 1, 'WDAY', 'Workday, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3417, 1, 'WKHS', 'Workhorse Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3418, 1, 'WRLD', 'World Acceptance Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3419, 1, 'WMGI', 'Wright Medical Group N.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3420, 1, 'WMGIZ', 'Wright Medical Group N.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3421, 1, 'WSFS', 'WSFS Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3422, 1, 'WVFC', 'WVS Financial Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3423, 1, 'WYNN', 'Wynn Resorts, Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3424, 1, 'XBIT', 'XBiotech Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3425, 1, 'XELB', 'Xcel Brands, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3426, 1, 'XEL', 'Xcel Energy Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3427, 1, 'XNCR', 'Xencor, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3428, 1, 'XBIO', 'Xenetic Biosciences, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3429, 1, 'XENE', 'Xenon Pharmaceuticals Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3430, 1, 'XERS', 'Xeris Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3431, 1, 'XGTI', 'XG Technology, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3432, 1, 'XLNX', 'Xilinx, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3433, 1, 'XOMA', 'XOMA Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3434, 1, 'XPER', 'Xperi Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3435, 1, 'XSPA', 'XpresSpa Group, Inc. ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3436, 1, 'XTLB', 'XTL Biopharmaceuticals Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3437, 1, 'XNET', 'Xunlei Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3438, 1, 'YNDX', 'Yandex N.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3439, 1, 'YRIV', 'Yangtze River Port and Logistics Limited ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3440, 1, 'YTRA', 'Yatra Online, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3441, 1, 'YTEN', 'Yield10 Bioscience, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3442, 1, 'YIN', 'Yintech Investment Holdings Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3443, 1, 'YMAB', 'Y-mAbs Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3444, 1, 'YOGA', 'YogaWorks, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3445, 1, 'YGYI', 'Youngevity International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3446, 1, 'YRCW', 'YRC Worldwide, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3447, 1, 'YECO', 'Yulong Eco-Materials Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3448, 1, 'YY', 'YY Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3449, 1, 'ZFGN', 'Zafgen, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3450, 1, 'ZAGG', 'ZAGG Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3451, 1, 'ZLAB', 'Zai Lab Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3452, 1, 'ZEAL', 'Zealand Pharma A/S');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3453, 1, 'ZBRA', 'Zebra Technologies Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3454, 1, 'Z', 'Zillow Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3455, 1, 'ZG', 'Zillow Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3456, 1, 'ZN', 'Zion Oil & Gas Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3457, 1, 'ZNWAA', 'Zion Oil & Gas Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3458, 1, 'ZION', 'Zions Bancorporation N.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3459, 1, 'ZIONW', 'Zions Bancorporation N.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3460, 1, 'ZIOP', 'ZIOPHARM Oncology Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3461, 1, 'ZIXI', 'Zix Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3462, 1, 'ZKIN', 'ZK International Group Co., Ltd');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3463, 1, 'ZGNX', 'Zogenix, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3464, 1, 'ZSAN', 'Zosano Pharma Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3465, 1, 'ZS', 'Zscaler, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3466, 1, 'ZUMZ', 'Zumiez Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3483, 2, 'AGD', 'Aberdeen Global Dynamic Dividend Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3484, 2, 'AWP', 'Aberdeen Global Premier Properties Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3485, 2, 'ACP', 'Aberdeen Income Credit Strategies Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3486, 2, 'JEQ', 'Aberdeen Japan Equity Fund, Inc. ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3487, 2, 'AOD', 'Aberdeen Total Dynamic Dividend Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3488, 2, 'ABM', 'ABM Industries Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3489, 2, 'AKR', 'Acadia Realty Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3490, 2, 'ACN', 'Accenture plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3491, 2, 'ACCO', 'Acco Brands Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3492, 2, 'ATV', 'Acorn International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3493, 2, 'ATU', 'Actuant Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3494, 2, 'AYI', 'Acuity Brands, Inc. ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3495, 2, 'GOLF', 'Acushnet Holdings Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3496, 2, 'ADX', 'Adams Diversified Equity Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3497, 2, 'PEO', 'Adams Natural Resources Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3498, 2, 'AGRO', 'Adecoagro S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3499, 2, 'ADNT', 'Adient plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3500, 2, 'ADT', 'ADT Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3501, 2, 'ATGE', 'Adtalem Global Education Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3502, 2, 'AAP', 'Advance Auto Parts Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3503, 2, 'ADSW', 'Advanced Disposal Services, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3504, 2, 'WMS', 'Advanced Drainage Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3505, 2, 'ASIX', 'AdvanSix Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3506, 2, 'AVK', 'Advent Claymore Convertible Securities and Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3507, 2, 'ACM', 'AECOM');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3508, 2, 'AEB', 'Aegon NV');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3509, 2, 'AED', 'Aegon NV');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3510, 2, 'AEG', 'Aegon NV');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3511, 2, 'AEH', 'Aegon NV');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3512, 2, 'AER', 'Aercap Holdings N.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3513, 2, 'HIVE', 'Aerohive Networks, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3514, 2, 'AJRD', 'Aerojet Rocketdyne Holdings, Inc. ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3515, 2, 'AMG', 'Affiliated Managers Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3516, 2, 'AFL', 'Aflac Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3517, 2, 'MITT', 'AG Mortgage Investment Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3520, 2, 'AGCO', 'AGCO Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3521, 2, 'A', 'Agilent Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3522, 2, 'AEM', 'Agnico Eagle Mines Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3523, 2, 'ADC', 'Agree Realty Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3524, 2, 'AL', 'Air Lease Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3525, 2, 'APD', 'Air Products and Chemicals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3526, 2, 'AYR', 'Aircastle Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3527, 2, 'AKS', 'AK Steel Holding Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3529, 2, 'ALG', 'Alamo Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3530, 2, 'AGI', 'Alamos Gold Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3531, 2, 'ALK', 'Alaska Air Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3532, 2, 'AIN', 'Albany International Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3533, 2, 'ALB', 'Albemarle Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3534, 2, 'AA', 'Alcoa Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3535, 2, 'ALEX', 'Alexander & Baldwin, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3536, 2, 'ALX', 'Alexander''s, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3537, 2, 'ARE', 'Alexandria Real Estate Equities, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3539, 2, 'AQN', 'Algonquin Power & Utilities Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3540, 2, 'AQNA', 'Algonquin Power & Utilities Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3541, 2, 'BABA', 'Alibaba Group Holding Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3542, 2, 'Y', 'Alleghany Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3543, 2, 'ATI', 'Allegheny Technologies Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3544, 2, 'ALLE', 'Allegion plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3545, 2, 'AGN', 'Allergan plc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3546, 2, 'ALE', 'Allete, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3547, 2, 'AKP', 'Alliance California Municipal Income Fund Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3548, 2, 'ADS', 'Alliance Data Systems Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3549, 2, 'AFB', 'Alliance National Municipal Income Fund Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3550, 2, 'AWF', 'Alliance World Dollar Government Fund II');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3551, 2, 'AB', 'AllianceBernstein Holding L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3552, 2, 'LNT', 'Alliant Energy Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3553, 2, 'CBH', 'AllianzGI Convertible & Income 2024 Target Term Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3554, 2, 'NCV', 'AllianzGI Convertible & Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3556, 2, 'NCZ', 'AllianzGI Convertible & Income Fund II');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3558, 2, 'ACV', 'AllianzGI Diversified Income & Convertible Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3559, 2, 'NIE', 'AllianzGI Equity & Convertible Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3560, 2, 'NFJ', 'AllianzGI NFJ Dividend, Interest & Premium Strategy Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3561, 2, 'ALSN', 'Allison Transmission Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3562, 2, 'ALL', 'Allstate Corporation (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3569, 2, 'ALLY', 'Ally Financial Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3571, 2, 'AYX', 'Alteryx, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3572, 2, 'ATUS', 'Altice USA, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3573, 2, 'MO', 'Altria Group');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3574, 2, 'ACH', 'Aluminum Corporation of China Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3575, 2, 'AMBR', 'Amber Road, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3576, 2, 'ABEV', 'Ambev S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3577, 2, 'AMC', 'AMC Entertainment Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3578, 2, 'AEE', 'Ameren Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3579, 2, 'AMRC', 'Ameresco, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3580, 2, 'AMOV', 'America Movil, S.A.B. de C.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3581, 2, 'AMX', 'America Movil, S.A.B. de C.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3582, 2, 'AAT', 'American Assets Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3812, 2, 'BNS', 'Bank of Nova Scotia (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3614, 2, 'AP', 'Ampco-Pittsburgh Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3615, 2, 'APH', 'Amphenol Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3616, 2, 'AXR', 'AMREP Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3617, 2, 'AME', 'AMTEK, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3624, 2, 'AFSS', 'AmTrust Financial Services, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3625, 2, 'AFST', 'AmTrust Financial Services, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3626, 2, 'APC', 'Anadarko Petroleum Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3627, 2, 'PLAN', 'Anaplan, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3628, 2, 'ANDX', 'Andeavor Logistics LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3629, 2, 'AU', 'AngloGold Ashanti Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3630, 2, 'BUD', 'Anheuser-Busch Inbev SA');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3631, 2, 'AXE', 'Anixter International Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3632, 2, 'NLY', 'Annaly Capital Management Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3638, 2, 'AMGP', 'Antero Midstream GP LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3639, 2, 'AM', 'Antero Midstream Partners LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3640, 2, 'AR', 'Antero Resources Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3641, 2, 'ANTM', 'Anthem, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3642, 2, 'ANH', 'Anworth Mortgage Asset  Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3646, 2, 'AON', 'Aon plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3647, 2, 'APA', 'Apache Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3648, 2, 'AIV', 'Apartment Investment and Management Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3650, 2, 'APY', 'Apergy Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3651, 2, 'APHA', 'Aphria Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3652, 2, 'ARI', 'Apollo Commercial Real Estate Finance');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3654, 2, 'APO', 'Apollo Global Management, LLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3657, 2, 'AIY', 'Apollo Investment Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3658, 2, 'AFT', 'Apollo Senior Floating Rate Fund Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3659, 2, 'AIF', 'Apollo Tactical Income Fund Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3660, 2, 'APLE', 'Apple Hospitality REIT, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3661, 2, 'AIT', 'Applied Industrial Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3662, 2, 'ATR', 'AptarGroup, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3663, 2, 'APTV', 'Aptiv PLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3664, 2, 'WTR', 'Aqua America, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3665, 2, 'AQ', 'Aquantia Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3666, 2, 'WAAS', 'AquaVenture Holdings Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3667, 2, 'ARMK', 'Aramark');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3668, 2, 'ABR', 'Arbor Realty Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3672, 2, 'ARC', 'ARC Document Solutions, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3673, 2, 'MT', 'ArcelorMittal');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3674, 2, 'ARCH', 'Arch Coal, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3675, 2, 'ADM', 'Archer-Daniels-Midland Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3676, 2, 'AROC', 'Archrock, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3677, 2, 'ARNC', 'Arconic Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3678, 2, 'ARCO', 'Arcos Dorados Holdings Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3679, 2, 'ACA', 'Arcosa, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3680, 2, 'RCUS', 'Arcus Biosciences, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3681, 2, 'ARD', 'Ardagh Group S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3682, 2, 'ASC', 'Ardmore Shipping Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3683, 2, 'AFC', 'Ares Capital Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3684, 2, 'ACRE', 'Ares Commercial Real Estate Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3685, 2, 'ARDC', 'Ares Dynamic Credit Allocation Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3686, 2, 'ARES', 'Ares Management Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3688, 2, 'AGX', 'Argan, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3689, 2, 'ARGD', 'Argo Group International Holdings, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3690, 2, 'ARGO', 'Argo Group International Holdings, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3691, 2, 'ANET', 'Arista Networks, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3692, 2, 'AI', 'Arlington Asset Investment Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3694, 2, 'AIC', 'Arlington Asset Investment Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3813, 2, 'BKU', 'BankUnited, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3743, 2, 'ATO', 'Atmos Energy Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3745, 2, 'ACB', 'Aurora Cannabis Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3746, 2, 'ATHM', 'Autohome Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3747, 2, 'ALV', 'Autoliv, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3748, 2, 'AN', 'AutoNation, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3749, 2, 'AZO', 'AutoZone, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3750, 2, 'AVLR', 'Avalara, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3751, 2, 'AVB', 'AvalonBay Communities, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3752, 2, 'AGR', 'Avangrid, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3753, 2, 'AVNS', 'Avanos Medical, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3754, 2, 'AVYA', 'Avaya Holdings Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3755, 2, 'AVY', 'Avery Dennison Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3756, 2, 'AVH', 'Avianca Holdings S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3757, 2, 'AVA', 'Avista Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3758, 2, 'AVP', 'Avon Products, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3759, 2, 'AVX', 'AVX Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3760, 2, 'EQH', 'AXA Equitable Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3761, 2, 'AXTA', 'Axalta Coating Systems Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3762, 2, 'AXS', 'Axis Capital Holdings Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3765, 2, 'AX', 'Axos Financial, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3766, 2, 'AXO', 'Axos Financial, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3767, 2, 'AZUL', 'Azul S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3768, 2, 'AZRE', 'Azure Power Global Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3769, 2, 'AZZ', 'AZZ Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3770, 2, 'BGS', 'B&G Foods, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3771, 2, 'BW', 'Babcock');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3772, 2, 'BGH', 'Babson Global Short Duration High Yield Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3773, 2, 'BMI', 'Badger Meter, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3774, 2, 'BCSF', 'Bain Capital Specialty Finance, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3775, 2, 'BHGE', 'Baker Hughes, a GE company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3776, 2, 'BBN', 'BalckRock Taxable Municipal Bond Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3777, 2, 'BLL', 'Ball Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3778, 2, 'BANC', 'Banc of California, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3781, 2, 'BBVA', 'Banco Bilbao Viscaya Argentaria S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3782, 2, 'BBD', 'Banco Bradesco Sa');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3783, 2, 'BBDO', 'Banco Bradesco Sa');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3784, 2, 'BCH', 'Banco De Chile');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3785, 2, 'BLX', 'Banco Latinoamericano de Comercio Exterior, S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3786, 2, 'BSBR', 'Banco Santander Brasil SA');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3787, 2, 'BSAC', 'Banco Santander Chile');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3788, 2, 'BSMX', 'Banco Santander Mexico, S.A., Institucion de Ban');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3789, 2, 'SAN', 'Banco Santander, S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3791, 2, 'CIB', 'BanColombia S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3792, 2, 'BXS', 'BancorpSouth Bank');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3793, 2, 'BAC', 'Bank of America Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3794, 2, 'BAC.WS.A', 'Bank of America Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3807, 2, 'BOH', 'Bank of Hawaii Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3808, 2, 'BMO', 'Bank Of Montreal');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3809, 2, 'NTB', 'Bank of N.T. Butterfield & Son Limited (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3810, 2, 'BK', 'Bank Of New York Mellon Corporation (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3818, 2, 'BNED', 'Barnes & Noble Education, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3820, 2, 'B', 'Barnes Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3821, 2, 'ABX', 'Barrick Gold Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3822, 2, 'BAS', 'Basic Energy Services, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3823, 2, 'BHC', 'Bausch Health Companies Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3824, 2, 'BAX', 'Baxter International Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3825, 2, 'BTE', 'Baytex Energy Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3826, 2, 'BBT', 'BB&T Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3832, 2, 'BFR', 'BBVA Banco Frances S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3833, 2, 'BBX', 'BBX Capital Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3834, 2, 'BCE', 'BCE, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3835, 2, 'BZH', 'Beazer Homes USA, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3836, 2, 'BDX', 'Becton, Dickinson and Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3837, 2, 'BDXA', 'Becton, Dickinson and Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3838, 2, 'BDC', 'Belden Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3840, 2, 'BXE', 'Bellatrix Exploration Ltd');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3841, 2, 'BEL', 'Belmond Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3842, 2, 'BMS', 'Bemis Company, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3843, 2, 'BHE', 'Benchmark Electronics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3844, 2, 'BRK.A', 'Berkshire Hathaway Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3845, 2, 'BRK.B', 'Berkshire Hathaway Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3846, 2, 'BHLB', 'Berkshire Hills Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3847, 2, 'BERY', 'Berry Global Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3848, 2, 'BBY', 'Best Buy Co., Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3849, 2, 'BSTI', 'BEST Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3850, 2, 'BHP', 'BHP Group Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3851, 2, 'BBL', 'BHP Group Plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3852, 2, 'BIG', 'Big Lots, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3853, 2, 'CCR', 'CONSOL Coal Resources LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3854, 2, 'BH', 'Biglari Holdings Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3855, 2, 'BH.A', 'Biglari Holdings Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3856, 2, 'BHVN', 'Biohaven Pharmaceutical Holding Company Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3857, 2, 'BIO', 'Bio-Rad Laboratories, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3858, 2, 'BIO.B', 'Bio-Rad Laboratories, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3859, 2, 'BITA', 'Bitauto Holdings Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3860, 2, 'BJ', 'BJ''s Wholesale Club Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3861, 2, 'BKH', 'Black Hills Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3862, 2, 'BKI', 'Black Knight, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3863, 2, 'BSM', 'Black Stone Minerals, L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3864, 2, 'BB', 'BlackBerry Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3865, 2, 'BGIO', 'BlackRock 2022 Global Income Opportunity Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3866, 2, 'BFZ', 'BlackRock California Municipal Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3867, 2, 'CII', 'Blackrock Capital and Income Strategies Fund Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3868, 2, 'BHK', 'Blackrock Core Bond Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3869, 2, 'HYT', 'Blackrock Corporate High Yield Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3870, 2, 'BTZ', 'BlackRock Credit Allocation Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3871, 2, 'DSU', 'Blackrock Debt Strategies Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3872, 2, 'BGR', 'BlackRock Energy and Resources Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3873, 2, 'BDJ', 'Blackrock Enhanced Equity Dividend Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3874, 2, 'EGF', 'Blackrock Enhanced Government Fund, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3875, 2, 'FRA', 'Blackrock Floating Rate Income Strategies Fund Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3876, 2, 'BFO', 'Blackrock Florida Municipal 2020 Term Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3877, 2, 'BGT', 'Blackrock Global');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3878, 2, 'BOE', 'Blackrock Global');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3879, 2, 'BME', 'Blackrock Health Sciences Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3880, 2, 'BAF', 'BlackRock Income Investment Quality Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3881, 2, 'BKT', 'BlackRock Income Trust Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3882, 2, 'BGY', 'BLACKROCK INTERNATIONAL, LTD.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3883, 2, 'BKN', 'BlackRock Investment Quality Municipal Trust Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3884, 2, 'BTA', 'BlackRock Long-Term Municipal Advantage Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3885, 2, 'BZM', 'BlackRock Maryland Municipal Bond Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3886, 2, 'MHE', 'BlackRock Massachusetts Tax-Exempt Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3887, 2, 'BIT', 'BlackRock Multi-Sector Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3888, 2, 'MUI', 'Blackrock Muni Intermediate Duration Fund Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3889, 2, 'MNE', 'Blackrock Muni New York Intermediate Duration Fund Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3890, 2, 'MUA', 'Blackrock MuniAssets Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3891, 2, 'BKK', 'Blackrock Municipal 2020 Term Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3892, 2, 'BBK', 'Blackrock Municipal Bond Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3893, 2, 'BBF', 'BlackRock Municipal Income Investment Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3894, 2, 'BYM', 'Blackrock Municipal Income Quality Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3895, 2, 'BFK', 'BlackRock Municipal Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3896, 2, 'BLE', 'BlackRock Municipal Income Trust II');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3897, 2, 'BTT', 'BlackRock Municipal Target Term Trust Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3898, 2, 'MEN', 'Blackrock MuniEnhanced Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3899, 2, 'MUC', 'Blackrock MuniHoldings California Quality Fund,  Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3900, 2, 'MUH', 'Blackrock MuniHoldings Fund II, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3901, 2, 'MHD', 'Blackrock MuniHoldings Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3902, 2, 'MFL', 'Blackrock MuniHoldings Investment Quality Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3903, 2, 'MUJ', 'Blackrock MuniHoldings New Jersey Insured Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3904, 2, 'MHN', 'Blackrock MuniHoldings New York Quality Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3905, 2, 'MUE', 'Blackrock MuniHoldings Quality Fund II, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3906, 2, 'MUS', 'Blackrock MuniHoldings Quality Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3907, 2, 'MVT', 'Blackrock MuniVest Fund II, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3908, 2, 'MYC', 'Blackrock MuniYield California Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3909, 2, 'MCA', 'Blackrock MuniYield California Insured Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3910, 2, 'MYD', 'Blackrock MuniYield Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3911, 2, 'MYF', 'Blackrock MuniYield Investment Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3912, 2, 'MFT', 'Blackrock MuniYield Investment QualityFund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3913, 2, 'MIY', 'Blackrock MuniYield Michigan Quality Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3914, 2, 'MYJ', 'Blackrock MuniYield New Jersey Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3915, 2, 'MYN', 'Blackrock MuniYield New York Quality Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3916, 2, 'MPA', 'Blackrock MuniYield Pennsylvania Quality Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3917, 2, 'MQT', 'Blackrock MuniYield Quality Fund II, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3918, 2, 'MYI', 'Blackrock MuniYield Quality Fund III, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3919, 2, 'MQY', 'Blackrock MuniYield Quality Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3920, 2, 'BNY', 'BlackRock New York Investment Quality Municipal Trust Inc. (Th');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3921, 2, 'BQH', 'Blackrock New York Municipal Bond Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3930, 2, 'BGB', 'Blackstone / GSO Strategic Credit Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3931, 2, 'BGX', 'Blackstone GSO Long Short Credit Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3932, 2, 'BSL', 'Blackstone GSO Senior Floating Rate Term Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3933, 2, 'BE', 'Bloom Energy Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3934, 2, 'APRN', 'Blue Apron Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3935, 2, 'BCRH', 'Blue Capital Reinsurance Holdings Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3936, 2, 'BXG', 'Bluegreen Vacations Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3937, 2, 'BXC', 'BlueLinx Holdings Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3938, 2, 'BA', 'Boeing Company (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3939, 2, 'BCC', 'Boise Cascade, L.L.C.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3940, 2, 'BCEI', 'Bonanza Creek Energy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3941, 2, 'BOOT', 'Boot Barn Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3942, 2, 'BAH', 'Booz Allen Hamilton Holding Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3943, 2, 'BWA', 'BorgWarner Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3944, 2, 'SAM', 'Boston Beer Company, Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3945, 2, 'BXP', 'Boston Properties, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3947, 2, 'BSX', 'Boston Scientific Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3948, 2, 'BOX', 'Box, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3949, 2, 'BYD', 'Boyd Gaming Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3950, 2, 'BPMP', 'BP Midstream Partners LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3951, 2, 'BP', 'BP p.l.c.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3952, 2, 'BPT', 'BP Prudhoe Bay Royalty Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3953, 2, 'BRC', 'Brady Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3954, 2, 'BHR', 'Braemar Hotels & Resorts Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3957, 2, 'BDN', 'Brandywine Realty Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3958, 2, 'BWG', 'BrandywineGLOBAL Global Income Opportunities Fund ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3959, 2, 'LND', 'Brasilagro Cia Brasileira De Propriedades Agricolas');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3960, 2, 'BAK', 'Braskem S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3961, 2, 'BRFS', 'BRF S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3962, 2, 'BPI', 'Bridgepoint Education, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3963, 2, 'BGG', 'Briggs & Stratton Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3964, 2, 'BFAM', 'Bright Horizons Family Solutions Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3965, 2, 'BEDU', 'Bright Scholar Education Holdings Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3966, 2, 'BSA', 'BrightSphere Investment Group plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3967, 2, 'BSIG', 'BrightSphere Investment Group plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3968, 2, 'BV', 'BrightView Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3969, 2, 'EAT', 'Brinker International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3970, 2, 'BCO', 'Brink''s Company (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3971, 2, 'BMY', 'Bristol-Myers Squibb Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3972, 2, 'BRS', 'Bristow Group Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3973, 2, 'BTI', 'British American Tobacco p.l.c.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3974, 2, 'BRX', 'Brixmor Property Group Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3975, 2, 'BR', 'Broadridge Financial Solutions, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3976, 2, 'BKD', 'Brookdale Senior Living Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3977, 2, 'BAM', 'Brookfield Asset Management Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3978, 2, 'BBU', 'Brookfield Business Partners L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3980, 2, 'INF', 'Brookfield Global Listed Infrastructure Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3981, 2, 'BIP', 'Brookfield Infrastructure Partners LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3982, 2, 'RA', 'Brookfield Real Assets Income Fund Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3983, 2, 'BEP', 'Brookfield Renewable Partners L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3984, 2, 'BRO', 'Brown & Brown, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3985, 2, 'BF.A', 'Brown Forman Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3986, 2, 'BF.B', 'Brown Forman Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3987, 2, 'BRT', 'BRT Apartments Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3988, 2, 'BC', 'Brunswick Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3991, 2, 'BT', 'BT Group plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3992, 2, 'BPL', 'Buckeye Partners L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3993, 2, 'BKE', 'Buckle, Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3994, 2, 'BVN', 'Buenaventura Mining Company Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3995, 2, 'BBW', 'Build-A-Bear Workshop, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3996, 2, 'BG', 'Bunge Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3997, 2, 'BURL', 'Burlington Stores, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3998, 2, 'BWXT', 'BWX Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(3999, 2, 'BY', 'Byline Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4000, 2, 'CJ', 'C&J Energy Services, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4001, 2, 'GYB', 'CABCO Series 2004-101 Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4002, 2, 'PFH', 'CABCO Series 2004-101 Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4003, 2, 'CABO', 'Cable One, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4004, 2, 'CBT', 'Cabot Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4005, 2, 'COG', 'Cabot Oil & Gas Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4006, 2, 'CACI', 'CACI International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4007, 2, 'WHD', 'Cactus, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4008, 2, 'CADE', 'Cadence Bancorporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4009, 2, 'CAE', 'CAE Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4010, 2, 'CAI', 'CAI International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4013, 2, 'CAL', 'Caleres, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4014, 2, 'CRC', 'California Resources Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4015, 2, 'CWT', 'California Water  Service Group Holding');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4016, 2, 'CALX', 'Calix, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4017, 2, 'ELY', 'Callaway Golf Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4018, 2, 'CPE', 'Callon Petroleum Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4020, 2, 'CBM', 'Cambrex Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4021, 2, 'CPT', 'Camden Property Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4022, 2, 'CCJ', 'Cameco Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4023, 2, 'CPB', 'Campbell Soup Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4024, 2, 'CWH', 'Camping World Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4025, 2, 'GOOS', 'Canada Goose Holdings Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4026, 2, 'CM', 'Canadian Imperial Bank of Commerce');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4027, 2, 'CNI', 'Canadian National Railway Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4028, 2, 'CNQ', 'Canadian Natural Resources Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4029, 2, 'CP', 'Canadian Pacific Railway Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4030, 2, 'CANG', 'Cango Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4031, 2, 'CNNE', 'Cannae Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4032, 2, 'CAJ', 'Canon, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4033, 2, 'CGC', 'Canopy Growth Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4034, 2, 'CMD', 'Cantel Medical Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4035, 2, 'COF', 'Capital One Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4061, 2, 'CSLT', 'Castlight Health, inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4062, 2, 'CTLT', 'Catalent, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4063, 2, 'CTT           ', 'CatchMark Timber Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4064, 2, 'CAT', 'Caterpillar, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4065, 2, 'CATO', 'Cato Corporation (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4066, 2, 'CBZ', 'CBIZ, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4067, 2, 'CBL', 'CBL & Associates Properties, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4070, 2, 'CBO', 'CBO (Listing Market - NYSE - Networks A/E)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4071, 2, 'IGR', 'CBRE Clarion Global Real Estate Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4072, 2, 'CBRE', 'CBRE Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4073, 2, 'CBS', 'CBS Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4074, 2, 'CBS.A', 'CBS Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4075, 2, 'CBX', 'CBX (Listing Market NYSE Networks AE');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4076, 2, 'FUN', 'Cedar Fair, L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4077, 2, 'CDR', 'Cedar Realty Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4080, 2, 'CE', 'Celanese Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4081, 2, 'CLS', 'Celestica, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4082, 2, 'CEL', 'Cellcom Israel, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4083, 2, 'CPAC', 'Cementos Pacasmayo S.A.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4084, 2, 'CX', 'Cemex S.A.B. de C.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4085, 2, 'CVE', 'Cenovus Energy Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4086, 2, 'CNC', 'Centene Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4087, 2, 'CEN', 'Center Coast Brookfield MLP & Energy Infrastructur');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4088, 2, 'CNP', 'CenterPoint Energy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4090, 2, 'EBR', 'Centrais Electricas Brasileiras S.A.- Eletrobras');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4091, 2, 'EBR.B', 'Centrais Electricas Brasileiras S.A.- Eletrobras');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4092, 2, 'CEPU', 'Central Puerto S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4093, 2, 'CCS', 'Century Communities, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4094, 2, 'CTL', 'CenturyLink, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4095, 2, 'CDAY', 'Ceridian HCM Holding Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4096, 2, 'CF', 'CF Industries Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4097, 2, 'GIB', 'CGI Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4098, 2, 'ECOM          ', 'ChannelAdvisor Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4099, 2, 'CHAP', 'Chaparral Energy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4100, 2, 'CHRA', 'Charah Solutions, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4101, 2, 'CRL', 'Charles River Laboratories International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4102, 2, 'CLDT', 'Chatham Lodging Trust (REIT)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4103, 2, 'CMCM', 'Cheetah Mobile Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4104, 2, 'CHGG', 'Chegg, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4105, 2, 'CHE', 'Chemed Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4106, 2, 'CC', 'Chemours Company (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4107, 2, 'CHMI', 'Cherry Hill Mortgage Investment Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4109, 2, 'CHK', 'Chesapeake Energy Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4111, 2, 'CHKR', 'Chesapeake Granite Wash Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4112, 2, 'CHSP', 'Chesapeake Lodging Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4113, 2, 'CPK', 'Chesapeake Utilities Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4114, 2, 'CVX', 'Chevron Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4115, 2, 'CHS', 'Chico''s FAS, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4116, 2, 'CIM', 'Chimera Investment Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4120, 2, 'DL', 'China Distance Education Holdings Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4121, 2, 'CEA', 'China Eastern Airlines Corporation Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4122, 2, 'CHN', 'China Fund, Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4123, 2, 'CGA', 'China Green Agriculture, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4124, 2, 'LFC', 'China Life Insurance Company Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4125, 2, 'CHL', 'China Mobile (Hong Kong) Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4126, 2, 'BORN', 'China New Borun Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4127, 2, 'COE', 'China Online Education Group');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4128, 2, 'SNP', 'China Petroleum & Chemical Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4129, 2, 'XRF', 'China Rapid Finance Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4130, 2, 'ZNH', 'China Southern Airlines Company Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4131, 2, 'CHA', 'China Telecom Corp Ltd');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4132, 2, 'CHU', 'China Unicom (Hong Kong) Ltd');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4133, 2, 'CYD', 'China Yuchai International Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4134, 2, 'CMG', 'Chipotle Mexican Grill, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4135, 2, 'CHH', 'Choice Hotels International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4136, 2, 'CBK', 'Christopher & Banks Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4137, 2, 'CB', 'Chubb Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4138, 2, 'CHT', 'Chunghwa Telecom Co., Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4139, 2, 'CHD', 'Church & Dwight Company, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4140, 2, 'CCC', 'Churchill Capital Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4141, 2, 'CCC.U', 'Churchill Capital Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4142, 2, 'CCC.WS', 'Churchill Capital Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4143, 2, 'CIEN', 'Ciena Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4144, 2, 'CI', 'Cigna Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4145, 2, 'XEC', 'Cimarex Energy Co');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4146, 2, 'CBB', 'Cincinnati Bell Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4148, 2, 'CNK', 'Cinemark Holdings Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4149, 2, 'CINR', 'Ciner Resources LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4150, 2, 'CIR', 'CIRCOR International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4151, 2, 'CISN', 'Cision Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4172, 2, 'CWEN', 'Clearway Energy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4173, 2, 'CWEN.A', 'Clearway Energy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4174, 2, 'CLF', 'Cleveland-Cliffs Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4175, 2, 'CLPR', 'Clipper Realty Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4176, 2, 'CLX', 'Clorox Company (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4177, 2, 'CLD', 'Cloud Peak Energy Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4178, 2, 'CLDR', 'Cloudera, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4179, 2, 'CMS', 'CMS Energy Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4181, 2, 'CMSA', 'CMS Energy Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4182, 2, 'CMSC', 'CMS Energy Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4183, 2, 'CNA', 'CNA Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4184, 2, 'CNF', 'CNFinance Holdings Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4185, 2, 'CNHI', 'CNH Industrial N.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4186, 2, 'CNO', 'CNO Financial Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4187, 2, 'CEO', 'CNOOC Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4188, 2, 'CNXM', 'CNX Midstream Partners LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4189, 2, 'CEIX', 'CNX Resources Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4190, 2, 'CNX', 'CNX Resources Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4192, 2, 'KOF', 'Coca Cola Femsa S.A.B. de C.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4193, 2, 'KO', 'Coca-Cola Company (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4194, 2, 'CCEP', 'Coca-Cola European Partners plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4195, 2, 'CDE', 'Coeur Mining, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4196, 2, 'FOF', 'Cohen & Steers Closed-End Opportunity Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4197, 2, 'INB', 'Cohen & Steers Global Income Builder, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4198, 2, 'CNS', 'Cohen & Steers Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4199, 2, 'UTF', 'Cohen & Steers Infrastructure Fund, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4200, 2, 'LDP', 'Cohen & Steers Limited Duration Preferred and Income Fund, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4201, 2, 'MIE', 'Cohen & Steers MLP Income and Energy Opportunity Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4202, 2, 'RQI', 'Cohen & Steers Quality Income Realty Fund Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4203, 2, 'RNP', 'Cohen & Steers Reit and Preferred Income Fund Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4204, 2, 'PSF', 'Cohen & Steers Select Preferred and Income Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4205, 2, 'RFI', 'Cohen & Steers Total Return Realty Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4206, 2, 'CFX', 'Colfax Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4207, 2, 'CL', 'Colgate-Palmolive Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4208, 2, 'CCH', 'Collier Creek Holdings');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4209, 2, 'CCH.U', 'Collier Creek Holdings');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4210, 2, 'CCH.WS', 'Collier Creek Holdings');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4211, 2, 'CXE', 'Colonial High Income Municipal Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4212, 2, 'CIF', 'Colonial Intermediate High Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4213, 2, 'CXH', 'Colonial Investment Grade Municipal Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4214, 2, 'CMU', 'Colonial Municipal Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4215, 2, 'CLNY', 'Colony Capital, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4222, 2, 'CLNC', 'Colony Credit Real Estate, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4223, 2, 'CXP', 'Columbia Property Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4224, 2, 'STK', 'Columbia Seligman Premium Technology Growth Fund, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4225, 2, 'CCZ', 'Comcast Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4226, 2, 'CMA', 'Comerica Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4227, 2, 'FIX', 'Comfort Systems USA, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4228, 2, 'CMC', 'Commercial Metals Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4229, 2, 'CBU', 'Community Bank System, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4230, 2, 'CYH', 'Community Health Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4231, 2, 'CHCT', 'Community Healthcare Trust Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4232, 2, 'CIG', 'Comp En De Mn Cemig ADS');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4233, 2, 'CIG.C', 'Comp En De Mn Cemig ADS');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4234, 2, 'CBD', 'Companhia Brasileira de Distribuicao');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4235, 2, 'SBS', 'Companhia de saneamento Basico Do Estado De Sao Paulo - Sabesp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4236, 2, 'ELP', 'Companhia Paranaense de Energia (COPEL)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4237, 2, 'CCU', 'Compania Cervecerias Unidas, S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4238, 2, 'CODI', 'Compass Diversified Holdings');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4241, 2, 'CMP', 'Compass Minerals International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4242, 2, 'CRK', 'Comstock Resources, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4243, 2, 'CAG', 'ConAgra Brands, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4244, 2, 'CXO', 'Concho Resources Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4245, 2, 'CCM', 'Concord Medical Services Holdings Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4246, 2, 'CNDT', 'Conduent Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4247, 2, 'COP', 'ConocoPhillips');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4248, 2, 'ED', 'Consolidated Edison Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4249, 2, 'STZ', 'Constellation Brands Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4250, 2, 'STZ.B', 'Constellation Brands Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4251, 2, 'CSTM', 'Constellium N.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4252, 2, 'TCS', 'Container Store (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4253, 2, 'CBPX', 'Continental Building Products, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4254, 2, 'CLR', 'Continental Resources, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4255, 2, 'VLRS', 'Controladora Vuela Compania de Aviacion, S.A.B. de C.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4256, 2, 'CTRA', 'Contura Energy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4257, 2, 'CTB', 'Cooper Tire & Rubber Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4258, 2, 'CPS', 'Cooper-Standard Holdings Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4259, 2, 'CTK', 'CooTek (Cayman) Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4260, 2, 'CPA', 'Copa Holdings, S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4261, 2, 'CLB', 'Core Laboratories N.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4262, 2, 'CXW', 'CoreCivic, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4263, 2, 'CLGX', 'CoreLogic, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4287, 2, 'CRD.B', 'Crawford & Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4288, 2, 'BAP', 'Credicorp Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4289, 2, 'CS', 'Credit Suisse Group');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4290, 2, 'CPG', 'Crescent Point Energy Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4291, 2, 'CEQP', 'Crestwood Equity Partners LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4292, 2, 'CRH', 'CRH PLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4293, 2, 'CRT', 'Cross Timbers Royalty Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4294, 2, 'CAPL', 'CrossAmerica Partners LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4295, 2, 'CCI', 'Crown Castle International Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4297, 2, 'CCK', 'Crown Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4298, 2, 'CRY', 'CryoLife, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4299, 2, 'CSS', 'CSS Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4300, 2, 'CTS', 'CTS Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4301, 2, 'CUBE', 'CubeSmart');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4302, 2, 'CUB', 'Cubic Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4303, 2, 'CFR', 'Cullen/Frost Bankers, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4304, 2, 'CULP', 'Culp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4305, 2, 'CMI', 'Cummins Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4306, 2, 'CURO', 'CURO Group Holdings Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4307, 2, 'CW', 'Curtiss-Wright Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4308, 2, 'SRF', 'Cushing Energy Income Fund (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4309, 2, 'SRV', 'Cushing MLP & Infrastructure Total Return Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4310, 2, 'SZC', 'Cushing Renaissance Fund (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4311, 2, 'CWK', 'Cushman & Wakefield plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4312, 2, 'CUBI', 'Customers Bancorp, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4317, 2, 'CVI', 'CVR Energy Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4318, 2, 'UAN', 'CVR Partners, LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4319, 2, 'CVRR', 'CVR Refining, LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4320, 2, 'CVS', 'CVS Health Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4321, 2, 'CELP', 'Cypress Energy Partners, L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4322, 2, 'DHI', 'D.R. Horton, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4323, 2, 'DAN', 'Dana Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4324, 2, 'DHR', 'Danaher Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4325, 2, 'DAC', 'Danaos Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4326, 2, 'DQ', 'DAQO New Energy Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4327, 2, 'DRI', 'Darden Restaurants, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4328, 2, 'DAR', 'Darling Ingredients Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4329, 2, 'DVA', 'DaVita Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4330, 2, 'DCP', 'DCP Midstream LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4333, 2, 'DF', 'Dean Foods Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4334, 2, 'DECK', 'Deckers Outdoor Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4335, 2, 'DE', 'Deere & Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4336, 2, 'DEX', 'Delaware Enhanced Global Dividend');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4337, 2, 'DDF', 'Delaware Investments Dividend & Income Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4338, 2, 'DKL', 'Delek Logistics Partners, L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4339, 2, 'DK', 'Delek US Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4340, 2, 'DVMT', 'Dell Technologies Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4341, 2, 'DLPH', 'Delphi Technologies PLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4342, 2, 'DAL', 'Delta Air Lines, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4343, 2, 'DLX', 'Deluxe Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4344, 2, 'DNR', 'Denbury Resources Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4345, 2, 'DESP', 'Despegar.com, Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4346, 2, 'DKT', 'Deutsch Bk Contingent Cap Tr V');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4347, 2, 'DB', 'Deutsche Bank AG');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4348, 2, 'DXB', 'Deutsche Bank AG');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4349, 2, 'DVN', 'Devon Energy Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4350, 2, 'DHX', 'DHI Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4351, 2, 'DHT', 'DHT Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4352, 2, 'DEO', 'Diageo plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4353, 2, 'DO', 'Diamond Offshore Drilling, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4354, 2, 'DRH', 'Diamondrock Hospitality Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4355, 2, 'DSX', 'Diana Shipping inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4357, 2, 'DKS', 'Dick''s Sporting Goods Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4358, 2, 'DBD', 'Diebold Nixdorf Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4359, 2, 'DLR', 'Digital Realty Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4365, 2, 'DDS', 'Dillard''s, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4366, 2, 'DDT', 'Dillard''s, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4367, 2, 'DIN', 'Dine Brands Global, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4368, 2, 'DPLO', 'Diplomat Pharmacy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4369, 2, 'DFS', 'Discover Financial Services');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4370, 2, 'DNI', 'Dividend and Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4371, 2, 'DLB', 'Dolby Laboratories');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4372, 2, 'DG', 'Dollar General Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4373, 2, 'DM', 'Dominion Energy Midstream Partners, LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4374, 2, 'D', 'Dominion Energy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4375, 2, 'DCUD', 'Dominion Energy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4376, 2, 'DRUA', 'Dominion Energy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4377, 2, 'DPZ', 'Domino''s Pizza Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4378, 2, 'UFS', 'Domtar Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4379, 2, 'DCI', 'Donaldson Company, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4380, 2, 'DFIN', 'Donnelley Financial Solutions, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4381, 2, 'LPG', 'Dorian LPG Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4382, 2, 'DSL', 'DoubleLine Income Solutions Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4383, 2, 'DBL', 'DoubleLine Opportunistic Credit Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4384, 2, 'PLOW', 'Douglas Dynamics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4395, 2, 'DSM', 'Dreyfus Strategic Municipal Bond Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4396, 2, 'LEO', 'Dreyfus Strategic Municipals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4397, 2, 'DRQ', 'Dril-Quip, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4398, 2, 'DS', 'Drive Shack Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4402, 2, 'DSW', 'DSW Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4403, 2, 'DTE', 'DTE Energy Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4404, 2, 'DTJ', 'DTE Energy Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4405, 2, 'DTQ', 'DTE Energy Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4406, 2, 'DTV', 'DTE Energy Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4407, 2, 'DTW', 'DTE Energy Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4408, 2, 'DTY', 'DTE Energy Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4409, 2, 'DCO', 'Ducommun Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4410, 2, 'DPG', 'Duff & Phelps Global Utility Income Fund Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4411, 2, 'DSE', 'Duff & Phelps Select MLP and Midstream Energy Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4412, 2, 'DNP', 'Duff & Phelps Utilities Income, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4413, 2, 'DTF', 'Duff & Phelps Utilities Tax-Free Income, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4414, 2, 'DUC', 'Duff & Phelps Utility & Corporate Bond Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4415, 2, 'DUK', 'Duke Energy Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4416, 2, 'DUKB', 'Duke Energy Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4417, 2, 'DUKH', 'Duke Energy Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4419, 2, 'DRE', 'Duke Realty Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4420, 2, 'DNB', 'Dun & Bradstreet Corporation (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4421, 2, 'DXC', 'DXC Technology Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4422, 2, 'DY', 'Dycom Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4423, 2, 'DLNG', 'Dynagas LNG Partners LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4426, 2, 'DX', 'Dynex Capital, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4431, 2, 'ELF', 'e.l.f. Beauty, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4432, 2, 'EGIF', 'Eagle Growth and Income Opportunities Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4433, 2, 'EXP', 'Eagle Materials Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4434, 2, 'ECC           ', 'Eagle Point Credit Company Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4435, 2, 'ECCA', 'Eagle Point Credit Company Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4436, 2, 'ECCB', 'Eagle Point Credit Company Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4437, 2, 'ECCX', 'Eagle Point Credit Company Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4438, 2, 'ECCY', 'Eagle Point Credit Company Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4439, 2, 'ESTE', 'Earthstone Energy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4440, 2, 'DEA', 'Easterly Government Properties, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4441, 2, 'EGP', 'EastGroup Properties, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4442, 2, 'EMN', 'Eastman Chemical Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4443, 2, 'KODK', 'Eastman Kodak Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4444, 2, 'ETN', 'Eaton Corporation, PLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4445, 2, 'ETV', 'Eaton Vance Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4446, 2, 'ETW', 'Eaton Vance Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4447, 2, 'EV', 'Eaton Vance Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4448, 2, 'EOI', 'Eaton Vance Enhance Equity Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4449, 2, 'EOS', 'Eaton Vance Enhanced Equity Income Fund II');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4450, 2, 'EFT', 'Eaton Vance Floating Rate Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4451, 2, 'EFL', 'Eaton Vance Floating-Rate 2022 Target Term Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4452, 2, 'EFF', 'Eaton vance Floating-Rate Income Plus Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4453, 2, 'EHT', 'Eaton Vance High Income 2021 Target Term Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4454, 2, 'ETX           ', 'Eaton Vance Municipal Income 2028 Term Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4455, 2, 'EOT', 'Eaton Vance Municipal Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4456, 2, 'EVN', 'Eaton Vance Municipal Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4457, 2, 'ETJ', 'Eaton Vance Risk-Managed Diversified Equity Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4458, 2, 'EFR', 'Eaton Vance Senior Floating-Rate Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4459, 2, 'EVF', 'Eaton Vance Senior Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4460, 2, 'EVG', 'Eaton Vance Short Diversified Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4461, 2, 'EVT', 'Eaton Vance Tax Advantaged Dividend Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4462, 2, 'ETO', 'Eaton Vance Tax-Advantage Global Dividend Opp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4463, 2, 'EXD', 'Eaton Vance Tax-Advantaged Bond');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4464, 2, 'ETG', 'Eaton Vance Tax-Advantaged Global Dividend Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4465, 2, 'ETB', 'Eaton Vance Tax-Managed Buy-Write Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4466, 2, 'ETY', 'Eaton Vance Tax-Managed Diversified Equity Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4467, 2, 'EXG', 'Eaton Vance Tax-Managed Global Diversified Equity Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4468, 2, 'ECT', 'ECA Marcellus Trust I');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4469, 2, 'ECR', 'Eclipse Resources Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4470, 2, 'ECL', 'Ecolab Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4471, 2, 'EC', 'Ecopetrol S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4472, 2, 'EIX', 'Edison International');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4473, 2, 'EW', 'Edwards Lifesciences Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4474, 2, 'EHIC', 'eHi Car Services Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4476, 2, 'EE', 'El Paso Electric Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4477, 2, 'ELAN', 'Elanco Animal Health Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4478, 2, 'ESTC', 'Elastic N.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4479, 2, 'EGO', 'Eldorado Gold Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4480, 2, 'ELVT', 'Elevate Credit, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4481, 2, 'LLY', 'Eli Lilly and Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4482, 2, 'ELLI', 'Ellie Mae, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4483, 2, 'EFC', 'Ellington Financial LLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4484, 2, 'EARN', 'Ellington Residential Mortgage REIT');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4485, 2, 'AKO.A', 'Embotelladora Andina S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4486, 2, 'AKO.B', 'Embotelladora Andina S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4487, 2, 'ERJ', 'Embraer S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4488, 2, 'EME', 'EMCOR Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4489, 2, 'EEX', 'Emerald Expositions Events, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4490, 2, 'EMES', 'Emerge Energy Services LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4491, 2, 'EBS', 'Emergent Biosolutions, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4492, 2, 'EMR', 'Emerson Electric Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4493, 2, 'ESRT', 'Empire State Realty Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4494, 2, 'EIG', 'Employers Holdings Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4495, 2, 'EDN', 'Empresa Distribuidora Y Comercializadora Norte S.A. (Edenor)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4512, 2, 'ENS', 'Enersys');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4513, 2, 'EGL', 'Engility Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4514, 2, 'E', 'ENI S.p.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4515, 2, 'ENLK', 'EnLink Midstream Partners, LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4516, 2, 'ENLC', 'EnLink Midstream, LLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4517, 2, 'EBF', 'Ennis, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4518, 2, 'ENVA', 'Enova International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4519, 2, 'NPO', 'EnPro Industries');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4520, 2, 'ESV', 'ENSCO plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4521, 2, 'ETM', 'Entercom Communications Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4522, 2, 'EAB', 'Entergy Arkansas, LLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4523, 2, 'EAE', 'Entergy Arkansas, LLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4524, 2, 'EAI', 'Entergy Arkansas, LLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4525, 2, 'ETR', 'Entergy Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4526, 2, 'ELC', 'Entergy Louisiana, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4527, 2, 'ELJ', 'Entergy Louisiana, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4528, 2, 'ELU', 'Entergy Louisiana, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4529, 2, 'EMP', 'Entergy Mississippi, LLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4530, 2, 'ENJ', 'Entergy New Orleans, LLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4531, 2, 'ENO', 'Entergy New Orleans, LLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4532, 2, 'EZT', 'Entergy Texas Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4533, 2, 'EPD', 'Enterprise Products Partners L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4534, 2, 'EVC', 'Entravision Communications Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4535, 2, 'ENV', 'Envestnet, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4536, 2, 'EVA', 'Enviva Partners, LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4537, 2, 'ENZ', 'Enzo Biochem, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4538, 2, 'EOG', 'EOG Resources, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4539, 2, 'EPE', 'EP Energy Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4540, 2, 'EPAM', 'EPAM Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4541, 2, 'EPR', 'EPR Properties');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4545, 2, 'EQGP', 'EQGP Holdings, LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4546, 2, 'EQM', 'EQM Midstream Partners, LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4547, 2, 'EQT', 'EQT Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4548, 2, 'EFX', 'Equifax, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4549, 2, 'EQNR', 'Equinor ASA');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4550, 2, 'ETRN', 'Equitrans Midstream Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4551, 2, 'EQC', 'Equity Commonwealth');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4553, 2, 'ELS', 'Equity Lifestyle Properties, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4554, 2, 'EQR', 'Equity Residential');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4555, 2, 'EQS', 'Equus Total Return, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4556, 2, 'ERA', 'Era Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4557, 2, 'EROS', 'Eros International PLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4558, 2, 'ESE', 'ESCO Technologies Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4559, 2, 'ESNT', 'Essent Group Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4560, 2, 'EPRT', 'Essential Properties Realty Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4561, 2, 'ESS', 'Essex Property Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4562, 2, 'EL', 'Estee Lauder Companies, Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4563, 2, 'ESL', 'Esterline Technologies Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4564, 2, 'ETH', 'Ethan Allen Interiors Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4565, 2, 'EURN', 'Euronav NV');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4566, 2, 'EEA', 'European Equity Fund, Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4567, 2, 'EB', 'Eventbrite, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4568, 2, 'EVR', 'Evercore Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4569, 2, 'RE', 'Everest Re Group, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4570, 2, 'EVRG', 'Evergy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4571, 2, 'EVRI', 'Everi Holdings Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4572, 2, 'ES', 'Eversource Energy');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4573, 2, 'EVTC', 'Evertec, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4574, 2, 'EVH', 'Evolent Health, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4575, 2, 'AQUA', 'Evoqua Water Technologies Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4576, 2, 'XAN', 'Exantas Capital Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4578, 2, 'EXC', 'Exelon Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4579, 2, 'EXPR', 'Express, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4580, 2, 'EXTN', 'Exterran Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4581, 2, 'EXR', 'Extra Space Storage Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4582, 2, 'XOM', 'Exxon Mobil Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4583, 2, 'FNB', 'F.N.B. Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4585, 2, 'FN', 'Fabrinet');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4586, 2, 'FDS', 'FactSet Research Systems Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4587, 2, 'FICO', 'Fair Isaac Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4588, 2, 'SFUN', 'Fang Holdings Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4589, 2, 'FPAC', 'Far Point Acquisition Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4590, 2, 'FPAC.U', 'Far Point Acquisition Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4591, 2, 'FPAC.WS', 'Far Point Acquisition Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4592, 2, 'FTCH', 'Farfetch Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4593, 2, 'FPI', 'Farmland Partners Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4595, 2, 'FBK', 'FB Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4596, 2, 'FFG', 'FBL Financial Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4597, 2, 'FCB', 'FCB Financial Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4598, 2, 'AGM', 'Federal Agricultural Mortgage Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4599, 2, 'AGM.A', 'Federal Agricultural Mortgage Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4603, 2, 'FRT', 'Federal Realty Investment Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4605, 2, 'FSS', 'Federal Signal Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4606, 2, 'FII', 'Federated Investors, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4607, 2, 'FMN', 'Federated Premier Municipal Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4608, 2, 'FDX', 'FedEx Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4609, 2, 'RACE', 'Ferrari N.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4610, 2, 'FGP', 'Ferrellgas Partners, L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4611, 2, 'FOE', 'Ferro Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4612, 2, 'FG', 'FGL Holdings');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4613, 2, 'FG.WS', 'FGL Holdings');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4614, 2, 'FCAU', 'Fiat Chrysler Automobiles N.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4615, 2, 'FBR', 'Fibria Celulose S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4616, 2, 'FNF', 'Fidelity National Financial, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4645, 2, 'FEO', 'First Trust/Aberdeen Emerging Opportunity Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4646, 2, 'FAM', 'First Trust/Aberdeen Global Opportunity Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4647, 2, 'FE', 'FirstEnergy Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4648, 2, 'FIT', 'Fitbit, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4649, 2, 'FPH', 'Five Point Holdings, LLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4650, 2, 'FBC', 'Flagstar Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4651, 2, 'DFP', 'Flaherty & Crumrine Dynamic Preferred and Income Fund Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4652, 2, 'PFD', 'Flaherty & Crumrine Preferred Income Fund Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4653, 2, 'PFO', 'Flaherty & Crumrine Preferred Income Opportunity Fund Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4819, 2, 'GPI', 'Group 1 Automotive, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4654, 2, 'FFC', 'Flaherty & Crumrine Preferred Securities Income Fund Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4655, 2, 'FLC', 'Flaherty & Crumrine Total Return Fund Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4656, 2, 'FLT', 'FleetCor Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4657, 2, 'FND', 'Floor & Decor Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4658, 2, 'FTK', 'Flotek Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4659, 2, 'FLO', 'Flowers Foods, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4660, 2, 'FLS', 'Flowserve Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4661, 2, 'FLR', 'Fluor Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4662, 2, 'FLY', 'Fly Leasing Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4663, 2, 'FMC', 'FMC Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4664, 2, 'FMX', 'Fomento Economico Mexicano S.A.B. de C.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4665, 2, 'FL', 'Foot Locker, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4666, 2, 'F', 'Ford Motor Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4667, 2, 'FELP', 'Foresight Energy LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4668, 2, 'FOR', 'Forestar Group Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4669, 2, 'FTS', 'Fortis Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4670, 2, 'FTV', 'Fortive Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4672, 2, 'FTAI', 'Fortress Transportation and Infrastructure Investors LLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4673, 2, 'FSM', 'Fortuna Silver Mines Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4674, 2, 'FBHS', 'Fortune Brands Home & Security, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4675, 2, 'FET', 'Forum Energy Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4676, 2, 'FBM', 'Foundation Building Materials, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4677, 2, 'FCPT', 'Four Corners Property Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4678, 2, 'FEDU', 'Four Seasons Education (Cayman) Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4679, 2, 'FNV', 'Franco-Nevada Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4680, 2, 'FC', 'Franklin Covey Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4681, 2, 'FSB', 'Franklin Financial Network, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4682, 2, 'BEN', 'Franklin Resources, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4683, 2, 'FT', 'Franklin Universal Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4684, 2, 'FI', 'Frank''s International N.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4685, 2, 'FCX', 'Freeport-McMoran, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4686, 2, 'FMS', 'Fresenius Medical Care Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4687, 2, 'FDP', 'Fresh Del Monte Produce, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4688, 2, 'RESI', 'Front Yard Residential Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4689, 2, 'FRO', 'Frontline Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4690, 2, 'FSK', 'FS KKR Capital Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4691, 2, 'FCN', 'FTI Consulting, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4692, 2, 'FTSI', 'FTS International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4693, 2, 'FF', 'FutureFuel Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4694, 2, 'GCV', 'Gabelli Convertible and Income Securities Fund, Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4696, 2, 'GDV', 'Gabelli Dividend');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4700, 2, 'GAB', 'Gabelli Equity Trust, Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4704, 2, 'GGZ', 'Gabelli Global Small and Mid Cap Value Trust (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4706, 2, 'GGT', 'Gabelli Multi-Media Trust Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4709, 2, 'GUT', 'Gabelli Utility Trust (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4712, 2, 'GCAP', 'GAIN Capital Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4713, 2, 'GBL', 'Gamco Investors, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4714, 2, 'GNT', 'GAMCO Natural Resources, Gold & Income Tust ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4716, 2, 'GME', 'Gamestop Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4717, 2, 'GPS', 'Gap, Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4718, 2, 'GDI', 'Gardner Denver Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4719, 2, 'GTX', 'Garrett Motion Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4720, 2, 'IT', 'Gartner, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4721, 2, 'GLOG', 'GasLog LP.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4723, 2, 'GLOP', 'GasLog Partners LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4742, 2, 'GWR', 'Genesee & Wyoming, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4743, 2, 'GEL', 'Genesis Energy, L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4744, 2, 'GEN           ', 'Genesis Healthcare, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4747, 2, 'G', 'Genpact Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4748, 2, 'GPC', 'Genuine Parts Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4749, 2, 'GNW', 'Genworth Financial Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4750, 2, 'GEO', 'Geo Group Inc (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4751, 2, 'GPRK', 'Geopark Ltd');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4752, 2, 'GPJA', 'Georgia Power Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4753, 2, 'GGB', 'Gerdau S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4754, 2, 'GTY', 'Getty Realty Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4755, 2, 'GIG', 'GigCapital, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4756, 2, 'GIG.U', 'GigCapital, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4757, 2, 'GIG.WS', 'GigCapital, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4758, 2, 'GIG~', 'GigCapital, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4759, 2, 'GIL', 'Gildan Activewear, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4760, 2, 'GLT', 'Glatfelter');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4761, 2, 'GKOS', 'Glaukos Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4762, 2, 'GSK', 'GlaxoSmithKline PLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4763, 2, 'BRSS', 'Global Brass and Copper Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4764, 2, 'CO', 'Global Cord Blood Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4765, 2, 'GMRE', 'Global Medical REIT Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4767, 2, 'GNL', 'Global Net Lease, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4769, 2, 'GLP', 'Global Partners LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4771, 2, 'GPN', 'Global Payments Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4772, 2, 'GSL', 'Global Ship Lease, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4774, 2, 'GLOB', 'Globant S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4775, 2, 'GMED', 'Globus Medical, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4776, 2, 'GMS', 'GMS Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4777, 2, 'GNC', 'GNC Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4778, 2, 'GDDY', 'GoDaddy Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4779, 2, 'GOL', 'Gol Linhas Aereas Inteligentes S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4780, 2, 'GFI', 'Gold Fields Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4781, 2, 'GG', 'Goldcorp Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4782, 2, 'GSBD', 'Goldman Sachs BDC, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4783, 2, 'GS', 'Goldman Sachs Group, Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4791, 2, 'GER', 'Goldman Sachs MLP Energy Renaissance Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4792, 2, 'GMZ', 'Goldman Sachs MLP Income Opportunities Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4793, 2, 'GRC', 'Gorman-Rupp Company (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4794, 2, 'GPX', 'GP Strategies Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4795, 2, 'GGG', 'Graco Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4796, 2, 'GRAF', 'Graf Industrial Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4797, 2, 'GRAF.U', 'Graf Industrial Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4798, 2, 'GRAF.WS', 'Graf Industrial Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4799, 2, 'EAF', 'GrafTech International Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4800, 2, 'GHM', 'Graham Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4801, 2, 'GHC', 'Graham Holdings Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4802, 2, 'GRAM', 'Grana y Montero S.A.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4803, 2, 'GVA', 'Granite Construction Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4804, 2, 'GPMT', 'Granite Point Mortgage Trust Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4805, 2, 'GRP.U', 'Granite Real Estate Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4806, 2, 'GPK', 'Graphic Packaging Holding Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4807, 2, 'GTN', 'Gray Television, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4808, 2, 'GTN.A', 'Gray Television, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4809, 2, 'AJX', 'Great Ajax Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4810, 2, 'AJXA', 'Great Ajax Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4811, 2, 'GWB', 'Great Western Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4812, 2, 'GDOT', 'Green Dot Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4813, 2, 'GBX', 'Greenbrier Companies, Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4814, 2, 'GHL', 'Greenhill & Co., Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4815, 2, 'GHG', 'GreenTree Hospitality Group Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4816, 2, 'GEF', 'Greif Bros. Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4817, 2, 'GEF.B', 'Greif Bros. Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4818, 2, 'GFF', 'Griffon Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4820, 2, 'GRUB', 'GrubHub Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4821, 2, 'PAC', 'Grupo Aeroportuario Del Pacifico, S.A. de C.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4822, 2, 'ASR', 'Grupo Aeroportuario del Sureste, S.A. de C.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4823, 2, 'AVAL', 'Grupo Aval Acciones y Valores S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4824, 2, 'SUPV', 'Grupo Supervielle S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4825, 2, 'TV', 'Grupo Televisa S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4826, 2, 'GSAH', 'GS Acquisition Holdings Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4827, 2, 'GSAH.U', 'GS Acquisition Holdings Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4828, 2, 'GSAH.WS', 'GS Acquisition Holdings Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4829, 2, 'GTT', 'GTT Communications, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4830, 2, 'GSH', 'Guangshen Railway Company Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4831, 2, 'GES', 'Guess?, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4832, 2, 'GGM', 'Guggenheim Credit Allocation Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4833, 2, 'GPM', 'Guggenheim Enhanced Equity Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4834, 2, 'GOF', 'Guggenheim Strategic Opportunities Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4835, 2, 'GBAB', 'Guggenheim Taxable Municipal Managed Duration Trst');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4836, 2, 'GWRE', 'Guidewire Software, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4837, 2, 'HRB', 'H&R Block, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4838, 2, 'FUL', 'H. B. Fuller Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4839, 2, 'HAE', 'Haemonetics Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4840, 2, 'HK', 'Halcon Resources Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4841, 2, 'HK.WS', 'Halcon Resources Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4842, 2, 'HAL', 'Halliburton Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4843, 2, 'HBB', 'Hamilton Beach Brands Holding Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4854, 2, 'HIG.WS', 'Hartford Financial Services Group, Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4856, 2, 'HVT', 'Haverty Furniture Companies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4857, 2, 'HVT.A', 'Haverty Furniture Companies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4858, 2, 'HE', 'Hawaiian Electric Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4861, 2, 'HCA', 'HCA Healthcare, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4862, 2, 'HCI', 'HCI Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4863, 2, 'HCP', 'HCP, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4864, 2, 'HDB', 'HDFC Bank Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4865, 2, 'HR', 'Healthcare Realty Trust Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4866, 2, 'HTA', 'Healthcare Trust of America, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4867, 2, 'HL', 'Hecla Mining Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4869, 2, 'HEI', 'Heico Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4870, 2, 'HEI.A', 'Heico Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4871, 2, 'HLX', 'Helix Energy Solutions Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4872, 2, 'HP', 'Helmerich & Payne, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4873, 2, 'HLF', 'Herbalife Nutrition Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4874, 2, 'HRI', 'Herc Holdings Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4875, 2, 'HCXY', 'Hercules Capital, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4876, 2, 'HCXZ', 'Hercules Capital, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4877, 2, 'HTGC', 'Hercules Capital, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4878, 2, 'HTGX.CL', 'Hercules Capital, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4879, 2, 'HRTG', 'Heritage Insurance Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4880, 2, 'HT', 'Hersha Hospitality Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4884, 2, 'HSY', 'Hershey Company (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4885, 2, 'HTZ', 'Hertz Global Holdings, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4886, 2, 'HES', 'Hess Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4888, 2, 'HESM', 'Hess Midstream Partners LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4889, 2, 'HPE', 'Hewlett Packard Enterprise Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4890, 2, 'HXL', 'Hexcel Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4891, 2, 'HF', 'HFF, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4892, 2, 'HCLP', 'Hi-Crush Partners LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4893, 2, 'PCF', 'High Income Securities Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4894, 2, 'HFRO', 'Highland Floating Rate Opportunities Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4895, 2, 'HPR', 'HighPoint Resources Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4896, 2, 'HIW', 'Highwoods Properties, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4897, 2, 'HIL', 'Hill International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4898, 2, 'HI', 'Hillenbrand Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4899, 2, 'HRC', 'Hill-Rom Holdings Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4900, 2, 'HTH', 'Hilltop Holdings Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4901, 2, 'HGV', 'Hilton Grand Vacations Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4902, 2, 'HLT', 'Hilton Worldwide Holdings Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4903, 2, 'HNI', 'HNI Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4904, 2, 'HMLP', 'Hoegh LNG Partners LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4906, 2, 'HEP', 'Holly Energy Partners, L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4907, 2, 'HFC', 'HollyFrontier Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4908, 2, 'HD', 'Home Depot, Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4909, 2, 'HMC', 'Honda Motor Company, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4910, 2, 'HON', 'Honeywell International Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4911, 2, 'HMN', 'Horace Mann Educators Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4912, 2, 'HZN', 'Horizon Global Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4913, 2, 'HTFA', 'Horizon Technology Finance Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4914, 2, 'HRL', 'Hormel Foods Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4915, 2, 'HOS', 'Hornbeck Offshore Services');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4916, 2, 'HST', 'Host Hotels & Resorts, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4917, 2, 'HLI', 'Houlihan Lokey, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4918, 2, 'HOV', 'Hovnanian Enterprises Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4919, 2, 'HHC', 'Howard Hughes Corporation (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4920, 2, 'HPQ', 'HP Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4921, 2, 'HSBC', 'HSBC Holdings plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4923, 2, 'HMI', 'Huami Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4924, 2, 'HNP', 'Huaneng Power International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4925, 2, 'HUBB', 'Hubbell Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4926, 2, 'HUBS', 'HubSpot, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4927, 2, 'HBM', 'Hudbay Minerals Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4928, 2, 'HUD', 'Hudson Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4929, 2, 'HPP', 'Hudson Pacific Properties, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4930, 2, 'HUM', 'Humana Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4931, 2, 'HCFT', 'Hunt Companies Finance Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4933, 2, 'HII', 'Huntington Ingalls Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4934, 2, 'HUN', 'Huntsman Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4935, 2, 'HUYA', 'HUYA Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4936, 2, 'H', 'Hyatt Hotels Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4937, 2, 'HY', 'Hyster-Yale Materials Handling, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4938, 2, 'IAG', 'Iamgold Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4939, 2, 'IBN', 'ICICI Bank Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4940, 2, 'IDA', 'IDACORP, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4941, 2, 'IEX', 'IDEX Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4942, 2, 'IDT', 'IDT Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4943, 2, 'ITW', 'Illinois Tool Works Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4944, 2, 'IMAX', 'Imax Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4945, 2, 'ICD', 'Independence Contract Drilling, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4946, 2, 'IHC', 'Independence Holding Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4947, 2, 'IRT', 'Independence Realty Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4948, 2, 'IFN', 'India Fund, Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4949, 2, 'IBA', 'Industrias Bachoco, S.A. de C.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4950, 2, 'INFY', 'Infosys Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4951, 2, 'HIFR', 'InfraREIT, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4952, 2, 'ING', 'ING Group, N.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4953, 2, 'ISF', 'ING Group, N.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4954, 2, 'ISG', 'ING Group, N.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4955, 2, 'IR', 'Ingersoll-Rand plc (Ireland)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4956, 2, 'NGVT', 'Ingevity Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4957, 2, 'INGR', 'Ingredion Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4958, 2, 'IIPR', 'Innovative Industrial Properties, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4960, 2, 'IPHI', 'Inphi Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4961, 2, 'INSI', 'Insight Select Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4962, 2, 'NSP', 'Insperity, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4982, 2, 'VBF', 'Invesco Bond Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4983, 2, 'VCV', 'Invesco California Value Municipal Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4984, 2, 'VTA', 'Invesco Credit Opportunities Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4985, 2, 'IHIT', 'Invesco High Income 2023 Target Term Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4986, 2, 'IHTA', 'Invesco High Income 2024 Target Term Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4987, 2, 'VLT', 'Invesco High Income Trust II');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4988, 2, 'IVR', 'INVESCO MORTGAGE CAPITAL INC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4992, 2, 'OIA', 'Invesco Municipal Income Opportunities Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4993, 2, 'VMO', 'Invesco Municipal Opportunity Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4994, 2, 'VKQ', 'Invesco Municipal Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4995, 2, 'VPV', 'Invesco Pennsylvania Value Municipal Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4996, 2, 'IVZ', 'Invesco Plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4997, 2, 'IQI', 'Invesco Quality Municipal Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4998, 2, 'VVR', 'Invesco Senior Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(4999, 2, 'VTN', 'Invesco Trust  for Investment Grade New York Municipal');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5000, 2, 'VGM', 'Invesco Trust for Investment Grade Municipals');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5001, 2, 'IIM', 'Invesco Value Municipal Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5002, 2, 'ITG', 'Investment Technology Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5003, 2, 'IRET', 'Investors Real Estate Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5005, 2, 'NVTA', 'Invitae Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5006, 2, 'INVH', 'Invitation Homes Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5007, 2, 'IO', 'Ion Geophysical Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5008, 2, 'IQV', 'IQVIA Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5009, 2, 'IRM', 'Iron Mountain Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5010, 2, 'IRS', 'IRSA Inversiones Y Representaciones S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5011, 2, 'ICL', 'Israel Chemicals Shs');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5012, 2, 'STAR          ', 'iStar Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5016, 2, 'ITCB', 'Ita? CorpBanca');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5017, 2, 'ITUB', 'Itau Unibanco Banco Holding SA');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5018, 2, 'ITT', 'ITT Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5019, 2, 'IVH', 'Ivy High Income Opportunities Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5020, 2, 'JPM', 'J P Morgan Chase & Co');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5028, 2, 'JAX', 'J. Alexander''s Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5029, 2, 'JILL', 'J. Jill, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5030, 2, 'JCP', 'J.C. Penney Company, Inc. Holding Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5031, 2, 'SJM', 'J.M. Smucker Company (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5032, 2, 'JBL', 'Jabil Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5033, 2, 'JEC', 'Jacobs Engineering Group Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5034, 2, 'JAG', 'Jagged Peak Energy Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5035, 2, 'JHX', 'James Hardie Industries plc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5036, 2, 'JHG', 'Janus Henderson Group plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5037, 2, 'JOF', 'Japan Smaller Capitalization Fund Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5038, 2, 'JBGS', 'JBG SMITH Properties');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5039, 2, 'JEF', 'Jefferies Financial Group Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5040, 2, 'JELD', 'JELD-WEN Holding, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5041, 2, 'JCAP', 'Jernigan Capital, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5043, 2, 'JT', 'Jianpu Technology Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5044, 2, 'JKS', 'JinkoSolar Holding Company Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5045, 2, 'JMP', 'JMP Group LLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5046, 2, 'JMPB', 'JMP Group LLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5047, 2, 'JMPD', 'JMP Group LLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5048, 2, 'JBT', 'John Bean Technologies Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5049, 2, 'BTO', 'John Hancock Financial Opportunities Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5050, 2, 'HEQ', 'John Hancock Hedged Equity & Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5051, 2, 'JHS', 'John Hancock Income Securities Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5052, 2, 'JHI', 'John Hancock Investors Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5053, 2, 'HPF', 'John Hancock Pfd Income Fund II');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5054, 2, 'HPI', 'John Hancock Preferred Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5055, 2, 'HPS', 'John Hancock Preferred Income Fund III');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5056, 2, 'PDT', 'John Hancock Premium Dividend Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5057, 2, 'HTD', 'John Hancock Tax Advantaged Dividend Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5058, 2, 'HTY', 'John Hancock Tax-Advantaged Global Shareholder Yield Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5059, 2, 'JW.A', 'John Wiley & Sons, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5060, 2, 'JW.B', 'John Wiley & Sons, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5061, 2, 'JNJ', 'Johnson & Johnson');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5062, 2, 'JCI', 'Johnson Controls International plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5063, 2, 'JLL', 'Jones Lang LaSalle Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5064, 2, 'JMEI', 'Jumei International Holding Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5065, 2, 'JNPR', 'Juniper Networks, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5066, 2, 'JP', 'Jupai Holdings Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5067, 2, 'JE', 'Just Energy Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5069, 2, 'LRN', 'K12 Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5070, 2, 'KAI', 'Kadant Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5071, 2, 'KDMN', 'Kadmon Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5072, 2, 'KAMN', 'Kaman Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5073, 2, 'KSU', 'Kansas City Southern');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5087, 2, 'KMT', 'Kennametal Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5088, 2, 'KW', 'Kennedy-Wilson Holdings Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5089, 2, 'KEN', 'Kenon Holdings Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5090, 2, 'KDP', 'Keurig Dr Pepper Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5091, 2, 'KEG', 'Key Energy Services, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5092, 2, 'KEY', 'KeyCorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5095, 2, 'KEYS', 'Keysight Technologies Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5096, 2, 'KRC', 'Kilroy Realty Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5097, 2, 'KRP', 'Kimbell Royalty Partners');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5098, 2, 'KMB', 'Kimberly-Clark Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5099, 2, 'KIM', 'Kimco Realty Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5105, 2, 'KMI', 'Kinder Morgan, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5106, 2, 'KFS', 'Kingsway Financial Services, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5107, 2, 'KGC', 'Kinross Gold Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5108, 2, 'KEX', 'Kirby Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5109, 2, 'KL', 'Kirkland Lake Gold Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5110, 2, 'KRG', 'Kite Realty Group Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5111, 2, 'KKR', 'KKR & Co. Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5114, 2, 'KIO', 'KKR Income Opportunities Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5115, 2, 'KREF', 'KKR Real Estate Finance Trust Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5116, 2, 'KNX', 'Knight Transportation, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5117, 2, 'KNL', 'Knoll, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5118, 2, 'KNOP', 'KNOT Offshore Partners LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5119, 2, 'KN', 'Knowles Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5120, 2, 'KSS', 'Kohl''s Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5121, 2, 'PHG', 'Koninklijke Philips N.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5122, 2, 'KOP', 'Koppers Holdings Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5123, 2, 'KEP', 'Korea Electric Power Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5124, 2, 'KF', 'Korea Fund, Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5125, 2, 'KFY', 'Korn/Ferry International');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5126, 2, 'KOS', 'Kosmos Energy Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5127, 2, 'KRA', 'Kraton Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5128, 2, 'KR', 'Kroger Company (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5129, 2, 'KRO', 'Kronos Worldwide Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5130, 2, 'KT', 'KT Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5131, 2, 'LB', 'L Brands, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5132, 2, 'SCX', 'L.S. Starrett Company (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5133, 2, 'LLL', 'L3 Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5134, 2, 'LH', 'Laboratory Corporation of America Holdings');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5135, 2, 'LADR', 'Ladder Capital Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5136, 2, 'LAIX', 'LAIX Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5137, 2, 'LW', 'Lamb Weston Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5138, 2, 'LCI', 'Lannett Co Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5139, 2, 'LPI', 'Laredo Petroleum, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5140, 2, 'LVS', 'Las Vegas Sands Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5141, 2, 'LTM', 'LATAM Airlines Group S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5142, 2, 'LGI', 'Lazard Global Total Return and Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5143, 2, 'LAZ', 'Lazard Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5144, 2, 'LOR', 'Lazard World Dividend & Income Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5145, 2, 'LZB', 'La-Z-Boy Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5146, 2, 'LCII', 'LCI Industries ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5147, 2, 'LEAF', 'Leaf Group Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5148, 2, 'LEA', 'Lear Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5149, 2, 'LEE', 'Lee Enterprises, Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5150, 2, 'LGC', 'Legacy Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5151, 2, 'LGC.U', 'Legacy Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5152, 2, 'LGC.WS', 'Legacy Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5153, 2, 'LM', 'Legg Mason, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5154, 2, 'LMHA', 'Legg Mason, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5155, 2, 'LMHB', 'Legg Mason, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5156, 2, 'LEG', 'Leggett & Platt, Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5157, 2, 'JBK', 'Lehman ABS Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5158, 2, 'KTH', 'Lehman ABS Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5159, 2, 'KTN', 'Lehman ABS Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5160, 2, 'KTP', 'Lehman ABS Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5161, 2, 'LDOS', 'Leidos Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5162, 2, 'LEJU', 'Leju Holdings Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5163, 2, 'LC', 'LendingClub Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5164, 2, 'LEN', 'Lennar Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5165, 2, 'LEN.B', 'Lennar Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5166, 2, 'LII', 'Lennox International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5167, 2, 'LHC', 'Leo Holdings Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5168, 2, 'LHC.U', 'Leo Holdings Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5169, 2, 'LHC.WS', 'Leo Holdings Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5170, 2, 'LXP', 'Lexington Realty Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5172, 2, 'LPL', 'LG Display Co., Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5173, 2, 'USA', 'Liberty All-Star Equity Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5174, 2, 'ASG', 'Liberty All-Star Growth Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5175, 2, 'LBRT', 'Liberty Oilfield Services Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5176, 2, 'LPT', 'Liberty Property Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5177, 2, 'LSI', 'Life Storage, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5178, 2, 'LITB', 'LightInTheBox Holding Co., Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5179, 2, 'LNC', 'Lincoln National Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5180, 2, 'LNC.WS', 'Lincoln National Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5181, 2, 'LIN', 'Linde plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5182, 2, 'LNN', 'Lindsay Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5183, 2, 'LN', 'LINE Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5184, 2, 'LGF.A', 'Lions Gate Entertainment Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5185, 2, 'LGF.B', 'Lions Gate Entertainment Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5186, 2, 'LAD', 'Lithia Motors, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5187, 2, 'LAC', 'Lithium Americas Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5188, 2, 'LYV', 'Live Nation Entertainment, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5189, 2, 'LTHM', 'Livent Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5190, 2, 'RAMP', 'LiveRamp Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5191, 2, 'LYG', 'Lloyds Banking Group Plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5192, 2, 'SCD', 'LMP Capital and Income Fund Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5193, 2, 'LMT', 'Lockheed Martin Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5194, 2, 'L', 'Loews Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5195, 2, 'LOMA', 'Loma Negra Compania Industrial Argentina Sociedad Anonima');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5205, 2, 'LDL', 'Lydall, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5206, 2, 'WLH', 'Lyon William Homes');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5207, 2, 'LYB', 'LyondellBasell Industries NV');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5208, 2, 'MTB', 'M&T Bank Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5211, 2, 'MDC', 'M.D.C. Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5212, 2, 'MHO', 'M/I Homes, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5213, 2, 'MAC', 'Macerich Company (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5214, 2, 'CLI', 'Mack-Cali Realty Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5215, 2, 'MFD', 'Macquarie First Trust Global');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5216, 2, 'MGU', 'Macquarie Global Infrastructure Total Return Fund Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5217, 2, 'MIC', 'Macquarie Infrastructure Corporation ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5218, 2, 'BMA', 'Macro Bank Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5219, 2, 'M', 'Macy''s Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5220, 2, 'MCN', 'Madison Covered Call & Equity Strategy Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5221, 2, 'MMP', 'Magellan Midstream Partners L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5222, 2, 'MGA', 'Magna International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5223, 2, 'MX', 'MagnaChip Semiconductor Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5224, 2, 'MGY', 'Magnolia Oil & Gas Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5225, 2, 'MGY.WS', 'Magnolia Oil & Gas Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5229, 2, 'MHLA', 'Maiden Holdings, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5230, 2, 'MHNC', 'Maiden Holdings, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5231, 2, 'MAIN', 'Main Street Capital Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5232, 2, 'MMD', 'MainStay MacKay DefinedTerm Municipal Opportunitie');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5233, 2, 'MNK', 'Mallinckrodt plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5234, 2, 'MANU', 'Manchester United Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5235, 2, 'MTW', 'Manitowoc Company, Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5236, 2, 'MN', 'Manning & Napier, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5237, 2, 'MAN', 'ManpowerGroup');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5238, 2, 'MFC', 'Manulife Financial Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5239, 2, 'MRO', 'Marathon Oil Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5240, 2, 'MPC', 'Marathon Petroleum Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5241, 2, 'MMI', 'Marcus & Millichap, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5242, 2, 'MCS', 'Marcus Corporation (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5243, 2, 'MPX', 'Marine Products Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5244, 2, 'HZO', 'MarineMax, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5245, 2, 'MKL', 'Markel Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5246, 2, 'VAC', 'Marriot Vacations Worldwide Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5247, 2, 'MMC', 'Marsh & McLennan Companies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5248, 2, 'MLM', 'Martin Marietta Materials, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5249, 2, 'MAS', 'Masco Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5250, 2, 'DOOR', 'Masonite International Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5251, 2, 'MTZ', 'MasTec, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5252, 2, 'MA', 'Mastercard Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5253, 2, 'MTDR', 'Matador Resources Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5254, 2, 'MTRN', 'Materion Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5255, 2, 'MATX', 'Matson, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5256, 2, 'MLP', 'Maui Land & Pineapple Company, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5257, 2, 'MAXR', 'Maxar Technologies Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5258, 2, 'MMS', 'Maximus, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5259, 2, 'MXL', 'MaxLinear, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5260, 2, 'MBI', 'MBIA, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5261, 2, 'MKC', 'McCormick & Company, Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5262, 2, 'MKC.V', 'McCormick & Company, Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5263, 2, 'MDR', 'McDermott International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5264, 2, 'MCD', 'McDonald''s Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5265, 2, 'MUX', 'McEwen Mining Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5266, 2, 'MCK', 'McKesson Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5267, 2, 'MDU', 'MDU Resources Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5268, 2, 'MTL', 'Mechel PAO');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5270, 2, 'MRT', 'MedEquities Realty Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5271, 2, 'MPW', 'Medical Properties Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5272, 2, 'MED', 'MEDIFAST INC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5273, 2, 'MCC', 'Medley Capital Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5274, 2, 'MCV', 'Medley Capital Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5275, 2, 'MCX', 'Medley Capital Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5276, 2, 'MDLQ', 'Medley LLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5277, 2, 'MDLX', 'Medley LLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5278, 2, 'MDLY', 'Medley Management Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5279, 2, 'MD', 'Mednax, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5280, 2, 'MDT', 'Medtronic plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5281, 2, 'MFAC', 'Megalith Financial Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5282, 2, 'MFAC.U', 'Megalith Financial Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5283, 2, 'MFAC.WS', 'Megalith Financial Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5284, 2, 'MRK', 'Merck & Company, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5285, 2, 'MCY', 'Mercury General Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5286, 2, 'MDP', 'Meredith Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5287, 2, 'MTH', 'Meritage Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5288, 2, 'MTOR', 'Meritor, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5290, 2, 'PIY', 'Merrill Lynch Depositor, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5291, 2, 'MTR', 'Mesa Royalty Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5292, 2, 'MSB', 'Mesabi Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5293, 2, 'MEI', 'Methode Electronics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5294, 2, 'MET', 'MetLife, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5297, 2, 'MCB', 'Metropolitan Bank Holding Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5298, 2, 'MTD', 'Mettler-Toledo International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5299, 2, 'MXE', 'Mexico Equity and Income Fund, Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5300, 2, 'MXF', 'Mexico Fund, Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5301, 2, 'MFA', 'MFA Financial, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5303, 2, 'MFO', 'MFA Financial, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5304, 2, 'MFCB', 'MFC Bancorp Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5305, 2, 'MCR', 'MFS Charter Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5306, 2, 'MGF', 'MFS Government Markets Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5307, 2, 'MIN', 'MFS Intermediate Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5308, 2, 'MMT', 'MFS Multimarket Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5309, 2, 'MFM', 'MFS Municipal Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5310, 2, 'MFV', 'MFS Special Value Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5311, 2, 'MTG', 'MGIC Investment Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5312, 2, 'MGP', 'MGM Growth Properties LLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5313, 2, 'MGM', 'MGM Resorts International');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5314, 2, 'KORS', 'Michael Kors Holdings Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5330, 2, 'MOD', 'Modine Manufacturing Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5331, 2, 'MC', 'Moelis & Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5332, 2, 'MOGU', 'MOGU Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5333, 2, 'MHK', 'Mohawk Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5334, 2, 'MOH', 'Molina Healthcare Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5335, 2, 'TAP', 'Molson Coors Brewing  Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5336, 2, 'TAP.A', 'Molson Coors Brewing  Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5337, 2, 'MNR', 'Monmouth Real Estate Investment Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5339, 2, 'MCO', 'Moody''s Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5340, 2, 'MOG.A', 'Moog Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5341, 2, 'MOG.B', 'Moog Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5342, 2, 'MS', 'Morgan Stanley');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5349, 2, 'APF', 'Morgan Stanley Asia-Pacific Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5350, 2, 'CAF', 'Morgan Stanley China A Share Fund Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5351, 2, 'MSD', 'Morgan Stanley Emerging Markets Debt Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5352, 2, 'EDD', 'Morgan Stanley Emerging Markets Domestic Debt Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5353, 2, 'MSF', 'Morgan Stanley Emerging Markets Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5354, 2, 'IIF', 'Morgan Stanley India Investment Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5355, 2, 'MOSC', 'Mosaic Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5356, 2, 'MOSC.U', 'Mosaic Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5357, 2, 'MOSC.WS', 'Mosaic Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5358, 2, 'MOS', 'Mosaic Company (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5359, 2, 'MSI', 'Motorola Solutions, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5360, 2, 'MOV', 'Movado Group Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5361, 2, 'MPLX', 'MPLX LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5362, 2, 'MRC', 'MRC Global Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5363, 2, 'HJV', 'MS Structured Asset Corp Saturns GE Cap Corp Series 2002-14');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5364, 2, 'MSA', 'MSA Safety Incorporporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5365, 2, 'MSM', 'MSC Industrial Direct Company, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5366, 2, 'MSCI', 'MSCI Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5367, 2, 'MSGN', 'MSG Networks Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5368, 2, 'MLI', 'Mueller Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5369, 2, 'MWA', 'Mueller Water Products Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5370, 2, 'MVF', 'MuniVest Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5371, 2, 'MZA', 'MuniYield Arizona Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5372, 2, 'MUR', 'Murphy Oil Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5373, 2, 'MUSA', 'Murphy USA Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5374, 2, 'MVO', 'MV Oil Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5375, 2, 'MVC', 'MVC Capital, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5376, 2, 'MVCD', 'MVC Capital, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5377, 2, 'MYE', 'Myers Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5378, 2, 'MYOV', 'Myovant Sciences Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5379, 2, 'NBR', 'Nabors Industries Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5381, 2, 'NC', 'NACCO Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5382, 2, 'NTP', 'Nam Tai Property Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5383, 2, 'NTEST', 'NASDAQ TEST STOCK');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5384, 2, 'NTEST.A', 'NASDAQ TEST STOCK');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5385, 2, 'NTEST.B', 'NASDAQ TEST STOCK');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5386, 2, 'NTEST.C', 'NASDAQ TEST STOCK');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5387, 2, 'NBHC', 'National Bank Holdings Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5388, 2, 'NFG', 'National Fuel Gas Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5389, 2, 'NGG', 'National Grid Transco, PLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5390, 2, 'NHI', 'National Health Investors, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5391, 2, 'NOV', 'National Oilwell Varco, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5392, 2, 'NPK', 'National Presto Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5393, 2, 'NNN', 'National Retail Properties');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5396, 2, 'SID', 'National Steel Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5397, 2, 'NSA', 'National Storage Affiliates Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5399, 2, 'NGS', 'Natural Gas Services Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5400, 2, 'NGVC', 'Natural Grocers by Vitamin Cottage, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5401, 2, 'NRP', 'Natural Resource Partners LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5402, 2, 'NTZ', 'Natuzzi, S.p.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5403, 2, 'NLS', 'Nautilus Group, Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5404, 2, 'NCI', 'Navigant Consulting, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5405, 2, 'NVGS', 'Navigator Holdings Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5406, 2, 'NNA', 'Navios Maritime Acquisition Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5407, 2, 'NM', 'Navios Maritime Holdings Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5410, 2, 'NMM', 'Navios Maritime Partners LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5411, 2, 'NAV', 'Navistar International Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5413, 2, 'NCS', 'NCI Building Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5414, 2, 'NCR', 'NCR Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5415, 2, 'NP', 'Neenah, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5416, 2, 'NNI', 'Nelnet, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5417, 2, 'NPTN', 'NeoPhotonics Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5418, 2, 'NETS', 'Netshoes (Cayman) Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5419, 2, 'NVRO', 'Nevro Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5420, 2, 'HYB', 'New America High Income Fund, Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5421, 2, 'NFC', 'New Frontier Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5422, 2, 'NFC.U', 'New Frontier Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5423, 2, 'NFC.WS', 'New Frontier Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5424, 2, 'GF', 'New Germany Fund, Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5425, 2, 'NWHM', 'New Home Company Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5426, 2, 'IRL', 'New Ireland Fund, Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5427, 2, 'NEWM', 'New Media Investment Group Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5428, 2, 'NMFC', 'New Mountain Finance Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5429, 2, 'NMFX', 'New Mountain Finance Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5430, 2, 'EDU', 'New Oriental Education & Technology Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5444, 2, 'NXRT', 'NexPoint Residential Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5445, 2, 'NHF', 'NexPoint Strategic Opportunities Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5446, 2, 'NEP', 'NextEra Energy Partners, LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5447, 2, 'NEE', 'NextEra Energy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5452, 2, 'NGL', 'NGL ENERGY PARTNERS LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5456, 2, 'NLSN', 'Nielsen N.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5457, 2, 'NKE', 'Nike, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5458, 2, 'NINE', 'Nine Energy Service, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5459, 2, 'NIO', 'NIO Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5460, 2, 'NI', 'NiSource, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5461, 2, 'NL', 'NL Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5462, 2, 'NOAH', 'Noah Holdings Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5463, 2, 'NE', 'Noble Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5464, 2, 'NBL', 'Noble Energy Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5465, 2, 'NBLX', 'Noble Midstream Partners LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5466, 2, 'NOK', 'Nokia Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5467, 2, 'NOMD', 'Nomad Foods Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5468, 2, 'NMR', 'Nomura Holdings Inc ADR');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5469, 2, 'OSB', 'Norbord Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5470, 2, 'NAO', 'Nordic American Offshore Ltd');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5471, 2, 'NAT', 'Nordic American Tankers Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5472, 2, 'JWN', 'Nordstrom, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5473, 2, 'NSC', 'Norfolk Souther Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5474, 2, 'NOA', 'North American Construction Group Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5475, 2, 'NRT', 'North European Oil Royality Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5476, 2, 'NOC', 'Northrop Grumman Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5477, 2, 'NRE', 'NorthStar Realty Europe Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5478, 2, 'NWN', 'Northwest Natural Holding Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5479, 2, 'NWE', 'NorthWestern Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5480, 2, 'NCLH', 'Norwegian Cruise Line Holdings Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5481, 2, 'NVS', 'Novartis AG');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5482, 2, 'NVO', 'Novo Nordisk A/S');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5483, 2, 'DNOW', 'NOW Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5484, 2, 'NRG', 'NRG Energy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5485, 2, 'NUS', 'Nu Skin Enterprises, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5486, 2, 'NUE', 'Nucor Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5487, 2, 'NS', 'Nustar Energy L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5491, 2, 'NSS', 'NuStar Logistics, L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5492, 2, 'NTR', 'Nutrien Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5493, 2, 'JMLP', 'Nuveen All Cap Energy MLP Opportunities Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5494, 2, 'NVG', 'Nuveen AMT-Free Municipal Credit Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5495, 2, 'NUV', 'Nuveen AMT-Free Municipal Value Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5496, 2, 'NUW', 'Nuveen AMT-Free Municipal Value Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5497, 2, 'NEA', 'Nuveen AMT-Free Quality Municipal Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5498, 2, 'NAZ', 'Nuveen Arizona Quality Municipal Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5499, 2, 'NKX', 'Nuveen California AMT-Free Quality Municipal Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5500, 2, 'NCB', 'Nuveen California Municipal Value Fund 2');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5501, 2, 'NCA', 'Nuveen California Municipal Value Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5502, 2, 'NAC', 'Nuveen California Quality Municipal Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5503, 2, 'NTC', 'Nuveen Connecticut Quality Municipal Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5504, 2, 'JCE', 'Nuveen Core Equity Alpha Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5505, 2, 'JCO', 'Nuveen Credit Opportunities 2022 Target Term Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5506, 2, 'JQC', 'Nuveen Credit Strategies Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5507, 2, 'JDD', 'Nuveen Diversified Dividend and Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5508, 2, 'DIAX', 'Nuveen Dow 30SM Dynamic Overwrite Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5509, 2, 'JEMD', 'Nuveen Emerging Markets Debt 2022 Target Term Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5510, 2, 'JMF', 'Nuveen Energy MLP Total Return Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5511, 2, 'NEV', 'Nuveen Enhanced Municipal Value Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5512, 2, 'JFR', 'Nuveen Floating Rate Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5513, 2, 'JRO', 'Nuveen Floating Rate Income Opportuntiy Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5514, 2, 'NKG', 'Nuveen Georgia Quality Municipal Income Fund ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5515, 2, 'JGH', 'Nuveen Global High Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5516, 2, 'JHY', 'Nuveen High Income 2020 Target Term Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5517, 2, 'JHAA', 'Nuveen High Income 2023 Target Term Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5518, 2, 'JHD', 'Nuveen High Income December 2019 Target Term Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5519, 2, 'JHB', 'Nuveen High Income November 2021 Target Term Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5520, 2, 'NXC', 'Nuveen Insured California Select Tax-Free Income Portfolio');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5521, 2, 'NXN', 'Nuveen Insured New York Select Tax-Free Income Portfolio');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5522, 2, 'NID', 'Nuveen Intermediate Duration Municipal Term Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5523, 2, 'NMY', 'Nuveen Maryland Quality Municipal Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5524, 2, 'NMT', 'Nuveen Massachusetts Municipal Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5525, 2, 'NUM', 'Nuveen Michigan Quality Municipal Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5526, 2, 'NMS', 'Nuveen Minnesota Quality Municipal Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5527, 2, 'NOM', 'Nuveen Missouri Quality Municipal Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5528, 2, 'JLS', 'Nuveen Mortgage Opportunity Term Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5529, 2, 'JMM', 'Nuveen Multi-Market Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5530, 2, 'NHA', 'Nuveen Municipal 2021 Target Term Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5531, 2, 'NZF', 'Nuveen Municipal Credit Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5532, 2, 'NMZ', 'Nuveen Municipal High Income Opportunity Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5533, 2, 'NMI', 'Nuveen Municipal Income Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5534, 2, 'NJV', 'Nuveen New Jersey Municipal Value Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5535, 2, 'NXJ', 'Nuveen New Jersey Quality Municipal Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5536, 2, 'NRK', 'Nuveen New York AMT-Free Quality Municipal');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5537, 2, 'NYV', 'Nuveen New York Municipal Value Fund 2');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5548, 2, 'NAD', 'Nuveen Quality Municipal Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5549, 2, 'JRI', 'Nuveen Real Asset Income and Growth Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5550, 2, 'JRS', 'Nuveen Real Estate Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5551, 2, 'BXMX', 'Nuveen S&P 500 Buy-Write Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5552, 2, 'SPXX', 'Nuveen S&P 500 Dynamic Overwrite Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5553, 2, 'NIM', 'Nuveen Select Maturities Municipal Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5554, 2, 'NXP', 'Nuveen Select Tax Free Income Portfolio');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5555, 2, 'NXQ', 'Nuveen Select Tax Free Income Portfolio II');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5556, 2, 'NXR', 'Nuveen Select Tax Free Income Portfolio III');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5557, 2, 'NSL', 'Nuveen Senior Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5558, 2, 'JSD', 'Nuveen Short Duration Credit Opportunities Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5559, 2, 'NBB', 'Nuveen Taxable Municipal Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5560, 2, 'JTD', 'Nuveen Tax-Advantaged Dividend Growth Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5561, 2, 'JTA', 'Nuveen Tax-Advantaged Total Return Strategy Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5562, 2, 'NTX', 'Nuveen Texas Quality Municipal Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5563, 2, 'NPV', 'Nuveen Virginia Quality Municipal Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5564, 2, 'NIQ', 'Nuveenn Intermediate Duration Quality Municipal Term Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5565, 2, 'JMT', 'Nuven Mortgage Opportunity Term Fund 2');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5566, 2, 'NVT', 'nVent Electric plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5567, 2, 'NVR', 'NVR, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5568, 2, 'OAK', 'Oaktree Capital Group, LLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5571, 2, 'OSLE', 'Oaktree Specialty Lending Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5572, 2, 'OMP', 'Oasis Midstream Partners LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5573, 2, 'OAS', 'Oasis Petroleum Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5574, 2, 'OBE', 'Obsidian Energy Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5575, 2, 'OXY', 'Occidental Petroleum Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5576, 2, 'OII', 'Oceaneering International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5577, 2, 'OZM', 'Och-Ziff Capital Management Group LLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5578, 2, 'OCN', 'Ocwen Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5579, 2, 'OFG', 'OFG Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5583, 2, 'OGE', 'OGE Energy Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5584, 2, 'OIBR.C', 'Oi S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5585, 2, 'OIS', 'Oil States International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5586, 2, 'ODC', 'Oil-Dri Corporation Of America');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5587, 2, 'ORI', 'Old Republic International Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5588, 2, 'OLN', 'Olin Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5589, 2, 'OHI', 'Omega Healthcare Investors, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5590, 2, 'OMC', 'Omnicom Group Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5591, 2, 'OMN', 'OMNOVA Solutions Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5592, 2, 'ONDK', 'On Deck Capital, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5593, 2, 'OGS', 'ONE Gas, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5594, 2, 'OLP', 'One Liberty Properties, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5595, 2, 'OMAD', 'One Madison Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5596, 2, 'OMAD.U', 'One Madison Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5597, 2, 'OMAD.WS', 'One Madison Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5598, 2, 'OMF', 'OneMain Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5599, 2, 'OKE', 'ONEOK, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5600, 2, 'ONE', 'OneSmart International Education Group Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5601, 2, 'OOMA', 'Ooma, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5602, 2, 'OPY', 'Oppenheimer Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5603, 2, 'ORCL', 'Oracle Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5604, 2, 'ORAN', 'Orange');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5605, 2, 'ORC', 'Orchid Island Capital, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5606, 2, 'OEC', 'Orion Engineered Carbons S.A');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5607, 2, 'ORN', 'Orion Group Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5608, 2, 'IX', 'Orix Corp Ads');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5609, 2, 'ORA', 'Ormat Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5610, 2, 'OSK', 'Oshkosh Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5611, 2, 'OR', 'Osisko Gold Royalties Ltd');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5612, 2, 'OUT', 'OUTFRONT Media Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5613, 2, 'OSG', 'Overseas Shipholding Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5614, 2, 'OMI', 'Owens & Minor, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5615, 2, 'OC', 'Owens Corning Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5616, 2, 'OI', 'Owens-Illinois, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5617, 2, 'OXM', 'Oxford Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5618, 2, 'ROYT', 'Pacific Coast Oil Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5619, 2, 'PACD', 'Pacific Drilling S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5620, 2, 'PCG', 'Pacific Gas & Electric Co.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5621, 2, 'PKG', 'Packaging Corporation of America');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5622, 2, 'PAGS', 'PagSeguro Digital Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5623, 2, 'PANW', 'Palo Alto Networks, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5624, 2, 'PAM', 'Pampa Energia S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5625, 2, 'P', 'Pandora Media, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5626, 2, 'PHX', 'Panhandle Royalty Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5627, 2, 'PARR', 'Par Pacific Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5628, 2, 'PAR', 'PAR Technology Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5629, 2, 'PGRE', 'Paramount Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5630, 2, 'PKE', 'Park Electrochemical Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5631, 2, 'PK', 'Park Hotels & Resorts Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5632, 2, 'PH', 'Parker-Hannifin Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5633, 2, 'PE', 'Parsley Energy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5638, 2, 'PRTY', 'Party City Holdco Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5639, 2, 'PAYC', 'Paycom Software, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5640, 2, 'PBF', 'PBF Energy Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5641, 2, 'PBFX', 'PBF Logistics LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5642, 2, 'BTU', 'Peabody Energy Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5643, 2, 'PSO', 'Pearson, Plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5644, 2, 'PEB', 'Pebblebrook Hotel Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5649, 2, 'PBA', 'Pembina Pipeline Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5650, 2, 'PEI', 'Pennsylvania Real Estate Investment Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5668, 2, 'PTR', 'PetroChina Company Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5669, 2, 'PBR', 'Petroleo Brasileiro S.A.- Petrobras');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5670, 2, 'PBR.A', 'Petroleo Brasileiro S.A.- Petrobras');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5671, 2, 'PFE', 'Pfizer, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5672, 2, 'GHY', 'PGIM Global Short Duration High Yield Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5673, 2, 'ISD', 'PGIM Short Duration High Yield Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5674, 2, 'PGTI', 'PGT Innovations, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5675, 2, 'PM', 'Philip Morris International Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5676, 2, 'PSX', 'Phillips 66');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5677, 2, 'PSXP', 'Phillips 66 Partners LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5678, 2, 'FENG', 'Phoenix New Media Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5679, 2, 'DOC', 'Physicians Realty Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5680, 2, 'PDM', 'Piedmont Office Realty Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5681, 2, 'PIR', 'Pier 1 Imports, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5682, 2, 'PCQ', 'PIMCO California Municipal Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5683, 2, 'PCK', 'Pimco California Municipal Income Fund II');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5684, 2, 'PZC', 'PIMCO California Municipal Income Fund III');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5685, 2, 'PCM', 'PIMCO Commercial Mortgage Securities Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5686, 2, 'PTY', 'Pimco Corporate & Income Opportunity Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5687, 2, 'PCN', 'Pimco Corporate & Income Stategy Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5688, 2, 'PCI', 'PIMCO Dynamic Credit and Mortgage Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5689, 2, 'PDI', 'PIMCO Dynamic Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5690, 2, 'PGP', 'Pimco Global Stocksplus & Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5691, 2, 'PHK', 'Pimco High Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5692, 2, 'PKO', 'Pimco Income Opportunity Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5693, 2, 'PFL', 'PIMCO Income Strategy Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5694, 2, 'PFN', 'PIMCO Income Strategy Fund II');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5695, 2, 'PMF', 'PIMCO Municipal Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5696, 2, 'PML', 'Pimco Municipal Income Fund II');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5697, 2, 'PMX', 'PIMCO Municipal Income Fund III');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5698, 2, 'PNF', 'PIMCO New York Municipal Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5699, 2, 'PNI', 'Pimco New York Municipal Income Fund II');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5700, 2, 'PYN', 'PIMCO New York Municipal Income Fund III');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5701, 2, 'RCS', 'PIMCO Strategic Income Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5702, 2, 'PNW', 'Pinnacle West Capital Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5703, 2, 'PES', 'Pioneer Energy Services Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5704, 2, 'PHD', 'Pioneer Floating Rate Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5705, 2, 'PHT', 'Pioneer High Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5706, 2, 'MAV', 'Pioneer Municipal High Income Advantage Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5707, 2, 'MHI', 'Pioneer Municipal High Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5708, 2, 'PXD', 'Pioneer Natural Resources Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5709, 2, 'PJC', 'Piper Jaffray Companies');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5710, 2, 'PBI', 'Pitney Bowes Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5712, 2, 'PVTL', 'Pivotal Software, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5713, 2, 'PJT', 'PJT Partners Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5714, 2, 'PAA', 'Plains All American Pipeline, L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5715, 2, 'PAGP', 'Plains Group Holdings, L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5716, 2, 'PLNT', 'Planet Fitness, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5717, 2, 'PLT', 'Plantronics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5718, 2, 'PAH', 'Platform Specialty Products Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5719, 2, 'AGS', 'PlayAGS, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5720, 2, 'PHI', 'PLDT Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5721, 2, 'PNC', 'PNC Financial Services Group, Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5722, 2, 'PNC.WS', 'PNC Financial Services Group, Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5725, 2, 'PNM', 'PNM Resources, Inc. (Holding Co.)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5726, 2, 'PII', 'Polaris Industries Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5727, 2, 'POL', 'PolyOne Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5728, 2, 'POR', 'Portland General Electric Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5729, 2, 'PKX', 'POSCO');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5730, 2, 'POST', 'Post Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5731, 2, 'PPDF', 'PPDAI Group Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5732, 2, 'PPG', 'PPG Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5733, 2, 'PPX', 'PPL Capital Funding, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5734, 2, 'PPL', 'PPL Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5735, 2, 'PYS', 'PPlus Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5736, 2, 'PYT', 'PPlus Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5737, 2, 'PQG', 'PQ Group Holdings Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5738, 2, 'PDS', 'Precision Drilling Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5739, 2, 'APTS', 'Preferred Apartment Communities, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5740, 2, 'PBH', 'Prestige Consumer Healthcare Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5741, 2, 'PVG', 'Pretium Resources, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5742, 2, 'PRI', 'Primerica, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5743, 2, 'PGZ', 'Principal Real Estate Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5746, 2, 'PRA', 'ProAssurance Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5747, 2, 'PG', 'Procter & Gamble Company (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5748, 2, 'PGR', 'Progressive Corporation (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5749, 2, 'PLD', 'Prologis, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5750, 2, 'PUMP', 'ProPetro Holding Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5751, 2, 'PRO', 'PROS Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5752, 2, 'PBB', 'Prospect Capital Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5753, 2, 'PBC', 'Prospect Capital Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5754, 2, 'PBY', 'Prospect Capital Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5755, 2, 'PB', 'Prosperity Bancshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5756, 2, 'PRLB', 'Proto Labs, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5757, 2, 'PFS', 'Provident Financial Services, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5758, 2, 'PJH', 'Prudential Financial, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5759, 2, 'PRH', 'Prudential Financial, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5760, 2, 'PRS', 'Prudential Financial, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5761, 2, 'PRU', 'Prudential Financial, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5762, 2, 'PUK', 'Prudential Public Limited Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5813, 2, 'QVCD', 'QVC, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5814, 2, 'CTAA', 'Qwest Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5815, 2, 'CTBB', 'Qwest Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5816, 2, 'CTDD', 'Qwest Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5817, 2, 'CTV', 'Qwest Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5818, 2, 'CTY', 'Qwest Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5819, 2, 'CTZ', 'Qwest Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5820, 2, 'RRD', 'R.R. Donnelley & Sons Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5821, 2, 'RMED', 'Ra Medical Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5822, 2, 'RDN', 'Radian Group Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5823, 2, 'RL', 'Ralph Lauren Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5824, 2, 'RRC', 'Range Resources Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5825, 2, 'RNGR', 'Ranger Energy Services, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5826, 2, 'RJF', 'Raymond James Financial, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5827, 2, 'RYAM', 'Rayonier Advanced Materials Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5829, 2, 'RYN', 'Rayonier Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5830, 2, 'RTN', 'Raytheon Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5831, 2, 'RMAX', 'RE/MAX Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5832, 2, 'RC', 'Ready Capital Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5833, 2, 'RCA', 'Ready Capital Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5834, 2, 'RCP', 'Ready Capital Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5835, 2, 'RLGY', 'Realogy Holdings Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5836, 2, 'O', 'Realty Income Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5837, 2, 'RHT', 'Red Hat, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5838, 2, 'RLH', 'Red Lion Hotels Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5839, 2, 'RWT', 'Redwood Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5840, 2, 'RBC', 'Regal Beloit Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5841, 2, 'RWGE', 'Regalwood Global Energy Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5842, 2, 'RWGE.U', 'Regalwood Global Energy Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5843, 2, 'RWGE.WS', 'Regalwood Global Energy Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5844, 2, 'RM', 'Regional Management Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5845, 2, 'RF', 'Regions Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5848, 2, 'RGS', 'Regis Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5849, 2, 'RGA', 'Reinsurance Group of America, Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5850, 2, 'RES', 'RPC, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5851, 2, 'RZA', 'Reinsurance Group of America, Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5852, 2, 'RZB', 'Reinsurance Group of America, Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5853, 2, 'RS', 'Reliance Steel & Aluminum Co.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5854, 2, 'RELX', 'RELX PLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5855, 2, 'RNR', 'RenaissanceRe Holdings Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5859, 2, 'SOL', 'Renesola Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5860, 2, 'RENN', 'Renren Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5861, 2, 'RSG', 'Republic Services, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5862, 2, 'REZI', 'Resideo Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5863, 2, 'RMD', 'ResMed Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5864, 2, 'REN           ', 'Resolute Energy Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5865, 2, 'RFP', 'Resolute Forest Products Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5866, 2, 'QSR', 'Restaurant Brands International Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5867, 2, 'RPAI', 'Retail Properties of America, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5868, 2, 'RVI', 'Retail Value Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5869, 2, 'REVG', 'REV Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5870, 2, 'REV', 'Revlon, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5871, 2, 'REX', 'REX American Resources Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5872, 2, 'REXR', 'Rexford Industrial Realty, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5875, 2, 'RXN', 'Rexnord Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5877, 2, 'RH', 'RH');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5878, 2, 'RNG', 'Ringcentral, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5879, 2, 'RIO', 'Rio Tinto Plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5880, 2, 'RBA', 'Ritchie Bros. Auctioneers Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5881, 2, 'RAD', 'Rite Aid Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6063, 2, 'TRK', 'Speedway Motorsports, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5883, 2, 'RMI', 'RiverNorth Opportunistic Municipal Income Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5884, 2, 'RIV', 'RiverNorth Opportunities Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5903, 2, 'RCL', 'Royal Caribbean Cruises Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5904, 2, 'RDS.A', 'Royal Dutch Shell PLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5905, 2, 'RDS.B', 'Royal Dutch Shell PLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5906, 2, 'RGT', 'Royce Global Value Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5907, 2, 'RMT', 'Royce Micro-Cap Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5908, 2, 'RVT', 'Royce Value Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5909, 2, 'RPM', 'RPM International Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5910, 2, 'RPT', 'RPT Realty');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5912, 2, 'RTW', 'RTW Retailwinds, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5913, 2, 'RTEC', 'Rudolph Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5914, 2, 'RYB', 'RYB Education, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5915, 2, 'R', 'Ryder System, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5916, 2, 'RYI', 'Ryerson Holding Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5917, 2, 'RHP', 'Ryman Hospitality Properties, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5918, 2, 'SPGI', 'S&P Global Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5919, 2, 'SBR', 'Sabine Royalty Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5920, 2, 'SB', 'Safe Bulkers, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5923, 2, 'SFE', 'Safeguard Scientifics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5924, 2, 'SAFE', 'Safety, Income & Growth Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5925, 2, 'SAIL', 'SailPoint Technologies Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5926, 2, 'CRM', 'Salesforce.com Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5927, 2, 'SMM', 'Salient Midstream & MLP Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5928, 2, 'SBH', 'Sally Beauty Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5929, 2, 'SJT', 'San Juan Basin Royalty Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5930, 2, 'SN', 'Sanchez Energy Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5931, 2, 'SD', 'SandRidge Energy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5932, 2, 'SDT', 'SandRidge Mississippian Trust I');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5933, 2, 'SDR', 'SandRidge Mississippian Trust II');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5934, 2, 'PER', 'SandRidge Permian Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5935, 2, 'SNY', 'Sanofi');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5936, 2, 'SC', 'Santander Consumer USA Holdings Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5937, 2, 'SAP', 'SAP SE');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5938, 2, 'SAB', 'Saratoga Investment Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5939, 2, 'SAF', 'Saratoga Investment Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5940, 2, 'SAR', 'Saratoga Investment Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5941, 2, 'SSL', 'Sasol Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5942, 2, 'BFS', 'Saul Centers, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5945, 2, 'SCG', 'Scana Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5946, 2, 'SLB', 'Schlumberger N.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5947, 2, 'SNDR', 'Schneider National, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5948, 2, 'SWM', 'Schweitzer-Mauduit International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5949, 2, 'SAIC', 'SCIENCE APPLICATIONS INTERNATIONAL CORPORATION');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5950, 2, 'SALT', 'Scorpio Bulkers Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5951, 2, 'SLTB', 'Scorpio Bulkers Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5952, 2, 'SBBC', 'Scorpio Tankers Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5953, 2, 'SBNA', 'Scorpio Tankers Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5954, 2, 'STNG', 'Scorpio Tankers Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5955, 2, 'SMG', 'Scotts Miracle-Gro Company (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5956, 2, 'KTF', 'Scudder Municiple Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5957, 2, 'KSM', 'Scudder Strategic Municiple Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5958, 2, 'SE', 'Sea Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5959, 2, 'SA', 'Seabridge Gold, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5960, 2, 'CKH', 'SEACOR Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5961, 2, 'SMHI', 'SEACOR Marine Holdings Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5962, 2, 'SDRL', 'Seadrill Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5963, 2, 'SDLP', 'Seadrill Partners LLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5964, 2, 'SEE', 'Sealed Air Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5965, 2, 'SSW', 'Seaspan Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5971, 2, 'SSWA', 'Seaspan Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5972, 2, 'SSWN', 'Seaspan Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5973, 2, 'SEAS', 'SeaWorld Entertainment, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5974, 2, 'JBN', 'Select Asset Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5975, 2, 'JBR', 'Select Asset Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5976, 2, 'WTTR', 'Select Energy Services, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5977, 2, 'SEM', 'Select Medical Holdings Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5978, 2, 'SGZA', 'Selective Insurance Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5979, 2, 'SEMG', 'Semgroup Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5980, 2, 'SMI', 'Semiconductor  Manufacturing International Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5981, 2, 'SRE', 'Sempra Energy');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5984, 2, 'SEND', 'SendGrid, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5985, 2, 'ST', 'Sensata Technologies Holding plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5986, 2, 'SXT', 'Sensient Technologies Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5987, 2, 'SQNS', 'Sequans Communications S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5988, 2, 'SRG', 'Seritage Growth Properties');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5990, 2, 'SCI', 'Service Corporation International');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5991, 2, 'SERV', 'ServiceMaster Global Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5992, 2, 'NOW', 'ServiceNow, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5993, 2, 'SHAK', 'Shake Shack, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5994, 2, 'SJR', 'Shaw Communications Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5995, 2, 'SHLX', 'Shell Midstream Partners, L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5996, 2, 'SHW', 'Sherwin-Williams Company (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5997, 2, 'SHG', 'Shinhan Financial Group Co Ltd');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5998, 2, 'SFL', 'Ship Finance International Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(5999, 2, 'SHOP', 'Shopify Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6000, 2, 'SSTK', 'Shutterstock, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6001, 2, 'SBGL', 'Sibanye Gold Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6002, 2, 'SIG', 'Signet Jewelers Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6003, 2, 'SBOW', 'SilverBow Resorces, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6030, 2, 'IPOA.WS', 'Social Capital Hedosophia Holdings Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6031, 2, 'SQM', 'Sociedad Quimica y Minera S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6033, 2, 'SOI', 'Solaris Oilfield Infrastructure, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6034, 2, 'SWI', 'SolarWinds Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6035, 2, 'SAH', 'Sonic Automotive, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6036, 2, 'SON', 'Sonoco Products Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6037, 2, 'SNE', 'Sony Corp Ord');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6038, 2, 'BID', 'Sotheby''s');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6039, 2, 'SOR', 'Source Capital, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6040, 2, 'SJI', 'South Jersey Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6041, 2, 'SJIU', 'South Jersey Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6042, 2, 'SXE', 'Southcross Energy Partners, L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6048, 2, 'SO', 'Southern Company (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6049, 2, 'SOJA', 'Southern Company (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6050, 2, 'SOJB', 'Southern Company (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6051, 2, 'SOJC', 'Southern Company (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6052, 2, 'SCCO', 'Southern Copper Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6053, 2, 'LUV', 'Southwest Airlines Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6054, 2, 'SWX', 'Southwest Gas Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6055, 2, 'SWN', 'Southwestern Energy Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6056, 2, 'SPAQ', 'Spartan Energy Acquisition Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6057, 2, 'SPAQ.U', 'Spartan Energy Acquisition Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6058, 2, 'SPAQ.WS', 'Spartan Energy Acquisition Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6059, 2, 'SPA', 'Sparton Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6060, 2, 'SPE', 'Special Opportunities Fund Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6062, 2, 'SPB           ', 'Spectrum Brands Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6064, 2, 'SR', 'Spire Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6065, 2, 'SPR', 'Spirit Aerosystems Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6066, 2, 'SAVE', 'Spirit Airlines, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6067, 2, 'SMTA', 'Spirit MTA REIT');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6068, 2, 'SRC', 'Spirit Realty Capital, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6070, 2, 'SPOT', 'Spotify Technology S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6071, 2, 'SRLP', 'Sprague Resources LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6072, 2, 'S', 'Sprint Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6073, 2, 'SPXC', 'SPX Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6074, 2, 'FLOW', 'SPX FLOW, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6075, 2, 'SQ', 'Square, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6076, 2, 'JOE', 'St. Joe Company (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6077, 2, 'STAG', 'Stag Industrial, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6078, 2, 'SSI', 'Stage Stores, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6079, 2, 'SMP', 'Standard Motor Products, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6080, 2, 'SXI', 'Standex International Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6081, 2, 'SWJ', 'Stanley Black & Decker, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6082, 2, 'SWK', 'Stanley Black & Decker, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6083, 2, 'SWP', 'Stanley Black & Decker, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6084, 2, 'STN', 'Stantec Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6085, 2, 'SGU', 'Star Group, L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6086, 2, 'SRT', 'StarTek, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6087, 2, 'STWD', 'STARWOOD PROPERTY TRUST, INC.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6088, 2, 'STT', 'State Street Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6093, 2, 'SPLP', 'Steel Partners Holdings LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6095, 2, 'SCS', 'Steelcase Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6096, 2, 'SCA', 'Stellus Capital Investment Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6097, 2, 'SCM', 'Stellus Capital Investment Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6098, 2, 'SCL', 'Stepan Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6099, 2, 'STE', 'STERIS plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6100, 2, 'STL', 'Sterling Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6102, 2, 'STC', 'Stewart Information Services Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6103, 2, 'SF', 'Stifel Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6105, 2, 'SFB', 'Stifel Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6106, 2, 'STM', 'STMicroelectronics N.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6107, 2, 'EDF', 'Stone Harbor Emerging Markets Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6108, 2, 'EDI', 'Stone Harbor Emerging Markets Total Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6109, 2, 'STON', 'StoneMor Partners L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6110, 2, 'SRI', 'Stoneridge, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6111, 2, 'STOR', 'STORE Capital Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6112, 2, 'GJH', 'STRATS Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6113, 2, 'GJO', 'STRATS Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6114, 2, 'GJS', 'STRATS Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6115, 2, 'SYK', 'Stryker Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6116, 2, 'MSC', 'Studio City International Holdings Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6117, 2, 'RGR', 'Sturm, Ruger & Company, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6118, 2, 'SPH', 'Suburban Propane Partners, L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6119, 2, 'SMFG', 'Sumitomo Mitsui Financial Group Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6140, 2, 'SUZ', 'Suzano Papel e Celulose S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6141, 2, 'SWZ', 'Swiss Helvetia Fund, Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6142, 2, 'SWCH', 'Switch, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6143, 2, 'SYF', 'Synchrony Financial');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6144, 2, 'SNX', 'Synnex Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6145, 2, 'SNV', 'Synovus Financial Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6147, 2, 'GJP', 'Synthetic Fixed-Income Securities, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6148, 2, 'GJR', 'Synthetic Fixed-Income Securities, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6149, 2, 'GJT', 'Synthetic Fixed-Income Securities, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6150, 2, 'GJV', 'Synthetic Fixed-Income Securities, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6151, 2, 'SYY', 'Sysco Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6152, 2, 'SYX', 'Systemax Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6153, 2, 'DATA', 'Tableau Software, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6154, 2, 'TAHO', 'Tahoe Resources, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6155, 2, 'TLRD', 'Tailored Brands, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6156, 2, 'TWN', 'Taiwan Fund, Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6157, 2, 'TSM', 'Taiwan Semiconductor Manufacturing Company Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6158, 2, 'TAL', 'TAL Education Group');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6159, 2, 'TGE', 'Tallgrass Energy, LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6160, 2, 'TALO', 'Talos Energy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6161, 2, 'SKT', 'Tanger Factory Outlet Centers, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6162, 2, 'TPR', 'Tapestry, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6164, 2, 'TRGP', 'Targa Resources, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6165, 2, 'TGT', 'Target Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6166, 2, 'TARO', 'Taro Pharmaceutical Industries Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6167, 2, 'TTM', 'Tata Motors Ltd');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6168, 2, 'TCO', 'Taubman Centers, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6171, 2, 'TMHC', 'Taylor Morrison Home Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6172, 2, 'TCP', 'TC PipeLines, LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6173, 2, 'TCF', 'TCF Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6175, 2, 'TSI', 'TCW Strategic Income Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6176, 2, 'TEL', 'TE Connectivity Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6178, 2, 'FTI', 'TechnipFMC plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6179, 2, 'TECK', 'Teck Resources Ltd');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6180, 2, 'TK', 'Teekay Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6181, 2, 'TGP', 'Teekay LNG Partners L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6184, 2, 'TOO', 'Teekay Offshore Partners L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6188, 2, 'TNK', 'Teekay Tankers Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6189, 2, 'GCI', 'TEGNA Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6190, 2, 'TGNA', 'TEGNA Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6191, 2, 'TRC', 'Tejon Ranch Co');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6192, 2, 'HQH', 'Tekla Healthcare Investors');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6193, 2, 'THQ', 'Tekla Healthcare Opportunies Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6194, 2, 'HQL', 'Tekla Life Sciences Investors');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6195, 2, 'THW', 'Tekla World Healthcare Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6196, 2, 'TDOC', 'Teladoc Health, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6197, 2, 'TLRA', 'Telaria, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6198, 2, 'TEO', 'Telecom Argentina Stet - France Telecom S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6199, 2, 'TI', 'Telecom Italia S.P.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6200, 2, 'TI.A', 'Telecom Italia S.P.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6201, 2, 'TDY', 'Teledyne Technologies Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6202, 2, 'TFX', 'Teleflex Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6203, 2, 'VIV', 'Telefonica Brasil S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6204, 2, 'TEF', 'Telefonica SA');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6205, 2, 'TDA', 'Telephone and Data Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6206, 2, 'TDE', 'Telephone and Data Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6207, 2, 'TDI', 'Telephone and Data Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6208, 2, 'TDJ', 'Telephone and Data Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6209, 2, 'TDS', 'Telephone and Data Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6210, 2, 'TU', 'TELUS Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6211, 2, 'TDF', 'Templeton Dragon Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6212, 2, 'EMF', 'Templeton Emerging Markets Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6213, 2, 'TEI', 'Templeton Emerging Markets Income Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6214, 2, 'GIM', 'Templeton Global Income Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6215, 2, 'TPX', 'Tempur Sealy International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6216, 2, 'TS', 'Tenaris S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6217, 2, 'TME', 'Tencent Music Entertainment Group');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6218, 2, 'THC', 'Tenet Healthcare Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6219, 2, 'TNC', 'Tennant Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6220, 2, 'TEN', 'Tenneco Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6221, 2, 'TVC', 'Tennessee Valley Authority');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6222, 2, 'TVE', 'Tennessee Valley Authority');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6223, 2, 'TDC', 'Teradata Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6224, 2, 'TEX', 'Terex Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6225, 2, 'TX', 'Ternium S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6226, 2, 'TRNO', 'Terreno Realty Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6227, 2, 'TTI', 'Tetra Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6228, 2, 'TEVA', 'Teva Pharmaceutical Industries Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6229, 2, 'TPL', 'Texas Pacific Land Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6230, 2, 'TGH', 'Textainer Group Holdings Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6231, 2, 'TXT', 'Textron Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6232, 2, 'AES', 'The AES Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6233, 2, 'BX', 'The Blackstone Group L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6234, 2, 'CEE', 'The Central and Eastern Europe Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6235, 2, 'SCHW', 'The Charles Schwab Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6263, 2, 'TLYS', 'Tilly''s, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6264, 2, 'TSU', 'TIM Participacoes S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6265, 2, 'TKR', 'Timken Company (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6266, 2, 'TMST', 'TimkenSteel Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6267, 2, 'TWI', 'Titan International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6268, 2, 'TJX', 'TJX Companies, Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6269, 2, 'TOL', 'Toll Brothers, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6270, 2, 'TR', 'Tootsie Roll Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6271, 2, 'BLD', 'TopBuild Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6272, 2, 'TMK', 'Torchmark Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6274, 2, 'TTC', 'Toro Company (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6275, 2, 'TD', 'Toronto Dominion Bank (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6276, 2, 'NDP', 'Tortoise Energy Independence Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6277, 2, 'TYG', 'Tortoise Energy Infrastructure Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6278, 2, 'NTG', 'Tortoise MLP Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6279, 2, 'TTP', 'Tortoise Pipeline & Energy Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6280, 2, 'TPZ', 'Tortoise Power and Energy Infrastructure Fund, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6281, 2, 'TOT', 'Total S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6282, 2, 'TSS', 'Total System Services, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6283, 2, 'TOWR', 'Tower International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6284, 2, 'TSQ', 'Townsquare Media, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6285, 2, 'TM', 'Toyota Motor Corp Ltd Ord');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6286, 2, 'TPGH', 'TPG Pace Holdings Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6287, 2, 'TPGH.U', 'TPG Pace Holdings Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6288, 2, 'TPGH.WS', 'TPG Pace Holdings Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6289, 2, 'TRTX', 'TPG RE Finance Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6290, 2, 'TSLX', 'TPG Specialty Lending, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6291, 2, 'TAC', 'TransAlta Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6292, 2, 'TRP', 'TransCanada Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6293, 2, 'TCI', 'Transcontinental Realty Investors, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6294, 2, 'TDG', 'Transdigm Group Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6295, 2, 'TLP', 'TransMontaigne Partners L.P.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6296, 2, 'RIG', 'Transocean Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6297, 2, 'TGS', 'Transportadora De Gas Sa Ord B');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6298, 2, 'TRU', 'TransUnion');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6299, 2, 'TVPT', 'Travelport Worldwide Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6300, 2, 'TREC', 'Trecora Resources');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6301, 2, 'TG', 'Tredegar Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6302, 2, 'THS', 'Treehouse Foods, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6303, 2, 'TREX', 'Trex Company, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6304, 2, 'TY', 'Tri Continental Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6306, 2, 'TPH', 'TRI Pointe Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6307, 2, 'TRCO', 'Tribune Media Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6308, 2, 'TNET', 'TriNet Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6309, 2, 'TRN', 'Trinity Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6310, 2, 'TSE', 'Trinseo S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6311, 2, 'TPVG', 'TriplePoint Venture Growth BDC Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6312, 2, 'TPVY', 'TriplePoint Venture Growth BDC Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6313, 2, 'GTS', 'Triple-S Management Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6314, 2, 'TRTN', 'Triton International Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6315, 2, 'TGI', 'Triumph Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6316, 2, 'TROX', 'Tronox Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6317, 2, 'TBI', 'TrueBlue, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6318, 2, 'TNP', 'Tsakos Energy Navigation Ltd');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6324, 2, 'TUP', 'Tupperware Brands Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6325, 2, 'TKC', 'Turkcell Iletisim Hizmetleri AS');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6326, 2, 'TPB', 'Turning Point Brands, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6327, 2, 'TRQ', 'Turquoise Hill Resources Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6328, 2, 'TPC', 'Tutor Perini Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6329, 2, 'TWLO', 'Twilio Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6330, 2, 'TWTR', 'Twitter, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6331, 2, 'TWO', 'Two Harbors Investments Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6337, 2, 'TYL', 'Tyler Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6338, 2, 'TSN', 'Tyson Foods, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6339, 2, 'USB', 'U.S. Bancorp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6345, 2, 'USPH', 'U.S. Physical Therapy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6346, 2, 'SLCA', 'U.S. Silica Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6347, 2, 'USX', 'U.S. Xpress Enterprises, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6348, 2, 'UBS', 'UBS AG');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6349, 2, 'UDR', 'UDR, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6350, 2, 'UGI', 'UGI Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6351, 2, 'UGP', 'Ultrapar Participacoes S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6352, 2, 'UMH', 'UMH Properties, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6368, 2, 'UNT', 'Unit Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6369, 2, 'UMC', 'United Microelectronics Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6370, 2, 'UPS', 'United Parcel Service, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6371, 2, 'URI', 'United Rentals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6372, 2, 'USM', 'United States Cellular Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6373, 2, 'UZA', 'United States Cellular Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6374, 2, 'UZB', 'United States Cellular Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6375, 2, 'UZC', 'United States Cellular Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6376, 2, 'X', 'United States Steel Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6377, 2, 'UTX', 'United Technologies Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6378, 2, 'UNH', 'UnitedHealth Group Incorporated');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6379, 2, 'UTL', 'UNITIL Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6380, 2, 'UNVR', 'Univar Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6381, 2, 'UVV', 'Universal Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6382, 2, 'UHT', 'Universal Health Realty Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6383, 2, 'UHS', 'Universal Health Services, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6384, 2, 'UVE', 'UNIVERSAL INSURANCE HOLDINGS INC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6385, 2, 'UTI', 'Universal Technical Institute Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6386, 2, 'UNM', 'Unum Group');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6387, 2, 'UNMA', 'Unum Group');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6388, 2, 'UE', 'Urban Edge Properties');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6389, 2, 'UBA', 'Urstadt Biddle Properties Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6390, 2, 'UBP', 'Urstadt Biddle Properties Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6393, 2, 'USFD', 'US Foods Holding Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6394, 2, 'USAC', 'USA Compression Partners, LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6395, 2, 'USNA', 'USANA Health Sciences, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6396, 2, 'USDP', 'USD Partners LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6397, 2, 'USG', 'USG Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6398, 2, 'BIF', 'USLIFE Income Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6399, 2, 'VFC', 'V.F. Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6400, 2, 'EGY', 'VAALCO Energy, Inc. ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6401, 2, 'MTN', 'Vail Resorts, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6402, 2, 'VALE', 'VALE S.A.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6403, 2, 'VLO', 'Valero Energy Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6404, 2, 'VLP', 'Valero Energy Partners LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6405, 2, 'VHI', 'Valhi, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6406, 2, 'VMI', 'Valmont Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6407, 2, 'VVV', 'Valvoline Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6408, 2, 'VAPO', 'Vapotherm, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6409, 2, 'VAR', 'Varian Medical Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6410, 2, 'VGR', 'Vector Group Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6411, 2, 'VVC', 'Vectren Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6412, 2, 'VEC', 'Vectrus, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6413, 2, 'VEDL', 'Vedanta  Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6414, 2, 'VEEV', 'Veeva Systems Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6415, 2, 'VNTR', 'Venator Materials PLC');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6416, 2, 'VTRB', 'Ventas Realty, Limited Partnership // Ventas Capital Corporati');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6417, 2, 'VTR', 'Ventas, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6418, 2, 'VNE', 'Veoneer, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6419, 2, 'VER', 'VEREIT Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6421, 2, 'VRTV', 'Veritiv Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6422, 2, 'VZ', 'Verizon Communications Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6423, 2, 'VZA', 'Verizon Communications Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6424, 2, 'VET', 'Vermilion Energy Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6425, 2, 'VRS', 'Verso Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6426, 2, 'VSM', 'Versum Materials, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6427, 2, 'VVI', 'Viad Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6428, 2, 'VICI', 'VICI Properties Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6429, 2, 'VNCE', 'Vince Holding Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6430, 2, 'VIPS', 'Vipshop Holdings Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6431, 2, 'ZTR', 'Virtus Global Dividend & Income Fund Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6432, 2, 'VGI', 'Virtus Global Multi-Sector Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6433, 2, 'ZF', 'Virtus Total Return Fund Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6434, 2, 'V', 'Visa Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6435, 2, 'VSH', 'Vishay Intertechnology, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6436, 2, 'VPG', 'Vishay Precision Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6437, 2, 'VSTO', 'Vista Outdoor Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6438, 2, 'DYNC', 'Vistra Energy Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6439, 2, 'VST', 'Vistra Energy Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6440, 2, 'VST.WS.A', 'Vistra Energy Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6441, 2, 'VSI', 'Vitamin Shoppe, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6442, 2, 'VSLR', 'Vivint Solar, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6443, 2, 'VMW', 'Vmware, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6444, 2, 'VOC', 'VOC Energy Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6445, 2, 'VCRA', 'Vocera Communications, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6446, 2, 'VG', 'Vonage Holdings Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6447, 2, 'VNO', 'Vornado Realty Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6451, 2, 'VJET', 'voxeljet AG');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6452, 2, 'IAE', 'Voya Asia Pacific High Dividend Equity Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6453, 2, 'IHD', 'Voya Emerging Markets High Income Dividend Equity Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6454, 2, 'VOYA', 'Voya Financial, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6455, 2, 'IGA', 'Voya Global Advantage and Premium Opportunity Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6456, 2, 'IGD', 'Voya Global Equity Dividend and Premium Opportunity Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6457, 2, 'IDE', 'Voya Infrastructure, Industrials and Materials Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6458, 2, 'IID', 'Voya International High Dividend Equity Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6459, 2, 'IRR', 'Voya Natural Resources Equity Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6460, 2, 'PPR', 'Voya Prime Rate Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6461, 2, 'VMC', 'Vulcan Materials Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6462, 2, 'WTI', 'W&T Offshore, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6463, 2, 'WPC', 'W.P. Carey Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6464, 2, 'WRB', 'W.R. Berkley Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6469, 2, 'GRA', 'W.R. Grace & Co.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6470, 2, 'GWW', 'W.W. Grainger, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6471, 2, 'WNC', 'Wabash National Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6472, 2, 'WBC', 'Wabco Holdings Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6473, 2, 'WDR', 'Waddell & Reed Financial, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6493, 2, 'WEC', 'WEC Energy Group, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6494, 2, 'WEI', 'Weidai Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6495, 2, 'WRI', 'Weingarten Realty Investors');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6496, 2, 'WMK', 'Weis Markets, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6497, 2, 'WBT', 'Welbilt, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6498, 2, 'WCG', 'WellCare Health Plans, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6499, 2, 'WFC', 'Wells Fargo & Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6512, 2, 'EOD', 'Wells Fargo Global Dividend Opportunity Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6513, 2, 'WELL', 'Welltower Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6515, 2, 'WAIR', 'Wesco Aircraft Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6516, 2, 'WCC', 'WESCO International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6517, 2, 'WST', 'West Pharmaceutical Services, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6518, 2, 'WAL', 'Western Alliance Bancorporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6519, 2, 'WALA', 'Western Alliance Bancorporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6520, 2, 'WEA', 'Western Asset Bond Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6521, 2, 'TLI', 'Western Asset Corporate Loan Fund Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6522, 2, 'EMD', 'Western Asset Emerging Markets Debt Fund Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6523, 2, 'GDO', 'Western Asset Global Corporate Defined Opportunity Fund Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6524, 2, 'EHI', 'Western Asset Global High Income Fund Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6525, 2, 'HIX', 'Western Asset High Income Fund II Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6526, 2, 'HIO', 'Western Asset High Income Opportunity Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6527, 2, 'HYI', 'Western Asset High Yield Defined Opportunity Fund Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6528, 2, 'SBI', 'Western Asset Intermediate Muni Fund Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6529, 2, 'IGI', 'Western Asset Investment Grade Defined Opportunity Trust Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6530, 2, 'PAI', 'Western Asset Investment Grade Income Fund Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6531, 2, 'MMU', 'Western Asset Managed Municipals Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6532, 2, 'WMC', 'Western Asset Mortgage Capital Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6533, 2, 'DMO', 'Western Asset Mortgage Defined Opportunity Fund Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6534, 2, 'MTT', 'Western Asset Municipal Defined Opportunity Trust Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6535, 2, 'MHF', 'Western Asset Municipal High Income Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6536, 2, 'MNP', 'Western Asset Municipal Partners Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6537, 2, 'GFY', 'Western Asset Variable Rate Strategic Fund Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6538, 2, 'WIW', 'Western Asset/Claymore U.S Treasury Inflation Prot Secs Fd 2');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6539, 2, 'WIA', 'Western Asset/Claymore U.S. Treasury Inflation Prot Secs Fd');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6540, 2, 'WGP', 'Western Gas Equity Partners, LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6541, 2, 'WES', 'Western Gas Partners, LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6542, 2, 'WU', 'Western Union Company (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6543, 2, 'WAB', 'Westinghouse Air Brake Technologies Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6544, 2, 'WLK', 'Westlake Chemical Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6545, 2, 'WLKP', 'Westlake Chemical Partners LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6546, 2, 'WBK', 'Westpac Banking Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6547, 2, 'WRK', 'Westrock Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6548, 2, 'WHG', 'Westwood Holdings Group Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6549, 2, 'WEX', 'WEX Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6550, 2, 'WY', 'Weyerhaeuser Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6551, 2, 'WPM', 'Wheaton Precious Metals Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6552, 2, 'WHR', 'Whirlpool Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6553, 2, 'WTM', 'White Mountains Insurance Group, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6554, 2, 'WSR', 'Whitestone REIT');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6555, 2, 'WLL', 'Whiting Petroleum Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6556, 2, 'WOW', 'WideOpenWest, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6557, 2, 'WRD', 'WildHorse Resource Development Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6558, 2, 'WMB', 'Williams Companies, Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6559, 2, 'WSM', 'Williams-Sonoma, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6560, 2, 'WGO', 'Winnebago Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6561, 2, 'WIT', 'Wipro Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6562, 2, 'WNS', 'WNS (Holdings) Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6563, 2, 'WWW', 'Wolverine World Wide, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6564, 2, 'WF', 'Woori Bank');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6565, 2, 'WK', 'Workiva Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6566, 2, 'INT', 'World Fuel Services Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6567, 2, 'WWE', 'World Wrestling Entertainment, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6568, 2, 'WP', 'Worldpay, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6569, 2, 'WOR', 'Worthington Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6570, 2, 'WPP', 'WPP plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6571, 2, 'WPX', 'WPX Energy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6572, 2, 'WYND', 'Wyndham Destinations, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6573, 2, 'WH', 'Wyndham Hotels & Resorts, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6574, 2, 'XYF', 'X Financial');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6575, 2, 'XFLT', 'XAI Octagon Floating Rate & Alternative Income Term Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6576, 2, 'XHR', 'Xenia Hotels & Resorts, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6577, 2, 'XRX', 'Xerox Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6578, 2, 'XIN', 'Xinyuan Real Estate Co Ltd');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6579, 2, 'XPO', 'XPO Logistics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6580, 2, 'XYL', 'Xylem Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6581, 2, 'AUY', 'Yamana Gold Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6582, 2, 'YELP', 'Yelp Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6583, 2, 'YETI', 'YETI Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6584, 2, 'YEXT', 'Yext, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6585, 2, 'YRD', 'Yirendai Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6586, 2, 'YPF', 'YPF Sociedad Anonima');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6599, 2, 'ZYME', 'Zymeworks Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6600, 3, 'XXII', '22nd Century Group, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6601, 3, 'FAX', 'Aberdeen Asia-Pacific Income Fund Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6602, 3, 'IAF', 'Aberdeen Australia Equity Fund Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6603, 3, 'AEF', 'Aberdeen Emerging Markets Equity Income Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6604, 3, 'FCO', 'Aberdeen Global Income Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6605, 3, 'ACU', 'Acme United Corporation.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6606, 3, 'ATNM', 'Actinium Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6607, 3, 'AE', 'Adams Resources & Energy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6608, 3, 'ACY', 'AeroCentury Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6609, 3, 'UAVS', 'AgEagle Aerial Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6610, 3, 'AGE', 'AgeX Therapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6611, 3, 'AIRI', 'Air Industries Group');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6612, 3, 'AXU', 'Alexco Resource Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6613, 3, 'ALO', 'Alio Gold Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6614, 3, 'AAU', 'Almaden Minerals, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6615, 3, 'APT', 'Alpha Pro Tech, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6616, 3, 'AAMC', 'Altisource Asset Management Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6617, 3, 'AMBO', 'Ambow Education Holding Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6618, 3, 'DIT', 'AMCON Distributing Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6619, 3, 'AMS', 'American Shared Hospital Services');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6620, 3, 'USAS', 'Americas Silver Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6621, 3, 'AMPE', 'Ampio Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6622, 3, 'APHB', 'AmpliPhi Biosciences Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6624, 3, 'AKG', 'Asanko Gold Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6625, 3, 'AINC', 'Ashford Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6626, 3, 'AST', 'Asterias Biotherapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6627, 3, 'AUG', 'Auryn Resources Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6628, 3, 'AWX', 'Avalon Holdings Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6629, 3, 'ASM', 'Avino Silver');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6630, 3, 'BTG', 'B2Gold Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6631, 3, 'BTN', 'Ballantyne Strong, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6632, 3, 'BKJ', 'Bancorp of New Jersey, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6633, 3, 'BCV', 'Bancroft Fund Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6635, 3, 'BHB', 'Bar Harbor Bankshares, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6636, 3, 'BRN', 'Barnwell Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6637, 3, 'BGSF', 'BG Staffing Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6638, 3, 'BPMX', 'BioPharmX Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6639, 3, 'BTX', 'BioTime, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6640, 3, 'BGI', 'Birks Group Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6641, 3, 'BKTI', 'BK Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6642, 3, 'BDR', 'Blonder Tongue Laboratories, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6643, 3, 'BRG', 'Bluerock Residential Growth REIT, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6647, 3, 'BVX', 'Bovie Medical Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6648, 3, 'BWL.A', 'Bowl America, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6649, 3, 'CMCL', 'Caledonia Mining Corporation Plc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6650, 3, 'CEI', 'Camber Energy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6651, 3, 'CANF', 'Can-Fite Biopharma Ltd');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6652, 3, 'ROX', 'Castle Brands, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6653, 3, 'CAW', 'CCA Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6654, 3, 'CVM', 'Cel-Sci Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6655, 3, 'CET', 'Central Securities Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6656, 3, 'LEU', 'Centrus Energy Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6657, 3, 'CHAC.U', 'Chardan Healthcare Acquisition Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6658, 3, 'CCF', 'Chase Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6659, 3, 'CQP', 'Cheniere Energy Partners, LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6660, 3, 'LNG', 'Cheniere Energy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6661, 3, 'CVR', 'Chicago Rivet & Machine Co.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6662, 3, 'CPHI', 'China Pharma Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6663, 3, 'CKX', 'CKX Lands, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6664, 3, 'GLV', 'Clough Global Dividend and Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6665, 3, 'GLQ', 'Clough Global Equity Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6666, 3, 'GLO', 'Clough Global Opportunities Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6667, 3, 'COHN', 'Cohen & Company Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6668, 3, 'MOC', 'Command Security Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6669, 3, 'CIX', 'CompX International Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6670, 3, 'LODE', 'Comstock Mining, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6671, 3, 'CDOR', 'Condor Hospitality Trust, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6672, 3, 'CTO', 'Consolidated-Tomoka Land Co.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6673, 3, 'MCF', 'Contango Oil & Gas Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6674, 3, 'CUO', 'Continental Materials Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6675, 3, 'CMT', 'Core Molding Technologies Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6676, 3, 'CVRS', 'Corindus Vascular Robotics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6677, 3, 'CRMD', 'CorMedix Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6678, 3, 'CRF', 'Cornerstone Strategic Return Fund, Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6679, 3, 'CLM', 'Cornerstone Strategic Value Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6680, 3, 'CVU', 'CPI Aerostructures, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6681, 3, 'CIK', 'Credit Suisse Asset Management Income Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6682, 3, 'DHY', 'Credit Suisse High Yield Bond Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6683, 3, 'CRHM', 'CRH Medical Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6684, 3, 'CTEK', 'CynergisTek, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6685, 3, 'DXR', 'Daxor Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6686, 3, 'VCF', 'Delaware Investments Colorado Municipal Income Fund, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6687, 3, 'VFL', 'Delaware Investments Florida Insured Municipal Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6688, 3, 'VMM', 'Delaware Investments Minnesota Municipal Income Fund II, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6689, 3, 'DLA', 'Delta Apparel, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6690, 3, 'DNN', 'Denison Mine Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6691, 3, 'DGSE', 'DGSE Companies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6692, 3, 'DSS', 'Document Security Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6693, 3, 'DPW', 'DPW Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6694, 3, 'DMF', 'Dreyfus Municipal Income, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6695, 3, 'DXF', 'Dunxin Financial Holdings Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6696, 3, 'GRF', 'Eagle Capital Growth Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6697, 3, 'EVM', 'Eaton Vance California Municipal Bond Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6698, 3, 'CEV', 'Eaton Vance California Municipal Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6699, 3, 'EVV', 'Eaton Vance Limited Duration Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6700, 3, 'MMV', 'Eaton Vance Massachusetts Municipal Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6708, 3, 'EVO', 'Eaton Vance Ohio Municipal Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6709, 3, 'EIP', 'Eaton Vance Pennsylvania Municipal Bond Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6710, 3, 'EVP', 'Eaton Vance Pennsylvania Municipal Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6711, 3, 'ELMD', 'Electromed, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6712, 3, 'ELLO', 'Ellomay Capital Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6713, 3, 'ECF', 'Ellsworth Growth and Income Fund Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6715, 3, 'EMAN', 'eMagin Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6716, 3, 'MSN', 'Emerson Radio Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6717, 3, 'EMX', 'EMX Royalty Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6718, 3, 'UUUU', 'Energy Fuels Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6719, 3, 'UUUU.WS', 'Energy Fuels Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6720, 3, 'ENSV', 'ENSERVCO Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6721, 3, 'ESNC', 'EnSync, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6722, 3, 'EGI', 'Entree Resources Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6723, 3, 'EVI', 'EnviroStarm, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6724, 3, 'ESP', 'Espey Mfg. & Electronics Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6725, 3, 'EVBN', 'Evans Bancorp, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6726, 3, 'EPM', 'Evolution Petroleum Corporation, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6727, 3, 'FEN', 'First Trust Energy Income and Growth Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6728, 3, 'BDL', 'Flanigan''s Enterprises, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6729, 3, 'FSI', 'Flexible Solutions International Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6730, 3, 'FTF', 'Franklin Limited Duration Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6731, 3, 'FSP', 'Franklin Street Properties Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6732, 3, 'FRD', 'Friedman Industries Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6733, 3, 'FTNW', 'FTE Networks, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6734, 3, 'GGN', 'GAMCO Global Gold, Natural Reources & Income Trust ');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6736, 3, 'JOB', 'GEE Group Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6737, 3, 'GMO', 'General Moly, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6738, 3, 'GSB', 'GlobalSCAPE, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6739, 3, 'GSAT', 'Globalstar, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6740, 3, 'GLOW', 'Glowpoint, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6741, 3, 'GORO', 'Gold Resource Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6742, 3, 'GSV', 'Gold Standard Ventures Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6743, 3, 'AUMN', 'Golden Minerals Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6744, 3, 'GSS', 'Golden Star Resources, Ltd');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6745, 3, 'GV', 'Goldfield Corporation (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6746, 3, 'GDP', 'Goodrich Petroleum Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6747, 3, 'GTE', 'Gran Tierra Energy Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6748, 3, 'GPL', 'Great Panther Silver Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6749, 3, 'SIM', 'Grupo Simec, S.A. de C.V.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6750, 3, 'HEB', 'Hemispherx BioPharma, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6752, 3, 'HMG', 'HMG/Courtland Properties, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6753, 3, 'HUSA', 'Houston American Energy Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6755, 3, 'IBO', 'IBO (Listing Market - NYSE Amex Network B F)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6756, 3, 'IEC', 'IEC Electronics Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6757, 3, 'IMH', 'Impac Mortgage Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6758, 3, 'IMO', 'Imperial Oil Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6759, 3, 'IOR', 'Income Opportunity Realty Investors, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6760, 3, 'INFU', 'InfuSystems Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6761, 3, 'IHT', 'InnSuites Hospitality Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6762, 3, 'NSPR', 'InspireMD Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6763, 3, 'NSPR.WS', 'InspireMD Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6764, 3, 'NSPR.WS.B', 'InspireMD Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6765, 3, 'IDN', 'Intellicheck, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6766, 3, 'INS', 'Intelligent Systems Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6767, 3, 'THM', 'International Tower Hill Mines Ltd');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6768, 3, 'INTT', 'inTest Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6769, 3, 'INUV', 'Inuvo, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6770, 3, 'VKI', 'Invesco Advantage Municipal Income Trust II');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6771, 3, 'ISR', 'IsoRay, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6772, 3, 'ISDR', 'Issuer Direct Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6773, 3, 'ITP', 'IT Tech Packaging, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6774, 3, 'KIQ', 'Kelso Technologies Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6775, 3, 'LTS', 'Ladenburg Thalmann Financial Services Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6777, 3, 'LTSK', 'Ladenburg Thalmann Financial Services Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6778, 3, 'LTSL', 'Ladenburg Thalmann Financial Services Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6779, 3, 'LTSF', 'Ladenburg Thalmann Financial Services Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6780, 3, 'LEVB', 'Level Brands, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6781, 3, 'LGL', 'LGL Group, Inc. (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6782, 3, 'LBY', 'Libbey, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6783, 3, 'LLEX', 'Lilis Energy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6784, 3, 'LIQT', 'LiqTech International, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6785, 3, 'MAG', 'MAG Silver Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6786, 3, 'MJCO', 'Majesco');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6787, 3, 'MHH', 'Mastech Digital, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6788, 3, 'MTNB', 'Matinas Biopharma Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6789, 3, 'MNI', 'McClatchy Company (The)');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6790, 3, 'IPB', 'Merrill Lynch & Co., Inc. 6.0518% Index Plus Trust Certificate');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6791, 3, 'MXC', 'Mexco Energy Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6792, 3, 'CCA', 'MFS California Insured Municipal Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6793, 3, 'MICR', 'Micron Solutions, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6794, 3, 'MLSS', 'Milestone Scientific, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6795, 3, 'MYO', 'Myomo Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6796, 3, 'NNVC', 'NanoViricides, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6801, 3, 'NHC', 'National HealthCare Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6802, 3, 'NAVB', 'Navidea Biopharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6803, 3, 'NTIP', 'Network-1 Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6804, 3, 'NBW', 'Neuberger Berman California Municipal Fund Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6805, 3, 'NHS', 'Neuberger Berman High Yield Strategies Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6806, 3, 'NML', 'Neuberger Berman MLP Income Fund Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6807, 3, 'NBH', 'Neuberger Berman Municipal Fund Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6808, 3, 'NBO', 'Neuberger Berman New York Municipal Fund Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6809, 3, 'NRO', 'Neuberger Berman Real Estate Securities Income Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6810, 3, 'UWN', 'Nevada Gold & Casinos, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6811, 3, 'NSU', 'Nevsun Resources Ltd');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6812, 3, 'GBR', 'New Concept Energy, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6813, 3, 'NEN', 'New England Realty Associates Limited Partnership');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6814, 3, 'NGD', 'New Gold Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6815, 3, 'NXE', 'Nexgen Energy Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6816, 3, 'HLTH', 'Nobilis Health Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6817, 3, 'NAK', 'Northern Dynasty Minerals, Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6818, 3, 'NOG', 'Northern Oil and Gas, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6819, 3, 'NBY', 'NovaBay Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6820, 3, 'NG', 'Novagold Resources Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6821, 3, 'NRCG', 'NRC Group Holdings Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6822, 3, 'NRCG.WS', 'NRC Group Holdings Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6823, 3, 'NTN', 'NTN Buzztime, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6824, 3, 'NES', 'Nuverra Environmental Solutions, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6825, 3, 'OCX', 'OncoCyte Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6826, 3, 'OGEN', 'Oragenics Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6827, 3, 'TIS', 'Orchids Paper Products Company');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6828, 3, 'ORM', 'Owens Realty Mortgage, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6837, 3, 'PTN', 'Palatin Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6838, 3, 'PZG', 'Paramount Gold Nevada Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6839, 3, 'PRK', 'Park National Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6840, 3, 'PED', 'Pedevco Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6841, 3, 'PFNX', 'Pfenex Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6842, 3, 'HNW', 'Pioneer Diversified High Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6843, 3, 'PLAG', 'Planet Green Holdings Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6844, 3, 'PLG', 'Platinum Group Metals Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6845, 3, 'PLYM', 'Plymouth Industrial REIT, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6847, 3, 'PLM', 'Polymet Mining Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6850, 3, 'PLX', 'Protalix BioTherapeutics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6851, 3, 'RLGT', 'Radiant Logistics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6852, 3, 'RFL', 'Rafael Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6853, 3, 'UTG', 'Reaves Utility Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6854, 3, 'REED', 'Reeds, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6855, 3, 'RHE', 'Regional Health Properties, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6857, 3, 'RCG', 'RENN Fund, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6858, 3, 'RVP', 'Retractable Technologies, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6859, 3, 'RNN', 'Rexahn Pharmaceuticals, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6860, 3, 'REI', 'Ring Energy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6861, 3, 'RIF', 'RMR Real Estate Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6862, 3, 'SACH', 'Sachem Capital Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6863, 3, 'SNMP', 'Sanchez Midstream Partners LP');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6864, 3, 'SAND          ', 'Sandstorm Gold Ltd');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6865, 3, 'SEB', 'Seaboard Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6866, 3, 'SENS', 'Senseonics Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6867, 3, 'SVT', 'Servotronics, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6868, 3, 'SMTS', 'Sierra Metals Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6869, 3, 'SIF', 'SIFCO Industries, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6870, 3, 'SVM', 'Silvercorp Metals Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6871, 3, 'SILV', 'SilverCrest Metals Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6872, 3, 'XPL', 'Solitario Zinc Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6877, 3, 'SGB', 'Southwest Georgia Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6878, 3, 'LOV', 'Spark Networks, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6879, 3, 'SRCI', 'SRC Energy Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6880, 3, 'SDI', 'Standard Diversified Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6881, 3, 'SSY', 'SunLink Health Systems, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6882, 3, 'SDPI', 'Superior Drilling Products, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6883, 3, 'SYN', 'Synthetic Biologics, Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6884, 3, 'TKAT', 'Takung Art Co., Ltd.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6885, 3, 'TALO.WS', 'Talos Energy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6886, 3, 'TRX', 'Tanzanian Royalty Exploration Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6887, 3, 'TGB', 'Taseko Mines Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6888, 3, 'TIK', 'Tel-Instrument Electronics Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6889, 3, 'TGC', 'Tengasco, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6890, 3, 'GLU', 'The Gabelli Global Utility and Income Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6893, 3, 'GGO', 'The Gabelli Go Anywhere Trust');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6895, 3, 'TDW.WS', 'Tidewater Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6896, 3, 'TMP', 'Tompkins Financial Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6897, 3, 'TAT', 'Transatlantic Petroleum Ltd');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6898, 3, 'TRXC', 'TransEnterix, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6899, 3, 'TMQ', 'Trilogy Metals Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6900, 3, 'TPHS', 'Trinity Place Holdings Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6901, 3, 'TRT', 'Trio-Tech International');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6902, 3, 'UFAB', 'Unique Fabricating, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6903, 3, 'UAMY', 'United States Antimony Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6904, 3, 'UUU', 'Universal Security Instruments, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6905, 3, 'UQM', 'UQM Technologies Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6906, 3, 'URG', 'Ur Energy Inc');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6907, 3, 'UEC', 'Uranium Energy Corp.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6908, 3, 'VHC', 'VirnetX Holding Corp');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6909, 3, 'VGZ', 'Vista Gold Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6910, 3, 'VNRX', 'VolitionRX Limited');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6911, 3, 'VISI', 'Volt Information Sciences, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6912, 3, 'EAD', 'Wells Fargo Income Opportunities Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6913, 3, 'ERC', 'Wells Fargo Multi-Sector Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6914, 3, 'ERH', 'Wells Fargo Utilities and High Income Fund');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6915, 3, 'WRN', 'Western Copper and Gold Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6916, 3, 'WYY', 'WidePoint Corporation');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6917, 3, 'WTT', 'Wireless Telecom Group,  Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6918, 3, 'XTNT', 'Xtant Medical Holdings, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6919, 3, 'YUMA', 'Yuma Energy, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6920, 3, 'ZDGE', 'Zedge, Inc.');
INSERT INTO public.stock_symbols
(id, exchange_id, symbol, "name")
VALUES(6921, 3, 'ZOM', 'Zomedica Pharmaceuticals Corp.');
