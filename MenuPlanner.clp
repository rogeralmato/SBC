
; Wed May 01 08:27:36 CEST 2019
; 
;+ (version "3.5")
;+ (build "Build 663")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot Proteines
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Sexe
		(type SYMBOL)
		(allowed-values Home Dona)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot LacticMenu
		(type INSTANCE)
;+		(allowed-classes Lactic)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Raonament
		(type STRING)
		(create-accessor read-write))
	(single-slot HidratsDeCarboni
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot MenuDinar
		(type INSTANCE)
;+		(allowed-classes Dinar)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot RestriccioAlimenticiaUsuari
		(type STRING)
		(create-accessor read-write))
	(single-slot MenuEsmorzar
		(type INSTANCE)
;+		(allowed-classes Esmorzar)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Puntuacio
		(type INTEGER)
		(default 0)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot NomIngredient
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Edat
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot NomPlat
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Fibra
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot FruitaMenu
		(type INSTANCE)
;+		(allowed-classes Fruites)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Activitat+Fisica
		(type SYMBOL)
		(allowed-values Poca Normal Molta)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot MenuDia
		(type INSTANCE)
;+		(allowed-classes DiaSetmana)
		(cardinality 1 7)
		(create-accessor read-write))
	(single-slot ContingutCaloric
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot GreixosPolisaturats
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot MenuSopar
		(type INSTANCE)
;+		(allowed-classes Sopar)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Sal
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot CerealMenu
		(type INSTANCE)
;+		(allowed-classes Cereal)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot NomMalaltia
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot NomDia
		(type SYMBOL)
		(allowed-values Dilluns Dimarts Dimecres Dijous Divendres Dissabte Diumenge)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Sucres
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Colesterol
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot MalaltiaUsuari
		(type STRING)
		(create-accessor read-write))
	(single-slot PrimerPlatMenu
		(type INSTANCE)
;+		(allowed-classes PrimerPlat)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot GreixosMonoinsaturats
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot IngredientsPlat
		(type INSTANCE)
;+		(allowed-classes Ingredients)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot GreixosSaturats
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot GuarnicioMenu
		(type INSTANCE)
;+		(allowed-classes Guarnicio)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot PostreMenu
		(type INSTANCE)
;+		(allowed-classes Postre)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot SegonPlatMenu
		(type INSTANCE)
;+		(allowed-classes SegonPlat)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Usuari
	(is-a USER)
	(role concrete)
	(single-slot Edat
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot MalaltiaUsuari
		(type STRING)
		(create-accessor read-write))
	(single-slot Activitat+Fisica
		(type SYMBOL)
		(allowed-values Poca Normal Molta)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Sexe
		(type SYMBOL)
		(allowed-values Home Dona)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot RestriccioAlimenticiaUsuari
		(type STRING)
		(create-accessor read-write))
	(multislot MenuDia
		(type INSTANCE)
;+		(allowed-classes DiaSetmana)
		(cardinality 1 7)
		(create-accessor read-write)))

(defclass Menu
	(is-a USER)
	(role concrete))

(defclass Esmorzar
	(is-a Menu)
	(role concrete)
	(single-slot CerealMenu
		(type INSTANCE)
;+		(allowed-classes Cereal)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot FruitaMenu
		(type INSTANCE)
;+		(allowed-classes Fruites)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot LacticMenu
		(type INSTANCE)
;+		(allowed-classes Lactic)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Dinar
	(is-a Menu)
	(role concrete)
	(single-slot GuarnicioMenu
		(type INSTANCE)
;+		(allowed-classes Guarnicio)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot PostreMenu
		(type INSTANCE)
;+		(allowed-classes Postre)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot SegonPlatMenu
		(type INSTANCE)
;+		(allowed-classes SegonPlat)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot PrimerPlatMenu
		(type INSTANCE)
;+		(allowed-classes PrimerPlat)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Sopar
	(is-a Menu)
	(role concrete)
	(single-slot GuarnicioMenu
		(type INSTANCE)
;+		(allowed-classes Guarnicio)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot PostreMenu
		(type INSTANCE)
;+		(allowed-classes Postre)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot SegonPlatMenu
		(type INSTANCE)
;+		(allowed-classes SegonPlat)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot PrimerPlatMenu
		(type INSTANCE)
;+		(allowed-classes PrimerPlat)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Plats
	(is-a USER)
	(role concrete)
	(single-slot Proteines
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Puntuacio
		(type INTEGER)
		(default 0)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot GreixosMonoinsaturats
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Sal
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot NomPlat
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Fibra
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot IngredientsPlat
		(type INSTANCE)
;+		(allowed-classes Ingredients)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Sucres
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Colesterol
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Raonament
		(type STRING)
		(create-accessor read-write))
	(single-slot GreixosSaturats
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot HidratsDeCarboni
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot ContingutCaloric
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot GreixosPolisaturats
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass PrimerPlat
	(is-a Plats)
	(role concrete))

(defclass SegonPlat
	(is-a Plats)
	(role concrete))

(defclass Guarnicio
	(is-a Plats)
	(role concrete))

(defclass Postre
	(is-a Plats)
	(role concrete))

(defclass Lactic
	(is-a Plats)
	(role concrete))

(defclass Cereal
	(is-a Plats)
	(role concrete))

(defclass Fruites
	(is-a Plats)
	(role concrete))

(defclass Ingredients
	(is-a USER)
	(role concrete)
	(single-slot NomIngredient
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Begudes
	(is-a Ingredients)
	(role concrete))

(defclass Fruita
	(is-a Ingredients)
	(role concrete))

(defclass Gra
	(is-a Ingredients)
	(role concrete))

(defclass Refinat
	(is-a Gra)
	(role concrete))

(defclass Pa
	(is-a Refinat)
	(role concrete))

(defclass Pasta
	(is-a Refinat)
	(role concrete))

(defclass Sencer
	(is-a Gra)
	(role concrete))

(defclass Lactics
	(is-a Ingredients)
	(role concrete))

(defclass Proteics
	(is-a Ingredients)
	(role concrete))

(defclass Carn
	(is-a Proteics)
	(role concrete))

(defclass Marisc
	(is-a Proteics)
	(role concrete))

(defclass Ous
	(is-a Proteics)
	(role concrete))

(defclass Soja+%2F+Fruits+Secs
	(is-a Proteics)
	(role concrete))

(defclass Peix
	(is-a Proteics)
	(role concrete))

(defclass Verdura
	(is-a Ingredients)
	(role concrete))

(defclass Altres
	(is-a Verdura)
	(role concrete))

(defclass Llegums
	(is-a Verdura)
	(role concrete))

(defclass Mid%C3%B3
	(is-a Verdura)
	(role concrete))

(defclass Verd+Fosc
	(is-a Verdura)
	(role concrete))

(defclass Vermell+%2F+Taronja
	(is-a Verdura)
	(role concrete))

(defclass Oli
	(is-a Ingredients)
	(role concrete))

(defclass AltresIngredients
	(is-a Ingredients)
	(role concrete))

(defclass DiaSetmana
	(is-a USER)
	(role concrete)
	(single-slot MenuEsmorzar
		(type INSTANCE)
;+		(allowed-classes Esmorzar)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot MenuSopar
		(type INSTANCE)
;+		(allowed-classes Sopar)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot MenuDinar
		(type INSTANCE)
;+		(allowed-classes Dinar)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot NomDia
		(type SYMBOL)
		(allowed-values Dilluns Dimarts Dimecres Dijous Divendres Dissabte Diumenge)
;+		(cardinality 1 1)
		(create-accessor read-write)))



(definstances menu

([KB_096355_Class41] of  Usuari

	(Activitat+Fisica Normal)
	(Edat 65)
	(MenuDia
		[KB_096355_Class42]
		[KB_096355_Class43]
		[KB_096355_Class45]
		[KB_096355_Class46]
		[KB_096355_Class47]
		[KB_096355_Class48]
		[KB_096355_Class49])
	(Sexe Home))

([KB_096355_Class42] of  DiaSetmana (NomDia Dilluns))
([KB_096355_Class43] of  DiaSetmana (NomDia Dimarts))
([KB_096355_Class45] of  DiaSetmana (NomDia Dimecres))
([KB_096355_Class46] of  DiaSetmana (NomDia Dijous))
([KB_096355_Class47] of  DiaSetmana (NomDia Divendres))
([KB_096355_Class48] of  DiaSetmana (NomDia Dissabte))
([KB_096355_Class49] of  DiaSetmana (NomDia Diumenge))

([PlanificacioMenu_Class0] of  Lactic

	(Colesterol 0.024)
	(ContingutCaloric 134.0)
	(Fibra 0.0)
	(GreixosMonoinsaturats 2.0)
	(GreixosPolisaturats 0.5)
	(GreixosSaturats 4.6)
	(HidratsDeCarboni 10.55)
	(IngredientsPlat [PlanificacioMenu_Class3])
	(NomPlat "Got de llet sencera")
	(Proteines 6.8)
	(Sal 0.1)
	(Sucres 12.3))

([PlanificacioMenu_Class10] of  AltresIngredients

	(NomIngredient "Sucre"))

([PlanificacioMenu_Class10000] of  PrimerPlat

	(Colesterol 0.0025)
	(ContingutCaloric 176.0)
	(Fibra 2.3)
	(GreixosMonoinsaturats 0.2)
	(GreixosPolisaturats 0.4)
	(GreixosSaturats 0.3)
	(HidratsDeCarboni 35.8)
	(IngredientsPlat
		[PlanificacioMenu_Class10001]
		[PlanificacioMenu_Class10012]
		[PlanificacioMenu_Class10]
		[PlanMenu_Class50])
	(NomPlat "Macarrons amb tomaquet")
	(Proteines 5.6)
	(Sal 0.7)
	(Sucres 10.1))

([PlanificacioMenu_Class10001] of  Pasta

	(NomIngredient "Macarrons"))

([PlanificacioMenu_Class10002] of  Pasta

	(NomIngredient "Espaguetis"))

([PlanificacioMenu_Class10003] of  Pasta

	(NomIngredient "Raviolis"))

([PlanificacioMenu_Class10004] of  Pasta

	(NomIngredient "Tortelinis"))

([PlanificacioMenu_Class10009] of  Llegums

	(NomIngredient "Cigrons"))

([PlanificacioMenu_Class10010] of  Llegums

	(NomIngredient "Llenties"))

([PlanificacioMenu_Class10011] of  Fruita

	(NomIngredient "Llimona"))

([PlanificacioMenu_Class10012] of  Fruita

	(NomIngredient "Tomaquet"))

([PlanificacioMenu_Class10013] of  PrimerPlat

	(Colesterol 0.032)
	(ContingutCaloric 228.0)
	(Fibra 1.5)
	(GreixosMonoinsaturats 0.8)
	(GreixosPolisaturats 1.3)
	(GreixosSaturats 0.7)
	(HidratsDeCarboni 43.4)
	(IngredientsPlat [PlanificacioMenu_Class10014])
	(NomPlat "Arros fregit")
	(Proteines 6.5)
	(Sal 0.6)
	(Sucres 0.6))

([PlanificacioMenu_Class10014] of  Sencer

	(NomIngredient "Arros"))

([PlanificacioMenu_Class10015] of  PrimerPlat

	(Colesterol 0.0)
	(ContingutCaloric 365.0)
	(Fibra 1.3)
	(GreixosMonoinsaturats 0.2)
	(GreixosPolisaturats 0.2)
	(GreixosSaturats 0.2)
	(HidratsDeCarboni 80.0)
	(IngredientsPlat [PlanificacioMenu_Class10014])
	(NomPlat "Arros blanc")
	(Proteines 7.1)
	(Sal 0.1)
	(Sucres 0.1))

([PlanificacioMenu_Class10016] of  PrimerPlat

	(Colesterol 0.0)
	(ContingutCaloric 46.4)
	(Fibra 0.5)
	(GreixosMonoinsaturats 0.1)
	(GreixosPolisaturats 0.1)
	(GreixosSaturats 0.1)
	(HidratsDeCarboni 4.4)
	(IngredientsPlat
		[PlanMenu_Class50]
		[PlanMenu_Class53]
		[PlanificacioMenu_Class27]
		[PlanificacioMenu_Class10012]
		[PlanificacioMenu_Class10018]
		[PlanificacioMenu_Class10019]
		[PlanificacioMenu_Class10017]
		[PlanificacioMenu_Class10020])
	(NomPlat "Gazpacho")
	(Proteines 7.1)
	(Sal 0.7)
	(Sucres 1.4))

([PlanificacioMenu_Class10017] of  Altres

	(NomIngredient "Ceba"))

([PlanificacioMenu_Class10018] of  Altres

	(NomIngredient "Pebrot"))

([PlanificacioMenu_Class10019] of  Altres

	(NomIngredient "Cogombre"))

([PlanificacioMenu_Class10020] of  Altres

	(NomIngredient "All"))

([PlanificacioMenu_Class10022] of  PrimerPlat

	(Colesterol 0.0169)
	(ContingutCaloric 148.0)
	(Fibra 1.7)
	(GreixosMonoinsaturats 2.5)
	(GreixosPolisaturats 1.5)
	(GreixosSaturats 0.6)
	(HidratsDeCarboni 17.0)
	(IngredientsPlat
		[PlanMenu_Class32]
		[PlanificacioMenu_Class10017]
		[PlanMenu_Class57]
		[PlanificacioMenu_Class10024]
		[PlanificacioMenu_Class10026])
	(NomPlat "Sopa de pollastre")
	(Proteines 7.1)
	(Sal 1.7)
	(Sucres 3.0))

([PlanificacioMenu_Class10023] of  PrimerPlat

	(Colesterol 0.0)
	(ContingutCaloric 149.0)
	(Fibra 1.3)
	(GreixosMonoinsaturats 1.7)
	(GreixosPolisaturats 1.5)
	(GreixosSaturats 0.6)
	(HidratsDeCarboni 24.6)
	(IngredientsPlat
		[PlanificacioMenu_Class10020]
		[PlanMenu_Class57]
		[PlanificacioMenu_Class10018]
		[PlanificacioMenu_Class10024]
		[PlanificacioMenu_Class10025])
	(NomPlat "Sopa de verdures")
	(Proteines 4.3)
	(Sal 1.3)
	(Sucres 7.9))

([PlanificacioMenu_Class10024] of  Altres

	(NomIngredient "Api"))

([PlanificacioMenu_Class10025] of  Altres

	(NomIngredient "Carbasso"))

([PlanificacioMenu_Class10026] of  Altres

	(NomIngredient "Julivert"))

([PlanificacioMenu_Class10027] of  PrimerPlat

	(Colesterol 0.0050)
	(ContingutCaloric 99.0)
	(Fibra 1.6)
	(GreixosMonoinsaturats 1.6)
	(GreixosPolisaturats 0.2)
	(GreixosSaturats 1.4)
	(HidratsDeCarboni 13.7)
	(IngredientsPlat
		[PlanificacioMenu_Class10003]
		[PlanificacioMenu_Class10028])
	(NomPlat "Raviolis de carn")
	(Proteines 3.4)
	(Sal 0.4)
	(Sucres 2.4))

([PlanificacioMenu_Class10028] of  Carn

	(NomIngredient "Vedella"))

([PlanificacioMenu_Class10029] of  PrimerPlat

	(Colesterol 0.0080)
	(ContingutCaloric 164.0)
	(Fibra 1.2)
	(GreixosMonoinsaturats 2.2)
	(GreixosPolisaturats 1.0)
	(GreixosSaturats 1.6)
	(HidratsDeCarboni 23.1)
	(IngredientsPlat
		[PlanificacioMenu_Class10001]
		[PlanMenu_Class47])
	(NomPlat "Macarrons amb formatge")
	(Proteines 6.7)
	(Sal 0.5)
	(Sucres 1.6))

([PlanificacioMenu_Class10030] of  PrimerPlat

	(Colesterol 0.042)
	(ContingutCaloric 307.0)
	(Fibra 1.9)
	(GreixosMonoinsaturats 2.1)
	(GreixosPolisaturats 0.5)
	(GreixosSaturats 3.6)
	(HidratsDeCarboni 47.0)
	(IngredientsPlat
		[PlanificacioMenu_Class10004]
		[PlanMenu_Class47])
	(NomPlat "Tortelini de formatge")
	(Proteines 13.5)
	(Sal 0.4)
	(Sucres 0.9))

([PlanificacioMenu_Class10031] of  Guarnicio

	(Colesterol 0.0)
	(ContingutCaloric 23.0)
	(Fibra 2.4)
	(GreixosMonoinsaturats 0.1)
	(GreixosPolisaturats 0.1)
	(GreixosSaturats 0.1)
	(HidratsDeCarboni 3.8)
	(IngredientsPlat [PlanificacioMenu_Class10032])
	(NomPlat "Espinacs cuinats")
	(Proteines 3.0)
	(Sal 0.3)
	(Sucres 0.4))

([PlanificacioMenu_Class10032] of  Verd+Fosc

	(NomIngredient "Espinacs"))

([PlanificacioMenu_Class10033] of  PrimerPlat

	(Colesterol 0.0)
	(ContingutCaloric 336.0)
	(Fibra 0.0)
	(GreixosMonoinsaturats 0.2)
	(GreixosPolisaturats 0.2)
	(GreixosSaturats 0.1)
	(HidratsDeCarboni 74.6)
	(IngredientsPlat
		[PlanificacioMenu_Class10034]
		[PlanificacioMenu_Class10020]
		[PlanificacioMenu_Class10017]
		[PlanificacioMenu_Class10012]
		[PlanMenu_Class50]
		[PlanMenu_Class51]
		[PlanMenu_Class53]
		[PlanificacioMenu_Class10025]
		[PlanificacioMenu_Class10018])
	(NomPlat "Bol de fideus amb verdures")
	(Proteines 14.4)
	(Sal 0.8)
	(Sucres 0.8))

([PlanificacioMenu_Class10034] of  Pasta

	(NomIngredient "Fideus"))

([PlanificacioMenu_Class10035] of  PrimerPlat

	(Colesterol 0.0)
	(ContingutCaloric 139.0)
	(Fibra 6.3)
	(GreixosMonoinsaturats 0.1)
	(GreixosPolisaturats 0.2)
	(GreixosSaturats 0.1)
	(HidratsDeCarboni 25.1)
	(IngredientsPlat [PlanificacioMenu_Class10036])
	(NomPlat "Mongetes blanques")
	(Proteines 9.7)
	(Sal 0.2)
	(Sucres 0.3))

([PlanificacioMenu_Class10036] of  Llegums

	(NomIngredient "Mongetes blanques"))

([PlanificacioMenu_Class10037] of  PrimerPlat

	(Colesterol 0.0)
	(ContingutCaloric 269.0)
	(Fibra 12.5)
	(GreixosMonoinsaturats 1.0)
	(GreixosPolisaturats 1.9)
	(GreixosSaturats 0.4)
	(HidratsDeCarboni 45.0)
	(IngredientsPlat [PlanificacioMenu_Class10009])
	(NomPlat "Cigrons")
	(Proteines 14.5)
	(Sal 0.4)
	(Sucres 7.9))

([PlanificacioMenu_Class10038] of  PrimerPlat

	(Colesterol 0.0)
	(ContingutCaloric 44.0)
	(Fibra 4.0)
	(GreixosMonoinsaturats 0.1)
	(GreixosPolisaturats 0.2)
	(GreixosSaturats 0.1)
	(HidratsDeCarboni 9.9)
	(IngredientsPlat [PlanificacioMenu_Class10040])
	(NomPlat "Mongetes verdes")
	(Proteines 2.4)
	(Sal 0.3)
	(Sucres 1.9))

([PlanificacioMenu_Class10040] of  Llegums

	(NomIngredient "Mongetes verdes"))

([PlanificacioMenu_Class10041] of  PrimerPlat

	(Colesterol 0.0)
	(ContingutCaloric 226.0)
	(Fibra 15.6)
	(GreixosMonoinsaturats 0.1)
	(GreixosPolisaturats 0.3)
	(GreixosSaturats 0.1)
	(HidratsDeCarboni 0.0387)
	(IngredientsPlat [PlanificacioMenu_Class10010])
	(NomPlat "Llenties")
	(Proteines 17.9)
	(Sal 0.5)
	(Sucres 3.6))

([PlanificacioMenu_Class10042] of  PrimerPlat

	(Colesterol 0.0)
	(ContingutCaloric 84.0)
	(Fibra 5.5)
	(GreixosMonoinsaturats 0.1)
	(GreixosPolisaturats 0.1)
	(GreixosSaturats 0.1)
	(HidratsDeCarboni 15.6)
	(IngredientsPlat [PlanificacioMenu_Class10043])
	(NomPlat "Pesols")
	(Proteines 5.4)
	(Sal 0.2)
	(Sucres 5.9))

([PlanificacioMenu_Class10043] of  Verd+Fosc

	(NomIngredient "Pesols"))

([PlanificacioMenu_Class10044] of  PrimerPlat

	(Colesterol 0.011)
	(ContingutCaloric 113.0)
	(Fibra 1.5)
	(GreixosMonoinsaturats 1.1)
	(GreixosPolisaturats 0.2)
	(GreixosSaturats 2.6)
	(HidratsDeCarboni 16.8)
	(IngredientsPlat
		[PlanMenu_Class46]
		[PlanificacioMenu_Class10045]
		[PlanificacioMenu_Class3])
	(NomPlat "Pure de patata amb llet")
	(Proteines 1.9)
	(Sal 0.3)
	(Sucres 1.4))

([PlanificacioMenu_Class10045] of  Oli

	(NomIngredient "Mantega"))

([PlanificacioMenu_Class10046] of  PrimerPlat

	(Colesterol 0.0)
	(ContingutCaloric 87.0)
	(Fibra 2.0)
	(GreixosMonoinsaturats 0.1)
	(GreixosPolisaturats 0.1)
	(GreixosSaturats 0.1)
	(HidratsDeCarboni 20.1)
	(IngredientsPlat [PlanMenu_Class46])
	(NomPlat "Patat bullida")
	(Proteines 1.9)
	(Sal 0.2)
	(Sucres 0.9))

([PlanificacioMenu_Class10047] of  PrimerPlat

	(Colesterol 0.017)
	(ContingutCaloric 157.0)
	(Fibra 1.3)
	(GreixosMonoinsaturats 2.0)
	(GreixosPolisaturats 5.0)
	(GreixosSaturats 1.4)
	(HidratsDeCarboni 16.2)
	(IngredientsPlat
		[PlanMenu_Class50]
		[PlanificacioMenu_Class10048]
		[PlanificacioMenu_Class10049]
		[PlanMenu_Class46]
		[PlanMenu_Class53]
		[PlanificacioMenu_Class10024]
		[PlanificacioMenu_Class10017])
	(NomPlat "Amanida de patata i ou")
	(Proteines 2.0)
	(Sal 0.3)
	(Sucres 5.0))

([PlanificacioMenu_Class10048] of  Altres

	(NomIngredient "Olives"))

([PlanificacioMenu_Class10049] of  Ous

	(NomIngredient "Ous"))

([PlanificacioMenu_Class10050] of  Guarnicio

	(Colesterol 0.013)
	(ContingutCaloric 187.0)
	(Fibra 0.0)
	(GreixosMonoinsaturats 2.9)
	(GreixosPolisaturats 2.9)
	(GreixosSaturats 1.5)
	(HidratsDeCarboni 9.4)
	(IngredientsPlat
		[PlanMenu_Class56]
		[PlanificacioMenu_Class10012]
		[PlanificacioMenu_Class10051]
		[PlanificacioMenu_Class10052])
	(NomPlat "Amanida de tonyina")
	(Proteines 16.0)
	(Sal 0.4)
	(Sucres 0.0))

([PlanificacioMenu_Class10051] of  Altres

	(NomIngredient "Blat de moro"))

([PlanificacioMenu_Class10052] of  Peix

	(NomIngredient "Tonyina"))

([PlanificacioMenu_Class10053] of  Guarnicio

	(Colesterol 0.024)
	(ContingutCaloric 68.0)
	(Fibra 1.1)
	(GreixosMonoinsaturats 0.5)
	(GreixosPolisaturats 0.2)
	(GreixosSaturats 1.0)
	(HidratsDeCarboni 3.8)
	(IngredientsPlat
		[PlanificacioMenu_Class27]
		[PlanMenu_Class47]
		[PlanMenu_Class56]
		[PlanMenu_Class32]
		[PlanMenu_Class50]
		[PlanMenu_Class53])
	(NomPlat "Amanida cesar")
	(Proteines 9.8)
	(Sal 0.2)
	(Sucres 1.6))

([PlanificacioMenu_Class11] of  Lactic

	(Colesterol 0.0)
	(ContingutCaloric 68.0)
	(Fibra 0.5)
	(GreixosMonoinsaturats 0.0)
	(GreixosPolisaturats 0.1)
	(GreixosSaturats 0.0)
	(HidratsDeCarboni 10.1)
	(IngredientsPlat
		[PlanificacioMenu_Class12]
		[PlanificacioMenu_Class31])
	(NomPlat "Got de llet de soja")
	(Proteines 6.0)
	(Sal 0.1)
	(Sucres 8.9))

([PlanificacioMenu_Class12] of  Begudes

	(NomIngredient "Llet de soja"))

([PlanificacioMenu_Class14] of  Lactic

	(Colesterol 0.122)
	(ContingutCaloric 102.0)
	(Fibra 0.0)
	(GreixosMonoinsaturats 0.7)
	(GreixosPolisaturats 0.1)
	(GreixosSaturats 1.5)
	(HidratsDeCarboni 12.2)
	(IngredientsPlat [PlanificacioMenu_Class3])
	(NomPlat "Got de llet desnatada")
	(Proteines 8.2)
	(Sal 0.1)
	(Sucres 12.7))

([PlanificacioMenu_Class15] of  Lactic

	(Colesterol 0.0)
	(ContingutCaloric 340.0)
	(Fibra 0.0)
	(GreixosMonoinsaturats 4.0)
	(GreixosPolisaturats 10.3)
	(GreixosSaturats 2.6)
	(HidratsDeCarboni 15.5)
	(IngredientsPlat [PlanificacioMenu_Class32])
	(NomPlat "Formatge de tofu")
	(Proteines 28.1)
	(Sal 0.1)
	(Sucres 3.6))

([PlanificacioMenu_Class17] of  Lactic

	(Colesterol 0.0319)
	(ContingutCaloric 100.0)
	(Fibra 0.0)
	(GreixosMonoinsaturats 2.2)
	(GreixosPolisaturats 0.2)
	(GreixosSaturats 4.9)
	(HidratsDeCarboni 0.6)
	(IngredientsPlat [PlanificacioMenu_Class3])
	(NomPlat "Formatge gouda")
	(Proteines 7.0)
	(Sal 0.2)
	(Sucres 0.6))

([PlanificacioMenu_Class18] of  Lactic

	(Colesterol 0.023)
	(ContingutCaloric 95.0)
	(Fibra 0.0)
	(GreixosMonoinsaturats 1.8)
	(GreixosPolisaturats 0.2)
	(GreixosSaturats 4.4)
	(HidratsDeCarboni 1.3)
	(IngredientsPlat [PlanificacioMenu_Class3])
	(NomPlat "Formatge suis")
	(Proteines 6.7)
	(Sal 0.1)
	(Sucres 0.3))

([PlanificacioMenu_Class20] of  Lactic

	(Colesterol 0.025)
	(ContingutCaloric 93.0)
	(Fibra 0.0)
	(GreixosMonoinsaturats 2.1)
	(GreixosPolisaturats 0.3)
	(GreixosSaturats 4.5)
	(HidratsDeCarboni 0.9)
	(IngredientsPlat [PlanificacioMenu_Class3])
	(NomPlat "Formatge americà")
	(Proteines 4.5)
	(Sal 0.4)
	(Sucres 0.6))

([PlanificacioMenu_Class21] of  Lactic

	(Colesterol 0.0267)
	(ContingutCaloric 1.7)
	(Fibra 0.0)
	(GreixosMonoinsaturats 2.4)
	(GreixosPolisaturats 0.2)
	(GreixosSaturats 5.3)
	(HidratsDeCarboni 0.4)
	(IngredientsPlat [PlanificacioMenu_Class3])
	(NomPlat "Formatge edam")
	(Proteines 7.5)
	(Sal 0.3)
	(Sucres 0.4))

([PlanificacioMenu_Class22] of  Cereal

	(Colesterol 0.0)
	(ContingutCaloric 74.0)
	(Fibra 0.8)
	(GreixosMonoinsaturats 0.2)
	(GreixosPolisaturats 0.4)
	(GreixosSaturats 0.2)
	(HidratsDeCarboni 13.7)
	(IngredientsPlat
		[PlanMenu_Class53]
		[PlanificacioMenu_Class27])
	(NomPlat "Pa blanc")
	(Proteines 2.6)
	(Sal 0.1)
	(Sucres 1.4))

([PlanificacioMenu_Class23] of  Cereal

	(Colesterol 0.0)
	(ContingutCaloric 58.0)
	(Fibra 0.3)
	(GreixosMonoinsaturats 0.9)
	(GreixosPolisaturats 0.3)
	(GreixosSaturats 1.2)
	(HidratsDeCarboni 7.8)
	(IngredientsPlat
		[PlanificacioMenu_Class33]
		[PlanificacioMenu_Class10]
		[PlanificacioMenu_Class9])
	(NomPlat "Galetes amb xocolata")
	(Proteines 0.6)
	(Sal 0.1)
	(Sucres 4.3))

([PlanificacioMenu_Class24] of  Cereal

	(Colesterol 0.0)
	(ContingutCaloric 12.0)
	(Fibra 2.8)
	(GreixosMonoinsaturats 0.5)
	(GreixosPolisaturats 1.4)
	(GreixosSaturats 0.4)
	(HidratsDeCarboni 0.0236)
	(IngredientsPlat
		[PlanMenu_Class53]
		[PlanificacioMenu_Class28]
		[PlanificacioMenu_Class30])
	(NomPlat "Pa integral")
	(Proteines 3.9)
	(Sal 0.2)
	(Sucres 1.8))

([PlanificacioMenu_Class25] of  Cereal

	(NomPlat "Cereals"))

([PlanificacioMenu_Class26] of  Cereal

	(Colesterol 0.0)
	(ContingutCaloric 82.0)
	(Fibra 1.9)
	(GreixosMonoinsaturats 0.4)
	(GreixosPolisaturats 0.3)
	(GreixosSaturats 0.2)
	(HidratsDeCarboni 15.4)
	(IngredientsPlat
		[PlanMenu_Class53]
		[PlanificacioMenu_Class29])
	(NomPlat "Pa de sègol")
	(Proteines 2.7)
	(Sal 0.2)
	(Sucres 1.2))

([PlanificacioMenu_Class27] of  Pa

	(NomIngredient "Pa blanc"))

([PlanificacioMenu_Class28] of  Pa

	(NomIngredient "Pa integral"))

([PlanificacioMenu_Class29] of  Pa

	(NomIngredient "Pa de sègol"))

([PlanificacioMenu_Class3] of  Begudes

	(NomIngredient "Llet"))

([PlanificacioMenu_Class30] of  Soja+%2F+Fruits+Secs

	(NomIngredient "Pipes"))

([PlanificacioMenu_Class31] of  Soja+%2F+Fruits+Secs

	(NomIngredient "Soja"))

([PlanificacioMenu_Class32] of  Soja+%2F+Fruits+Secs

	(NomIngredient "Tofu"))

([PlanificacioMenu_Class33] of  Sencer

	(NomIngredient "Farina"))

([PlanificacioMenu_Class34] of  Cereal

	(Colesterol 0.0)
	(ContingutCaloric 113.0)
	(Fibra 0.7)
	(GreixosMonoinsaturats 2.5)
	(GreixosPolisaturats 0.6)
	(GreixosSaturats 1.1)
	(HidratsDeCarboni 17.2)
	(IngredientsPlat
		[PlanificacioMenu_Class35]
		[PlanificacioMenu_Class10]
		[PlanificacioMenu_Class33])
	(NomPlat "Galetes integrals")
	(Proteines 1.6)
	(Sal 0.1)
	(Sucres 6.2))

([PlanificacioMenu_Class35] of  Sencer

	(NomIngredient "Civada"))

([PlanificacioMenu_Class37] of  Fruites

	(Colesterol 0.0)
	(ContingutCaloric 95.0)
	(Fibra 4.4)
	(GreixosMonoinsaturats 0.1)
	(GreixosPolisaturats 0.1)
	(GreixosSaturats 0.1)
	(HidratsDeCarboni 25.1)
	(IngredientsPlat [PlanMenu_Class29])
	(NomPlat "Poma")
	(Proteines 0.5)
	(Sal 0.1)
	(Sucres 18.9))

([PlanificacioMenu_Class38] of  Fruites

	(Colesterol 0.0)
	(ContingutCaloric 112.0)
	(Fibra 0.5)
	(GreixosMonoinsaturats 0.1)
	(GreixosPolisaturats 0.1)
	(GreixosSaturats 0.1)
	(HidratsDeCarboni 25.8)
	(IngredientsPlat
		[PlanificacioMenu_Class39]
		[PlanificacioMenu_Class10])
	(NomPlat "Suc de taronja")
	(Proteines 1.7)
	(Sal 0.1)
	(Sucres 20.8))

([PlanificacioMenu_Class39] of  Fruita

	(NomIngredient "Taronja"))

([PlanificacioMenu_Class4] of  Lactic

	(Colesterol 0.0319)
	(ContingutCaloric 149.0)
	(Fibra 0.0)
	(GreixosMonoinsaturats 2.2)
	(GreixosPolisaturats 0.2)
	(GreixosSaturats 5.1)
	(HidratsDeCarboni 11.4)
	(IngredientsPlat [PlanificacioMenu_Class3])
	(NomPlat "Iogurt natural")
	(Proteines 8.5)
	(Sal 0.1)
	(Sucres 11.4))

([PlanificacioMenu_Class40] of  Fruites

	(Colesterol 0.0)
	(ContingutCaloric 86.0)
	(Fibra 4.4)
	(GreixosMonoinsaturats 0.1)
	(GreixosPolisaturats 0.1)
	(GreixosSaturats 0.1)
	(HidratsDeCarboni 21.6)
	(IngredientsPlat [PlanificacioMenu_Class39])
	(NomPlat "Taronja")
	(Proteines 1.7)
	(Sal 0.0)
	(Sucres 17.2))

([PlanificacioMenu_Class41] of  Fruites

	(Colesterol 0.0)
	(ContingutCaloric 35.0)
	(Fibra 1.3)
	(GreixosMonoinsaturats 0.0)
	(GreixosPolisaturats 0.0)
	(GreixosSaturats 0.0)
	(HidratsDeCarboni 8.9)
	(IngredientsPlat [PlanificacioMenu_Class42])
	(NomPlat "Mandarina")
	(Proteines 0.6)
	(Sal 0.1)
	(Sucres 6.8))

([PlanificacioMenu_Class42] of  Fruita

	(NomIngredient "Mandarina"))

([PlanificacioMenu_Class43] of  Fruites

	(Colesterol 0.0)
	(ContingutCaloric 45.0)
	(Fibra 1.3)
	(GreixosMonoinsaturats 0.1)
	(GreixosPolisaturats 0.1)
	(GreixosSaturats 0.1)
	(HidratsDeCarboni 11.8)
	(IngredientsPlat [PlanificacioMenu_Class44])
	(NomPlat "Pinya")
	(Proteines 0.5)
	(Sal 0.1)
	(Sucres 8.9))

([PlanificacioMenu_Class44] of  Fruita

	(NomIngredient "Pinya"))

([PlanificacioMenu_Class45] of  Fruites

	(Colesterol 0.0)
	(ContingutCaloric 125.0)
	(Fibra 0.3)
	(GreixosMonoinsaturats 0.0)
	(GreixosPolisaturats 0.0)
	(GreixosSaturats 0.0)
	(HidratsDeCarboni 29.5)
	(IngredientsPlat
		[PlanificacioMenu_Class10]
		[PlanificacioMenu_Class44])
	(NomPlat "Suc de pinya")
	(Proteines 3.3)
	(Sal 0.1)
	(Sucres 29.0))

([PlanificacioMenu_Class46] of  Fruites

	(Colesterol 0.0)
	(ContingutCaloric 86.0)
	(Fibra 1.1)
	(GreixosMonoinsaturats 0.1)
	(GreixosPolisaturats 0.1)
	(GreixosSaturats 0.1)
	(HidratsDeCarboni 21.6)
	(IngredientsPlat [PlanificacioMenu_Class47])
	(NomPlat "Sindria")
	(Proteines 1.7)
	(Sal 0.1)
	(Sucres 17.7))

([PlanificacioMenu_Class47] of  Fruita

	(NomIngredient "Sindria"))

([PlanificacioMenu_Class48] of  Fruites

	(Colesterol 0.0)
	(ContingutCaloric 64.0)
	(Fibra 1.4)
	(GreixosMonoinsaturats 0.1)
	(GreixosPolisaturats 0.1)
	(GreixosSaturats 0.1)
	(HidratsDeCarboni 16.1)
	(IngredientsPlat [PlanificacioMenu_Class49])
	(NomPlat "Meló")
	(Proteines 1.0)
	(Sal 0.1)
	(Sucres 14.4))

([PlanificacioMenu_Class49] of  Fruita

	(NomIngredient "Melo"))

([PlanificacioMenu_Class50] of  Fruites

	(Colesterol 0.0)
	(ContingutCaloric 101.0)
	(Fibra 5.5)
	(GreixosMonoinsaturats 0.1)
	(GreixosPolisaturats 0.2)
	(GreixosSaturats 0.1)
	(HidratsDeCarboni 27.1)
	(IngredientsPlat [PlanificacioMenu_Class51])
	(NomPlat "Pera")
	(Proteines 0.6)
	(Sal 0.1)
	(Sucres 17.4))

([PlanificacioMenu_Class51] of  Fruita

	(NomIngredient "Pera"))

([PlanificacioMenu_Class52] of  Fruites

	(Colesterol 0.0)
	(ContingutCaloric 17.0)
	(Fibra 0.7)
	(GreixosMonoinsaturats 0.1)
	(GreixosPolisaturats 0.1)
	(GreixosSaturats 0.1)
	(HidratsDeCarboni 3.9)
	(IngredientsPlat [PlanificacioMenu_Class53])
	(NomPlat "Albercoc")
	(Proteines 0.5)
	(Sal 0.1)
	(Sucres 3.2))

([PlanificacioMenu_Class53] of  Fruita

	(NomIngredient "Albercoc"))

([PlanificacioMenu_Class54] of  Fruites

	(Colesterol 0.0)
	(ContingutCaloric 35.0)
	(Fibra 0.5)
	(GreixosMonoinsaturats 0.1)
	(GreixosPolisaturats 0.1)
	(GreixosSaturats 0.1)
	(HidratsDeCarboni 9.1)
	(IngredientsPlat [PlanificacioMenu_Class55])
	(NomPlat "Raim")
	(Proteines 0.4)
	(Sal 0.1)
	(Sucres 7.7))

([PlanificacioMenu_Class55] of  Fruita

	(NomIngredient "Raim"))

([PlanificacioMenu_Class56] of  Fruites

	(Colesterol 0.0)
	(ContingutCaloric 134.0)
	(Fibra 1.5)
	(GreixosMonoinsaturats 0.1)
	(GreixosPolisaturats 0.1)
	(GreixosSaturats 0.1)
	(HidratsDeCarboni 34.7)
	(IngredientsPlat
		[PlanificacioMenu_Class57]
		[PlanificacioMenu_Class10])
	(NomPlat "Suc de pressec")
	(Proteines 0.7)
	(Sal 0.1)
	(Sucres 26.0))

([PlanificacioMenu_Class57] of  Fruita

	(NomIngredient "Pressec"))

([PlanificacioMenu_Class58] of  Fruites

	(Colesterol 0.0)
	(ContingutCaloric 51.0)
	(Fibra 1.7)
	(GreixosMonoinsaturats 0.1)
	(GreixosPolisaturats 0.1)
	(GreixosSaturats 0.1)
	(HidratsDeCarboni 12.8)
	(IngredientsPlat [PlanificacioMenu_Class59])
	(NomPlat "Cireres")
	(Proteines 0.8)
	(Sal 0.0)
	(Sucres 10.3))

([PlanificacioMenu_Class59] of  Fruita

	(NomIngredient "Cireres"))

([PlanificacioMenu_Class6] of  Lactic

	(Colesterol 0.0123)
	(ContingutCaloric 243.0)
	(Fibra 0.0)
	(GreixosMonoinsaturats 0.8)
	(GreixosPolisaturats 0.1)
	(GreixosSaturats 1.8)
	(HidratsDeCarboni 45.7)
	(IngredientsPlat
		[PlanificacioMenu_Class3]
		[PlanMenu_Class28]
		[PlanificacioMenu_Class10])
	(NomPlat "Iogurt de maduixa")
	(Proteines 9.8)
	(Sal 0.1)
	(Sucres 45.7))

([PlanificacioMenu_Class60] of  Fruites

	(Colesterol 0.0)
	(ContingutCaloric 59.0)
	(Fibra 2.3)
	(GreixosMonoinsaturats 0.1)
	(GreixosPolisaturats 0.1)
	(GreixosSaturats 0.1)
	(HidratsDeCarboni 14.3)
	(IngredientsPlat [PlanificacioMenu_Class57])
	(NomPlat "Pressec")
	(Proteines 1.4)
	(Sal 0.0)
	(Sucres 12.6))

([PlanificacioMenu_Class8] of  Lactic

	(Colesterol 0.015)
	(ContingutCaloric 168.0)
	(Fibra 1.8)
	(GreixosMonoinsaturats 0.0)
	(GreixosPolisaturats 0.0)
	(GreixosSaturats 0.0)
	(HidratsDeCarboni 35.3)
	(IngredientsPlat
		[PlanificacioMenu_Class3]
		[PlanificacioMenu_Class9]
		[PlanificacioMenu_Class10])
	(NomPlat "Iogurt de xocolata")
	(Proteines 5.3)
	(Sal 0.2)
	(Sucres 22.5))

([PlanificacioMenu_Class9] of  AltresIngredients

	(NomIngredient "Xocolata"))

([PlanMenu_Class25] of  Dinar

	(GuarnicioMenu [PlanMenu_Class55])
	(PostreMenu [PlanMenu_Class26])
	(PrimerPlatMenu [PlanMenu_Class43])
	(SegonPlatMenu [PlanMenu_Class42]))

([PlanMenu_Class26] of  Postre

	(IngredientsPlat
		[PlanMenu_Class27]
		[PlanMenu_Class28]
		[PlanMenu_Class29])
	(NomPlat "Amanida de fruites"))

([PlanMenu_Class27] of  Fruita

	(NomIngredient "Kiwi"))

([PlanMenu_Class28] of  Fruita

	(NomIngredient "Maduixa"))

([PlanMenu_Class29] of  Fruita

	(NomIngredient "Poma"))

([PlanMenu_Class32] of  Carn

	(NomIngredient "Pollastre"))

([PlanMenu_Class42] of  SegonPlat

	(Colesterol 0.143)
	(ContingutCaloric 275.0)
	(Fibra 0.0)
	(GreixosMonoinsaturats 5.5)
	(GreixosPolisaturats 1.8)
	(GreixosSaturats 3.1)
	(HidratsDeCarboni 0.0)
	(IngredientsPlat [PlanMenu_Class32])
	(NomPlat "Pollastre a l'ast")
	(Proteines 41.0)
	(Sal 0.519)
	(Sucres 0.0))

([PlanMenu_Class43] of  PrimerPlat

	(Colesterol 0.014)
	(ContingutCaloric 109.0)
	(Fibra 2.9)
	(GreixosMonoinsaturats 1.8)
	(GreixosPolisaturats 0.271)
	(GreixosSaturats 4.118)
	(HidratsDeCarboni 6.88)
	(IngredientsPlat
		[PlanMenu_Class44]
		[PlanMenu_Class46]
		[PlanMenu_Class47]
		[PlanMenu_Class48]
		[PlanMenu_Class50]
		[PlanMenu_Class51]
		[PlanMenu_Class53])
	(NomPlat "Crema de carbassa")
	(Proteines 2.96)
	(Sal 1.688)
	(Sucres 4.11))

([PlanMenu_Class44] of  Vermell+%2F+Taronja

	(NomIngredient "Carbassa"))

([PlanMenu_Class46] of  Mid%C3%B3

	(NomIngredient "Patata"))

([PlanMenu_Class47] of  Lactics

	(NomIngredient "Formatge"))

([PlanMenu_Class48] of  Carn

	(NomIngredient "Pernil"))

([PlanMenu_Class50] of  Oli

	(NomIngredient "Oli d'oliva"))

([PlanMenu_Class51] of  Begudes

	(NomIngredient "Aigua"))

([PlanMenu_Class53] of  AltresIngredients

	(NomIngredient "Sal"))

([PlanMenu_Class55] of  Guarnicio

	(Colesterol 0.0)
	(ContingutCaloric 19.0)
	(Fibra 1.7)
	(GreixosMonoinsaturats 0.0)
	(GreixosPolisaturats 0.0)
	(GreixosSaturats 0.0)
	(HidratsDeCarboni 2.2)
	(IngredientsPlat
		[PlanMenu_Class56]
		[PlanMenu_Class57]
		[PlanMenu_Class58])
	(NomPlat "Amanida quatre estacions")
	(Proteines 1.0)
	(Sal 0.024)
	(Sucres 2.8))

([PlanMenu_Class56] of  Verd+Fosc

	(NomIngredient "Enciam Iceberg"))

([PlanMenu_Class57] of  Vermell+%2F+Taronja

	(NomIngredient "Pastanaga"))

([PlanMenu_Class58] of  Vermell+%2F+Taronja

	(NomIngredient "Col llombarda")))





;-----------------------------------------------------------------------
;------------------------------ PREGUNTES ------------------------------
;-----------------------------------------------------------------------


; ----- Pregunta amb una llista de respostes vàlides -----
(deffunction ask-question (?question $?allowed-values)
   	(printout t ?question)
   	(bind ?answer (read))
   	(if (lexemep ?answer) then (
   		bind ?answer (lowcase ?answer))
   	)
   	(while (not (member ?answer ?allowed-values)) do
    	(printout t ?question)
      	(bind ?answer (read))
   	)
   	?answer
)

; ----- Pregunta per saber l'edat -----
(deffunction edat-p ()
	(printout t "Indica la teva edat: ")
	(bind ?answer (read))
	(while (not (and (>= ?answer 0) (<= ?answer 100)))
		(printout t "Indica una edat vàlida: ")
		(bind ?answer (read))
	)
	(return ?answer)
)

; ----- Pregunta de si o no ------
(deffunction si-o-no-p (?question)
	(bind ?response (ask-question ?question si no s n))
	(if (or (eq ?response si) (eq ?response s))	
		then TRUE 
		else FALSE
	)
)


(defmessage-handler Usuari printInfo primary ()
	(printout t "--------------------------" crlf)
	(printout t "Informacio del usuari:" crlf)
	(printout t "  Edat: ")
	(printout t ?self:Edat crlf)
	(printout t "  Sexe: ")
	(printout t ?self:Sexe crlf)
	(printout t "  Nivell activitat fisica: ")
	(printout t ?self:Activitat+Fisica crlf)
	(printout t "--------------------------" crlf)
)


;-----------------------------------------------------------------------
;--------------------------------- MAIN --------------------------------
;-----------------------------------------------------------------------


(defmodule MAIN (export ?ALL))

(defrule MAIN::initialRule "Regla inicial"
	(declare (salience 10)) 
	=>
	(printout t crlf)
	(printout t "Benvinguts al nostre projecte! :)" crlf)
	(printout t "A continuacio es demanaran unes quantes dades de l'usuari per tal de poder ajustar al maxim la dieta a les seves necessitats:" crlf)
	(printout t crlf)
	(focus modulDePreguntes)
)


;-----------------------------------------------------------------------
;-------------------------- MODUL DE PREGUNTES -------------------------
;-----------------------------------------------------------------------


(defmodule modulDePreguntes "Modul amb les preguntes a fer a l'usuari"
	(import MAIN ?ALL)
	(export ?ALL)
)


(defrule creaUsuari ""
	(declare (salience 10)) 
	?usuari <- (object (is-a Usuari))
    =>
	(printout t crlf)
	(bind ?edat (edat-p))
	(send ?usuari put-Edat ?edat)
	(printout t crlf)
	(bind ?sexe (ask-question "Indica el teu sexe (home/dona):" home dona))
	(send ?usuari put-Sexe ?sexe)
	(printout t crlf)
	(bind ?nivellActFisica (ask-question "Indica el teu nivell d'activitat fisica (poca/normal/molta):" poca normal molta))
	(send ?usuari put-Activitat+Fisica ?nivellActFisica)
	(printout t crlf)
	(printout t "Tenim en compte les seguents alergies i intolerancies: " crlf)
	(printout t " * Alergies : gluten, crustacis, ous, peix, cacauets, soja," crlf)
	(printout t "     llet, fruitsSecs, api, mostassa i sesam" crlf)
	(printout t " * Intolerancies : gluten, lactosa, histamina i fructosa" crlf)
	(printout t crlf)
	(while (si-o-no-p "Tens alguna alergia o intolerancia d'entre les anteriors de la que vulguis informar? (si/no)")
		(bind ?problema (ask-question "Quina? (afegeix una A o una I davant segons si es alergia o intolerancia - per exemple, Acrustacis)" Agluten Acrustacis Aous Apeix Acacauets Asoja Allet AfruitsSecs Aapi Amostassa Asesam Igluten Ifactosa Ihistamina Ifructosa))
		(slot-insert$ ?usuari MalaltiaUsuari 1 ?problema)
	)
	(printout t crlf)
	(printout t "Tenim en compte les seguent malalties: diabetis, hipertensio," crlf)
	(printout t "osteoporosis, hiperunicemia, disfagia, hiperlipemia, gota," crlf)
	(printout t "hipertrigliceridemia, colesterol, cardiopatiaIsquemica " crlf)
	(printout t crlf)
	(while (si-o-no-p "Vols informar d'alguna d'entre les anteriors malalties? (si/no)")		
		(bind ?malaltia (ask-question "Quina?" diabetis hipertensio osteoporosis disfagia hiperunicemia hiperlipemia gota hipertrigliceridemia colesterol cardiopatiaIsquemica))
		(slot-insert$ ?usuari MalaltiaUsuari 1 ?malaltia)
	)
	(printout t crlf)
	(printout t "Donada la seguent llista d'aliments: carn, peix, ous, cereals, tubercles, arros " crlf)
	(printout t "verdures, hortalises, fruita, llegums, llet, iogurt, formatge, amanida i pa" crlf)
	(printout t crlf)
	(while (si-o-no-p "Desitges evitar o minimitzar el consum d'algun d'ells? (si/no)")
		(bind ?evitar (ask-question "De quin?" carn peix ous cereals tubercles arros verdures hortalises fruita llegums llet iogurt formatge amanida pa))
		(slot-insert$ ?usuari RestriccioAlimenticiaUsuari 1 ?evitar)
	)
	(send ?usuari printInfo)
)


(defrule saltaAlModulDeRecomanacions ""
	(declare (salience 0))
	=> (focus modulRecomanacions)
)


;-----------------------------------------------------------------------
;--------------------- MODUL D'INFERENCIA DE DADES ---------------------
;-----------------------------------------------------------------------


;(defmodule modulDInferenciaDeDades "Modul per a la inferencia de dades"
;	(import MAIN ?ALL)
;	(import modulDePreguntes ?ALL)
;	(export ?ALL)
;)


; si té una alergia no pot menjar els aliments que ho continguin => molt dolent
; si té una intolerancia no hauria de menjar els aliments que ho continguin, però no mor si en menja => dolent
; si no volen menjar algo, reduir-ne el consum
; colesterol, cardiopatiaIsquemica o hipertensio => reduir sal (<5g/dia) i reduir grassa total (preferible menjar amb poca grasa saturada)
; diabetis => menjar amb molta fibra, fruites i hortalises (5 al dia entre els 2 :/ ), reduir sal (<5g/dia) i reduir grassa total (preferible menjar amb poca grasa saturada)
; osteoporosis => menjar més vegetals, carn, peix, llegums i lactics i reduir sal
; disfagia => menjar tot triturat o cremes i pures
; hiperlipemia => reduir grases (sobretot saturades), menjar molta carn, peix i ous i vegetals i fruites
; hipertrigliceridemia => més de 4 cops per setmana de peix, cada dia una fruita i una verdura, reduir sal i grases
; hiperunicemia, gota => evitar marisc, reduir carn i llegums
; el 100% de les calories ha d'estar compost en un 50-60% d'hidrats de carboni, un 30-35% de grases i un 10-12% de proteines
; cal menjar menys de 300mg de colesterol al dia
; el consum de calories depen segons la edat i el nivell d'activitat física

;(defrule saltaAlModulDeRecomanacions ""
;	=> (focus modulRecomanacions)
;)



;-----------------------------------------------------------------------
;----------------------- MODUL DE RECOMANACIONS ------------------------
;-----------------------------------------------------------------------


(defmodule modulRecomanacions "Modul de les recomanacions"
	(import MAIN ?ALL)
	(import modulDePreguntes ?ALL)
	;(import modulDInferenciaDeDades ?ALL)
	(export ?ALL)
)


(deffunction sort_puntuacio (?e1 ?e2) "Funcio amb la comparacio per ordenar plats de millor a pitjor"
	(< (send ?e1 get-Puntuacio) (send ?e2 get-Puntuacio))
)


(defmessage-handler Plats printInfoPlat primary ()
	(printout t ?self:NomPlat)
)

(defmessage-handler Esmorzar printInfoEsmorzar primary ()
	(printout t "  *  Esmorzar: " )
	(send ?self:CerealMenu printInfoPlat)
	(printout t " + ")
	(send ?self:FruitaMenu printInfoPlat)
	(printout t " + ")
	(send ?self:LacticMenu printInfoPlat)
	(printout t crlf)
)


(defmessage-handler Dinar printInfoDinar primary ()
	(printout t "  *  Dinar: " )
	(send ?self:PrimerPlatMenu printInfoPlat)
	(printout t " + ")
	(send ?self:SegonPlatMenu printInfoPlat)
	(printout t " + ")
	(send ?self:GuarnicioMenu printInfoPlat)
	(printout t " + ")
	(send ?self:PostreMenu printInfoPlat)
	(printout t crlf)
)

(defmessage-handler Sopar printInfoSopar primary ()
	(printout t "  *  Sopar: " )
	(send ?self:PrimerPlatMenu printInfoPlat)
	(printout t " + ")
	(send ?self:SegonPlatMenu printInfoPlat)
	(printout t " + ")
	(send ?self:GuarnicioMenu printInfoPlat)
	(printout t " + ")
	(send ?self:PostreMenu printInfoPlat)
	(printout t crlf)
)

(defrule triaEsmorzar
	=>
	(bind ?usuari (nth$ 1 (find-all-instances ((?i Usuari)) TRUE)))
	(bind ?lactics (find-all-instances ((?i Lactic)) TRUE))
	(bind ?fruites (find-all-instances ((?i Fruites)) TRUE))
	(bind ?cereals (find-all-instances ((?i Cereal)) TRUE))	
	(bind ?primersPlats (find-all-instances ((?i PrimerPlat)) TRUE))
	(bind ?segonsPlats (find-all-instances ((?i SegonPlat)) TRUE))
	(bind ?guarnicions (find-all-instances ((?i Guarnicio)) TRUE))
	(bind ?postres (find-all-instances ((?i Postre)) TRUE))
	(sort sort_puntuacio lactics)
	(sort sort_puntuacio fruites)
	(sort sort_puntuacio cereals)
	(sort sort_puntuacio primersPlats)
	(sort sort_puntuacio segonsPlats)
	(sort sort_puntuacio guarnicions)
	(sort sort_puntuacio postres)

	(bind ?d1 (find-all-instances ((?i DiaSetmana)) (eq NomDia "Dilluns")))
	(bind ?d2 (find-all-instances ((?i DiaSetmana)) (eq NomDia "Dimarts")))
	(bind ?d3 (find-all-instances ((?i DiaSetmana)) (eq NomDia "Dimecres")))
	(bind ?d4 (find-all-instances ((?i DiaSetmana)) (eq NomDia "Dijous")))
	(bind ?d5 (find-all-instances ((?i DiaSetmana)) (eq NomDia "Divendres")))
	(bind ?d6 (find-all-instances ((?i DiaSetmana)) (eq NomDia "Dissabte")))
	(bind ?d7 (find-all-instances ((?i DiaSetmana)) (eq NomDia "Diumenge")))
	
	(bind ?eDilluns (make-instance eDilluns of Esmorzar))
	(bind ?dDilluns (make-instance dDilluns of Dinar))
	(bind ?sDilluns (make-instance sDilluns of Sopar))
	(bind ?eDimarts (make-instance eDimarts of Esmorzar))
	(bind ?dDimarts (make-instance dDimarts of Dinar))
	(bind ?sDimarts (make-instance sDimarts of Sopar))
	(bind ?eDimecres (make-instance eDimecres of Esmorzar))
	(bind ?dDimecres (make-instance dDimecres of Dinar))
	(bind ?sDimecres (make-instance sDimecres of Sopar))
	(bind ?eDijous (make-instance eDijous of Esmorzar))
	(bind ?dDijous (make-instance dDijous of Dinar))
	(bind ?sDijous (make-instance sDijous of Sopar))
	(bind ?eDivendres (make-instance eDivendres of Esmorzar))
	(bind ?dDivendres (make-instance dDivendres of Dinar))
	(bind ?sDivendres (make-instance sDivendres of Sopar))
	(bind ?eDissabte (make-instance eDissabte of Esmorzar))
	(bind ?dDissabte (make-instance dDissabte of Dinar))
	(bind ?sDissabte (make-instance sDissabte of Sopar))
	(bind ?eDiumenge (make-instance eDiumenge of Esmorzar))
	(bind ?dDiumenge (make-instance dDiumenge of Dinar))
	(bind ?sDiumenge (make-instance sDiumenge of Sopar))

	; ------------------------ ESMORZAR - LACTICS -------------------------

	(bind ?it 1)
	(bind ?lacticsPerEsmorzar (create$))
	(while (< (length ?lacticsPerEsmorzar) 7) do
		(if (> ?it (length ?lactics)) then (bind ?it 1)) ; si m'he sortit de la llista torno a començar
		(bind ?l (nth$ ?it ?lactics))
		(bind ?p1 (send ?l get-Puntuacio)) ; agafo l'element a la posicio it de la llista
		(if (< ?p1 0)
			then (bind ?it 1)   ; si té puntuació negativa no m'interessa ni ell ni els seguents per tant torno a començar
			else (bind ?lacticsPerEsmorzar (create$ ?lacticsPerEsmorzar ?l)) ; sinó l'afegeixo a la llista
		)
		(bind ?it (+ ?it 1))
	)
	(bind ?lactic1 (nth$ 1 ?lacticsPerEsmorzar))
	(bind ?lactic2 (nth$ 2 ?lacticsPerEsmorzar))
	(bind ?lactic3 (nth$ 3 ?lacticsPerEsmorzar))
	(bind ?lactic4 (nth$ 4 ?lacticsPerEsmorzar))
	(bind ?lactic5 (nth$ 5 ?lacticsPerEsmorzar))
	(bind ?lactic6 (nth$ 6 ?lacticsPerEsmorzar))
	(bind ?lactic7 (nth$ 7 ?lacticsPerEsmorzar))
	(send ?eDilluns put-LacticMenu ?lactic1)
	(send ?eDimarts put-LacticMenu ?lactic2)
	(send ?eDimecres put-LacticMenu ?lactic3)
	(send ?eDijous put-LacticMenu ?lactic4)
	(send ?eDivendres put-LacticMenu ?lactic5)
	(send ?eDissabte put-LacticMenu ?lactic6)
	(send ?eDiumenge put-LacticMenu ?lactic7)

	; ------------------------ ESMORZAR - CEREALS -------------------------
	
	(bind ?it 1)
	(bind ?cerealsPerEsmorzar (create$))
	(while (< (length ?cerealsPerEsmorzar) 7) do
		(if (> ?it (length ?cereals)) then (bind ?it 1)) ; si m'he sortit de la llista torno a començar
		(bind ?c (nth$ ?it ?cereals))
		(bind ?p2 (send ?c get-Puntuacio)) ; agafo l'element a la posicio it de la llista
		(if (< ?p2 0)
			then (bind ?it 1)   ; si té puntuació negativa no m'interessa ni ell ni els seguents per tant torno a començar
			else (bind ?cerealsPerEsmorzar (create$ ?cerealsPerEsmorzar ?c)) ; sinó l'afegeixo a la llista
		)
		(bind ?it (+ ?it 1))
	)	
	(bind ?cereal1 (nth$ 1 ?cerealsPerEsmorzar))
	(bind ?cereal2 (nth$ 2 ?cerealsPerEsmorzar))
	(bind ?cereal3 (nth$ 3 ?cerealsPerEsmorzar))
	(bind ?cereal4 (nth$ 4 ?cerealsPerEsmorzar))
	(bind ?cereal5 (nth$ 5 ?cerealsPerEsmorzar))
	(bind ?cereal6 (nth$ 6 ?cerealsPerEsmorzar))
	(bind ?cereal7 (nth$ 7 ?cerealsPerEsmorzar))
	(send ?eDilluns put-CerealMenu ?cereal1)
	(send ?eDimarts put-CerealMenu ?cereal2)
	(send ?eDimecres put-CerealMenu ?cereal3)
	(send ?eDijous put-CerealMenu ?cereal4)
	(send ?eDivendres put-CerealMenu ?cereal5)
	(send ?eDissabte put-CerealMenu ?cereal6)
	(send ?eDiumenge put-CerealMenu ?cereal7)

	; ------------------------ ESMORZAR - FRUITA -------------------------
	
	(bind ?it 1)
	(bind ?fruitesPerEsmorzar (create$))
	(while (< (length ?fruitesPerEsmorzar) 7) do
		(if (> ?it (length ?fruites)) then (bind ?it 1)) ; si m'he sortit de la llista torno a començar
		(bind ?f (nth$ ?it ?fruites))
		(bind ?p3 (send ?f get-Puntuacio)) ; agafo l'element a la posicio it de la llista
		(if (< ?p3 0)
			then (bind ?it 1)   ; si té puntuació negativa no m'interessa ni ell ni els seguents per tant torno a començar
			else (bind ?fruitesPerEsmorzar (create$ ?fruitesPerEsmorzar ?f)) ; sinó l'afegeixo a la llista
		)
		(bind ?it (+ ?it 1))
	)	
	(bind ?fruita1 (nth$ 1 ?fruitesPerEsmorzar))
	(bind ?fruita2 (nth$ 2 ?fruitesPerEsmorzar))
	(bind ?fruita3 (nth$ 3 ?fruitesPerEsmorzar))
	(bind ?fruita4 (nth$ 4 ?fruitesPerEsmorzar))
	(bind ?fruita5 (nth$ 5 ?fruitesPerEsmorzar))
	(bind ?fruita6 (nth$ 6 ?fruitesPerEsmorzar))
	(bind ?fruita7 (nth$ 7 ?fruitesPerEsmorzar))
	(send ?eDilluns put-FruitaMenu ?fruita1)
	(send ?eDimarts put-FruitaMenu ?fruita2)
	(send ?eDimecres put-FruitaMenu ?fruita3)
	(send ?eDijous put-FruitaMenu ?fruita4)
	(send ?eDivendres put-FruitaMenu ?fruita5)
	(send ?eDissabte put-FruitaMenu ?fruita6)
	(send ?eDiumenge put-FruitaMenu ?fruita7)

	; ------------------------ DINAR I SOPAR - PRIMER PLAT -------------------------
	
	(bind ?it 1)
	(bind ?primersPlatsDinarSopar (create$))
	(while (< (length ?primersPlatsDinarSopar) 14) do
		(if (> ?it (length ?primersPlats)) then (bind ?it 1)) ; si m'he sortit de la llista torno a començar
		(bind ?pp (nth$ ?it ?primersPlats))
		(bind ?p4 (send ?pp get-Puntuacio)) ; agafo l'element a la posicio it de la llista
		(if (< ?p4 0)
			then (bind ?it 1)   ; si té puntuació negativa no m'interessa ni ell ni els seguents per tant torno a començar
			else (bind ?primersPlatsDinarSopar (create$ ?primersPlatsDinarSopar ?pp)) ; sinó l'afegeixo a la llista
		)
		(bind ?it (+ ?it 1))
	)
	(bind ?primerDinar1 (nth$ 1 ?primersPlatsDinarSopar))
	(bind ?primerSopar1 (nth$ 2 ?primersPlatsDinarSopar))
	(bind ?primerDinar2 (nth$ 3 ?primersPlatsDinarSopar))
	(bind ?primerSopar2 (nth$ 4 ?primersPlatsDinarSopar))
	(bind ?primerDinar3 (nth$ 5 ?primersPlatsDinarSopar))
	(bind ?primerSopar3 (nth$ 6 ?primersPlatsDinarSopar))
	(bind ?primerDinar4 (nth$ 7 ?primersPlatsDinarSopar))
	(bind ?primerSopar4 (nth$ 8 ?primersPlatsDinarSopar))
	(bind ?primerDinar5 (nth$ 9 ?primersPlatsDinarSopar))
	(bind ?primerSopar5 (nth$ 10 ?primersPlatsDinarSopar))
	(bind ?primerDinar6 (nth$ 11 ?primersPlatsDinarSopar))
	(bind ?primerSopar6 (nth$ 12 ?primersPlatsDinarSopar))
	(bind ?primerDinar7 (nth$ 13 ?primersPlatsDinarSopar))
	(bind ?primerSopar7 (nth$ 14 ?primersPlatsDinarSopar))
	(send ?dDilluns put-PrimerPlatMenu ?primerDinar1)
	(send ?dDimarts put-PrimerPlatMenu ?primerDinar2)
	(send ?dDimecres put-PrimerPlatMenu ?primerDinar3)
	(send ?dDijous put-PrimerPlatMenu ?primerDinar4)
	(send ?dDivendres put-PrimerPlatMenu ?primerDinar5)
	(send ?dDissabte put-PrimerPlatMenu ?primerDinar6)
	(send ?dDiumenge put-PrimerPlatMenu ?primerDinar7)
	(send ?sDilluns put-PrimerPlatMenu ?primerSopar1)
	(send ?sDimarts put-PrimerPlatMenu ?primerSopar2)
	(send ?sDimecres put-PrimerPlatMenu ?primerSopar3)
	(send ?sDijous put-PrimerPlatMenu ?primerSopar4)
	(send ?sDivendres put-PrimerPlatMenu ?primerSopar5)
	(send ?sDissabte put-PrimerPlatMenu ?primerSopar6)
	(send ?sDiumenge put-PrimerPlatMenu ?primerSopar7)

	; ------------------------ DINAR I SOPAR - SEGON PLAT -------------------------
	
	(bind ?it 1)
	(bind ?segonsPlatsDinarSopar (create$))
	(while (< (length ?segonsPlatsDinarSopar) 14) do
		(if (> ?it (length ?segonsPlats)) then (bind ?it 1)) ; si m'he sortit de la llista torno a començar
		(bind ?sp (nth$ ?it ?segonsPlats))
		(bind ?p5 (send ?sp get-Puntuacio)) ; agafo l'element a la posicio it de la llista
		(if (< ?p5 0)
			then (bind ?it 1)   ; si té puntuació negativa no m'interessa ni ell ni els seguents per tant torno a començar
			else (bind ?segonsPlatsDinarSopar (create$ ?segonsPlatsDinarSopar ?sp)) ; sinó l'afegeixo a la llista
		)
		(bind ?it (+ ?it 1))
	)
	(bind ?segonsDinar1 (nth$ 1 ?segonsPlatsDinarSopar))
	(bind ?segonsSopar1 (nth$ 2 ?segonsPlatsDinarSopar))
	(bind ?segonsDinar2 (nth$ 3 ?segonsPlatsDinarSopar))
	(bind ?segonsSopar2 (nth$ 4 ?segonsPlatsDinarSopar))
	(bind ?segonsDinar3 (nth$ 5 ?segonsPlatsDinarSopar))
	(bind ?segonsSopar3 (nth$ 6 ?segonsPlatsDinarSopar))
	(bind ?segonsDinar4 (nth$ 7 ?segonsPlatsDinarSopar))
	(bind ?segonsSopar4 (nth$ 8 ?segonsPlatsDinarSopar))
	(bind ?segonsDinar5 (nth$ 9 ?segonsPlatsDinarSopar))
	(bind ?segonsSopar5 (nth$ 10 ?segonsPlatsDinarSopar))
	(bind ?segonsDinar6 (nth$ 11 ?segonsPlatsDinarSopar))
	(bind ?segonsSopar6 (nth$ 12 ?segonsPlatsDinarSopar))
	(bind ?segonsDinar7 (nth$ 13 ?segonsPlatsDinarSopar))
	(bind ?segonsSopar7 (nth$ 14 ?segonsPlatsDinarSopar))
	(send ?dDilluns put-SegonPlatMenu ?segonsDinar1)
	(send ?dDimarts put-SegonPlatMenu ?segonsDinar2)
	(send ?dDimecres put-SegonPlatMenu ?segonsDinar3)
	(send ?dDijous put-SegonPlatMenu ?segonsDinar4)
	(send ?dDivendres put-SegonPlatMenu ?segonsDinar5)
	(send ?dDissabte put-SegonPlatMenu ?segonsDinar6)
	(send ?dDiumenge put-SegonPlatMenu ?segonsDinar7)
	(send ?sDilluns put-SegonPlatMenu ?segonsSopar1)
	(send ?sDimarts put-SegonPlatMenu ?segonsSopar2)
	(send ?sDimecres put-SegonPlatMenu ?segonsSopar3)
	(send ?sDijous put-SegonPlatMenu ?segonsSopar4)
	(send ?sDivendres put-SegonPlatMenu ?segonsSopar5)
	(send ?sDissabte put-SegonPlatMenu ?segonsSopar6)
	(send ?sDiumenge put-SegonPlatMenu ?segonsSopar7)

	; ------------------------ DINAR I SOPAR - GUARNICIO -------------------------
	
	(bind ?it 1)
	(bind ?guarnicionsDinarSopar (create$))
	(while (< (length ?guarnicionsDinarSopar) 14) do
		(if (> ?it (length ?guarnicions)) then (bind ?it 1)) ; si m'he sortit de la llista torno a començar
		(bind ?g (nth$ ?it ?guarnicions))
		(bind ?p6 (send ?g get-Puntuacio)) ; agafo l'element a la posicio it de la llista
		(if (< ?p6 0)
			then (bind ?it 1)   ; si té puntuació negativa no m'interessa ni ell ni els seguents per tant torno a començar
			else (bind ?guarnicionsDinarSopar (create$ ?guarnicionsDinarSopar ?g)) ; sinó l'afegeixo a la llista
		)
		(bind ?it (+ ?it 1))
	)
	(bind ?guarnicioDinar1 (nth$ 1 ?guarnicionsDinarSopar))
	(bind ?guarnicioSopar1 (nth$ 2 ?guarnicionsDinarSopar))
	(bind ?guarnicioDinar2 (nth$ 3 ?guarnicionsDinarSopar))
	(bind ?guarnicioSopar2 (nth$ 4 ?guarnicionsDinarSopar))
	(bind ?guarnicioDinar3 (nth$ 5 ?guarnicionsDinarSopar))
	(bind ?guarnicioSopar3 (nth$ 6 ?guarnicionsDinarSopar))
	(bind ?guarnicioDinar4 (nth$ 7 ?guarnicionsDinarSopar))
	(bind ?guarnicioSopar4 (nth$ 8 ?guarnicionsDinarSopar))
	(bind ?guarnicioDinar5 (nth$ 9 ?guarnicionsDinarSopar))
	(bind ?guarnicioSopar5 (nth$ 10 ?guarnicionsDinarSopar))
	(bind ?guarnicioDinar6 (nth$ 11 ?guarnicionsDinarSopar))
	(bind ?guarnicioSopar6 (nth$ 12 ?guarnicionsDinarSopar))
	(bind ?guarnicioDinar7 (nth$ 13 ?guarnicionsDinarSopar))
	(bind ?guarnicioSopar7 (nth$ 14 ?guarnicionsDinarSopar))
	(send ?dDilluns put-GuarnicioMenu ?guarnicioDinar1)
	(send ?dDimarts put-GuarnicioMenu ?guarnicioDinar2)
	(send ?dDimecres put-GuarnicioMenu ?guarnicioDinar3)
	(send ?dDijous put-GuarnicioMenu ?guarnicioDinar4)
	(send ?dDivendres put-GuarnicioMenu ?guarnicioDinar5)
	(send ?dDissabte put-GuarnicioMenu ?guarnicioDinar6)
	(send ?dDiumenge put-GuarnicioMenu ?guarnicioDinar7)
	(send ?sDilluns put-GuarnicioMenu ?guarnicioSopar1)
	(send ?sDimarts put-GuarnicioMenu ?guarnicioSopar2)
	(send ?sDimecres put-GuarnicioMenu ?guarnicioSopar3)
	(send ?sDijous put-GuarnicioMenu ?guarnicioSopar4)
	(send ?sDivendres put-GuarnicioMenu ?guarnicioSopar5)
	(send ?sDissabte put-GuarnicioMenu ?guarnicioSopar6)
	(send ?sDiumenge put-GuarnicioMenu ?guarnicioSopar7)

	; ------------------------ DINAR I SOPAR - POSTRES -------------------------
	
	(bind ?it 1)
	(bind ?postresDinarSopar (create$))
	(while (< (length ?postresDinarSopar) 14) do
		(if (> ?it (length ?postres)) then (bind ?it 1)) ; si m'he sortit de la llista torno a començar
		(bind ?p (nth$ ?it ?postres))
		(bind ?p7 (send ?p get-Puntuacio)) ; agafo l'element a la posicio it de la llista
		(if (< ?p7 0)
			then (bind ?it 1)   ; si té puntuació negativa no m'interessa ni ell ni els seguents per tant torno a començar
			else (bind ?postresDinarSopar (create$ ?postresDinarSopar ?p)) ; sinó l'afegeixo a la llista
		)
		(bind ?it (+ ?it 1))
	)
	(bind ?postreDinar1 (nth$ 1 ?postresDinarSopar))
	(bind ?postreSopar1 (nth$ 2 ?postresDinarSopar))
	(bind ?postreDinar2 (nth$ 3 ?postresDinarSopar))
	(bind ?postreSopar2 (nth$ 4 ?postresDinarSopar))
	(bind ?postreDinar3 (nth$ 5 ?postresDinarSopar))
	(bind ?postreSopar3 (nth$ 6 ?postresDinarSopar))
	(bind ?postreDinar4 (nth$ 7 ?postresDinarSopar))
	(bind ?postreSopar4 (nth$ 8 ?postresDinarSopar))
	(bind ?postreDinar5 (nth$ 9 ?postresDinarSopar))
	(bind ?postreSopar5 (nth$ 10 ?postresDinarSopar))
	(bind ?postreDinar6 (nth$ 11 ?postresDinarSopar))
	(bind ?postreSopar6 (nth$ 12 ?postresDinarSopar))
	(bind ?postreDinar7 (nth$ 13 ?postresDinarSopar))
	(bind ?postreSopar7 (nth$ 14 ?postresDinarSopar))
	(send ?dDilluns put-PostreMenu ?postreDinar1)
	(send ?dDimarts put-PostreMenu ?postreDinar2)
	(send ?dDimecres put-PostreMenu ?postreDinar3)
	(send ?dDijous put-PostreMenu ?postreDinar4)
	(send ?dDivendres put-PostreMenu ?postreDinar5)
	(send ?dDissabte put-PostreMenu ?postreDinar6)
	(send ?dDiumenge put-PostreMenu ?postreDinar7)
	(send ?sDilluns put-PostreMenu ?postreSopar1)
	(send ?sDimarts put-PostreMenu ?postreSopar2)
	(send ?sDimecres put-PostreMenu ?postreSopar3)
	(send ?sDijous put-PostreMenu ?postreSopar4)
	(send ?sDivendres put-PostreMenu ?postreSopar5)
	(send ?sDissabte put-PostreMenu ?postreSopar6)
	(send ?sDiumenge put-PostreMenu ?postreSopar7)


	;--------------------- IMPRIMEIX ELS MENUS DE LA SETMANA --------------------

	(printout t crlf)
	(printout t " ------ Menu personalitzat per l'usuari :) ------ " crlf)
	(printout t crlf)

	(printout t " Menu del dilluns : " crlf)
	(printout t crlf)
	(send ?eDilluns printInfoEsmorzar)
	(printout t crlf)
	(send ?dDilluns printInfoDinar)
	(printout t crlf)
	(send ?sDilluns printInfoSopar)
	(printout t crlf)
	(printout t crlf)

	(printout t " Menu del dimarts : " crlf)
	(printout t crlf)
	(send ?eDimarts printInfoEsmorzar)
	(printout t crlf)
	(send ?dDimarts printInfoDinar)
	(printout t crlf)
	(send ?sDimarts printInfoSopar)
	(printout t crlf)
	(printout t crlf)

	(printout t " Menu del dimecres : " crlf)
	(printout t crlf)
	(send ?eDimecres printInfoEsmorzar)
	(printout t crlf)
	(send ?dDimecres printInfoDinar)
	(printout t crlf)
	(send ?sDimecres printInfoSopar)
	(printout t crlf)
	(printout t crlf)
	
	(printout t " Menu del dijous : " crlf)
	(printout t crlf)
	(send ?eDijous printInfoEsmorzar)
	(printout t crlf)
	(send ?dDijous printInfoDinar)
	(printout t crlf)
	(send ?sDijous printInfoSopar)
	(printout t crlf)
	(printout t crlf)
	
	(printout t " Menu del divendres : " crlf)
	(printout t crlf)
	(send ?eDivendres printInfoEsmorzar)
	(printout t crlf)
	(send ?dDivendres printInfoDinar)
	(printout t crlf)
	(send ?sDivendres printInfoSopar)
	(printout t crlf)
	(printout t crlf)
	
	(printout t " Menu del dissabte : " crlf)
	(printout t crlf)
	(send ?eDissabte printInfoEsmorzar)
	(printout t crlf)
	(send ?dDissabte printInfoDinar)
	(printout t crlf)
	(send ?sDissabte printInfoSopar)
	(printout t crlf)
	(printout t crlf)
	
	(printout t " Menu del diumenge : " crlf)
	(printout t crlf)
	(send ?eDiumenge printInfoEsmorzar)
	(printout t crlf)
	(send ?dDiumenge printInfoDinar)
	(printout t crlf)
	(send ?sDiumenge printInfoSopar)
	(printout t crlf)
	(printout t crlf)
)